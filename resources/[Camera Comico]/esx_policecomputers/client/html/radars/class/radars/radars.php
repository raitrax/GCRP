<?php

namespace Justice;

class radars {

    private $ENV;
    private $PDO;

    public function __construct($ENV) {
        $this->ENV = $ENV;
        $this->PDO = $ENV['PDO_GTADB'];
        $this->PDO->setAttribute( \PDO::ATTR_ERRMODE, \PDO::ERRMODE_WARNING );
    }

    public function getPeageFlash() {
        $sql = 'SELECT * FROM peage_flash';
        $request = $this->PDO->query($sql);
        return $request;
    }

}

?>