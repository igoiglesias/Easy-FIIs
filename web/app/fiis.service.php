<?php

class FiisService{
    private $connection;
    private $fiis;

    public function __construct(Connection $connection, Fiis $fiis){
        $this->connection = $connection->connect();
        $this->fiis = $fiis;
    }

    public function getBestChoice(){
        $query = 'SELECT * FROM (SELECT * from fiis where liquidez_diaria >= 10000 and duration = "Indeterminado") liquidez where p_vp < 1 and cumulate_twelve > 4 and yeld_avarege_twelve > 0.5 order by patrimonio_liquid DESC, p_vp ASC;';

        $query = $this->connection->prepare($query);
        $query->execute();

        return $query->fetchall(PDO::FETCH_ASSOC);

    }
}