<?php

class Fiis{
    private $id;
    private $cod;
    private $nome;
    private $ultimo_dividendo;
    private $dividendo_yield;
    private $patrimonio_liquid;
    private $valor_patrimonial;
    private $rentabilidade_mes;
    private $p_vp;
    private $price;
    private $liquidez_diaria;
    private $appreciation;
    private $segment;
    private $duration;
    private $cumulative_twelve;
    private $yeld_avarege_twelve;
    private $created_at;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute, $value){
        return $this->$attribute = $value;
    }
}