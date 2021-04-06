import re
import time
import requests
import mysql.connector
from bs4 import BeautifulSoup

header = {
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
    "Cache-Control" : "public, max-age=3600",
    "X-Requested-With": "XMLHttpRequest",
    "Clear-Site-Data": "*",
    "Accept-Encoding":"gzip",	
    "Save-Data": "on",
    "DNT": "1"
  }

def insert_fiis(fiis):
  
  mydb = mysql.connector.connect(
    host="localhost",
    user="fiis",
    password="fiis",
    database="fiis"
  )
  mycursor = mydb.cursor()
  
  for fii in fiis:
    sql = f"""insert into fiis (cod,
                                liquidez_diaria,
                                ultimo_dividendo,
                                dividendo_yield,
                                patrimonio_liquid,
                                valor_patrimonial,
                                retabilidade_mes,
                                p_vp,
                                price,
                                name,
                                appreciation,
                                segment,
                                duration,
                                cumulate_twelve,
                                yeld_avarege_twelve) 
                          values {tuple(fii.values())}"""

    mycursor.execute(sql)
  
  mydb.commit()

def get_fiis(s):
  
  url = 'https://www.fundsexplorer.com.br/funds'
  fiis = s.get(url, headers=header)

  fiis_html = BeautifulSoup(fiis.text, 'html.parser')

  fiis_div = fiis_html.find('div', {"id": "fiis-list-container"})
  fiis_items = fiis_html.findAll('div', {"class": "item"})

  fiis_detail = []

  for item in fiis_items:
    fiis_item = item.find('span', {"class": "symbol"}).text
    fiis_detail.append(dict(cod=fiis_item))
  
  return fiis_detail

def get_numbers(data):
  
  try:
    data = re.sub("[^0-9,.-]+", "", data)
    data = data.replace(",",".")
    data = float(data)
  except:
    data = 0

  return data

def get_indicators(fii, s):
  try:

    url = f'https://www.fundsexplorer.com.br/funds/{fii}'
    fii = s.get(url, headers=header)

    fii_html = BeautifulSoup(fii.text, 'html.parser')
    
    # Main Indicators
    fii_div = fii_html.find('div', {"id": "main-indicators-carousel"})
    fii_indicators = fii_div.findAll('div', {"class": "carousel-cell"})
    fii_price = fii_html.find('span', {"class": "price"}).text.strip()
    fii_price = get_numbers(fii_price)
    
    fii_name = fii_html.find('h3', {"class": "section-subtitle"}).text.strip()
    fii_appreciation = fii_html.find('span', {"class": "percentage"}).text.strip()
    fii_appreciation = get_numbers(fii_appreciation)

    # Basic Infos
    fii_basic_infos = fii_html.find('section', {"id": "basic-infos"})
    fii_basic_infos = fii_basic_infos.find('div', {"class": "section-body"})
    fii_basic_infos = fii_basic_infos.findAll('div', {"class": "col-md-6"})

    # Second Column
    fii_second_column = fii_basic_infos[1].findAll('li')
    fii_segment = fii_second_column[3].find('span', {"class": "description"}).text.strip()
    fii_dutarion = fii_second_column[4].find('span', {"class": "description"}).text.strip()

    # Dividends
    fii_dividends = fii_html.find('section', {"id": "dividends"})
    fii_dividends = fii_dividends.find('div', {"class": "section-body"})
    fii_dividends = fii_dividends.find('tbody')
    fii_dividends = fii_dividends.findAll('tr')
    fii_dividends = fii_dividends[1].findAll('td')
    fii_cumulate_twelve = fii_dividends[4].text.strip()
    fii_cumulate_twelve = get_numbers(fii_cumulate_twelve)

  except:
    return False
    
  indicators_datail = []

  for indicators in fii_indicators:
    indicator_name = indicators.find('span', {"class": "indicator-title"}).text.strip()
    indicator_value = indicators.find('span', {"class": "indicator-value"}).text.strip()
    
    if indicator_name == "Liquidez Diária" or indicator_name == "Valor Patrimonial":
      indicator_value = indicator_value.replace(".","")

    indicator_value = get_numbers(indicator_value)

    indicators_datail.append(
      {indicator_name: indicator_value}
    )
  
  indicators_datail.append({"price" : fii_price})
  indicators_datail.append({"name" : fii_name})
  indicators_datail.append({"appreciation" : fii_appreciation})
  indicators_datail.append({"segment" : fii_segment})
  indicators_datail.append({"duration" : fii_dutarion})
  indicators_datail.append({"cumulate_twelve" : fii_cumulate_twelve})

  cumulate_twelve = fii_cumulate_twelve

  # Discard uncommon values
  if not len(str(cumulate_twelve).split(".")) > 2 :
    yeld_avarege_twelve = round((float(cumulate_twelve) / 12), 2)
    yeld_avarege_twelve = f'{yeld_avarege_twelve:.2f}'

  else:
    yeld_avarege_twelve = 0
  
  indicators_datail.append({"yeld_avarege_twelve" : yeld_avarege_twelve})

  return indicators_datail


def get_resume(s):
  
  fiis = get_fiis(s)
  
  fiis_resume = []

  for fii in fiis:
    indicators = get_indicators(fii['cod'], s)
    
    if not indicators:
      continue

    fiis_resume.append(dict(
      cod = fii['cod'],
      liquidez_diaria = indicators[0]['Liquidez Diária'],
      ultimo_dividendo = indicators[1]['Último Rendimento'],
      dividendo_yield = indicators[2]['Dividend Yield'],
      patrimonio_liquid = indicators[3]['Patrimônio Líquido'],
      valor_patrimonial = indicators[4]['Valor Patrimonial'],
      retabilidade_mes = indicators[5]['Rentab. no mês'],
      p_vp = indicators[6]['P/VP'],
      price = indicators[7]['price'],
      name = indicators[8]['name'],
      appreciation = indicators[9]['appreciation'],
      segment = indicators[10]['segment'],
      duration = indicators[11]['duration'],
      cumulate_twelve = indicators[12]['cumulate_twelve'],
      yeld_avarege_twelve = indicators[13]['yeld_avarege_twelve'],

    ))
    
  return(fiis_resume)


start_time = time.time()

with requests.Session() as s:
  fiis_resume = get_resume(s)


mysql_start_time = time.time()

# for fii in fiis_resume:
#   print(tuple(fii.keys()))
#   print(tuple(fii.values()))
insert_fiis(fiis_resume)

print("--- %s mysql seconds ---" % (time.time() - mysql_start_time))
print("--- %s total seconds ---" % (time.time() - start_time))


"""SELECT * FROM (SELECT * from fiis where liquidez_diaria >= 10000 and duration = "Indeterminado") liquidez where p_vp < 1 and cumulate_twelve > 4 and yeld_avarege_twelve > 0.5 order by patrimonio_liquid DESC, p_vp ASC"""