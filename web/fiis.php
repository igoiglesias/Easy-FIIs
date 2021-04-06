<?php 
  require_once( __DIR__ . "/header.php" );
  require_once( __DIR__ . "/controller/fiis.php" );
?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid" id="conteudo">

          <!-- Content Row -->
          <div class="row">

            <div class="col-xl-12 col-lg-12">

              <!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Melhor Escolha</h6>
                </div>
                <div class="card-body" style="height: 650px;overflow-y: auto;">
                  <div class="chart-area">
                    <div class="row"> 
                      <div class="col" style="height: 610px;overflow-y: auto;">
                        <table class="table table-striped table-hover table-responsive">
                          <thead>
                            <tr>
                              <th scope="col">Código</th>
                              <th scope="col">Nome</th>
                              <th scope="col">Ultimo Dividendo</th>
                              <th scope="col">Preço</th>
                              <th scope="col">P/VP</th>
                              <th scope="col">Liquidez</th>
                              <th scope="col">Seguimento</th>
                              <th scope="col">Yield Média 12M</th>
                              <th scope="col">Valorização</th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php foreach( $bestChoice as $fii ){ ?>
                            
                              <tr onclick="window.open('https://www.fundsexplorer.com.br/funds/<?=$fii["cod"] ?>', '_blank')">
                                <th scope="row"><?=$fii["cod"] ?></th>
                                <td><?=$fii["name"] ?></td>
                                <td><?=$fii["ultimo_dividendo"] ?></td>
                                <td><?=$fii["price"] ?></td>
                                <td><?=$fii["p_vp"] ?></td>
                                <td><?=$fii["liquidez_diaria"] ?></td>
                                <td><?=$fii["segment"] ?></td>
                                <td><?=$fii["yeld_avarege_twelve"] ?></td>
                                <td><?=$fii["appreciation"] ?></td>
                              </tr>
                            
                            <?php } ?>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                  <hr>
                </div>
              </div>

            </div>

          </div>


        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <?php require_once( __DIR__ . "/footer.php" ); ?>