<?php

namespace Justice;

class WeaponDeclaration {

    private $ENV;
    private $PDO;
    private $AUTH;

    public function __construct($ENV, $AUTH = null) {
        $this->ENV = $ENV;
        $this->AUTH = $AUTH;
        $this->PDO = $ENV['PDO'];
    }

    public function arrayconvert($json, $bool = true) {
        $json = json_decode($json, $bool);
        return $json;
    }

    public function getWeaponDeclaration() {
        $sql = 'SELECT * FROM weapon_declaration';
        $request = $this->PDO->query($sql);
        return $request;
    }

    public function setNewWeaponDeclaration($post) {
        $declaration_number = "";
        $chaine = "123456789";
        srand((double)microtime()*1000000);
        for($i=0; $i<6; $i++) {
            $declaration_number .= $chaine[rand()%strlen($chaine)];
        }
        $declaration_number = $declaration_number.date('Y');
        $sql = 'INSERT INTO weapon_declaration (id, police_officer, owner_firstname, owner_lastname, owner_steamid, weapon, datetime, declaration_number) VALUES (null, :police_officer, :owner_firstname, :owner_lastname, :owner_steamid, :weapon, :datetime, :declaration_number)';
        $request = $this->PDO->prepare($sql);
        $array = array(
            "police_officer" => $this->AUTH['names'], 
            "owner_firstname" => $post['firstname'],
            "owner_lastname" => $post['lastname'],
            "owner_steamid" => 'steam:null',
            "weapon" => $post['weapon'],
            "datetime" => date('Y-m-d H:i:s'),
            "declaration_number" => $declaration_number
        );        
        if ($request->execute($array)) {
            return true;
        } else {
            echo "\nPDO::errorInfo():\n";
            print_r($this->PDO->errorInfo());
        }
    }


}

?>