<?php

namespace Justice;

class JudicialLocker {

    private $ENV;
    private $PDO;
    private $AUTH;

    public function __construct($ENV, $AUTH = false) {
        $this->ENV = $ENV;
        $this->AUTH = $AUTH;
        $this->PDO = $ENV['PDO'];
        $this->PDO->setAttribute( \PDO::ATTR_ERRMODE, \PDO::ERRMODE_WARNING );
    }

    public function arrayconvert($json, $bool = true) {
        $json = json_decode($json, $bool);
        return $json;
    }

    public function getJudicialLocker() {
        $sql = 'SELECT * FROM judiciallocker';
        $request = $this->PDO->query($sql);
        return $request;
    }

    public function setNewJudicialLocker($post) {
        $declaration_number = "";
        $chaine = "123456789";
        srand((double)microtime()*1000000);
        for($i=0; $i<6; $i++) {
            $declaration_number .= $chaine[rand()%strlen($chaine)];
        }
        $declaration_number = $declaration_number.date('Y');
        $sql = 'INSERT INTO judiciallocker (id, police_officers, suspect_firstname, suspect_lastname, offenses, sanctions, declaration_number, creation_date, lastupdate_date, steamid) VALUES (null, :police_officers, :suspect_firstname, :suspect_lastname, :offenses, :sanctions, :declaration_number, :creation_date, :lastupdate_date, :steamid)';
        $request = $this->PDO->prepare($sql);
        $array = array(
            "police_officers" => $this->AUTH['names'], 
            "suspect_firstname" => $post['firstname'],
            "suspect_lastname" => $post['lastname'],
            "offenses" => 'null',
            "sanctions" => 'null',
            "declaration_number" => $declaration_number,
            "creation_date" => date('Y-m-d H:i:s'),
            "lastupdate_date" => date('Y-m-d H:i:s'),
            "steamid" => "steam:null",
        );        
        if ($request->execute($array)) {
            return true;
        } else {
            echo "\nPDO::errorInfo():\n";
            print_r($this->PDO->errorInfo());
        }
    }

    public function setNewOffenseInJudicialLocker($update_offenses, $update_sanctions, $declaration_number) {
        $sql = 'SELECT * FROM judiciallocker WHERE declaration_number = "'. $declaration_number . '"';
        $request = $this->PDO->query($sql);
        $data = $request->fetch();

        $update_offenses = [0 => $update_offenses];
        $offenses = $data['offenses'];
        if ($offenses != "null") {
            $offenses = json_decode($offenses, true);
            $offenses = array_merge($update_offenses, $offenses);
            $offenses = json_encode($offenses);
        }else {
            $offenses = json_encode($update_offenses);
        }

        $update_sanctions = [0 => $update_sanctions];
        $sanctions = $data['sanctions'];
        if ($sanctions != "null") {
            $sanctions = json_decode($sanctions, true);
            $sanctions = array_merge($update_sanctions, $sanctions);
            $sanctions = json_encode($sanctions);
        } else {
            $sanctions = json_encode($update_sanctions);
        }
        
        $police_officer = [ 0 => $this->AUTH['names'] ];
        $police_officer = json_encode($police_officer);
        
        $datetime_update = date('Y-m-d H:i:s');
        $request = $this->PDO->prepare('UPDATE `judiciallocker` SET `police_officers` = :police_officers, `offenses` = :offenses, `sanctions` = :sanctions, `lastupdate_date` = :datetime_update WHERE `declaration_number` = :declaration_number');
        $array = array(
            'police_officers' => $police_officer,
            'offenses' => $offenses,
            'sanctions' => $sanctions,
            'datetime_update' => $datetime_update,
            'declaration_number' => $declaration_number
        );
        if ($request->execute($array)) {
            return true;
        } else {
            return false;
        }
    }

}

?>