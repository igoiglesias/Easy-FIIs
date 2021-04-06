<?php

    require_once( __DIR__ . "/../app/fiis.model.php" );
    require_once( __DIR__ . "/../app/fiis.service.php" );
    require_once( __DIR__ . "/../app/database/connection.php" );

    $fiis = new Fiis();
    $connection = new Connection();
    $fiisService = new FiisService($connection, $fiis);

    $bestChoice = $fiisService->getBestChoice();

    