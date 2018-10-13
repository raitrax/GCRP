<?php

namespace internal;

class account {
    
    private $ENV;
    private $PDO;
    private $PDO_GTADB;
    public $auth;
    
    public function __construct($ENV, $auth = false) {
        $this->ENV = $ENV;
        $this->PDO = $ENV['PDO'];
        $this->PDO_GTADB = $ENV['PDO_GTADB'];
        $this->auth = $auth;
    }

    public function getPlayerJobGrade($jobnameid = null, $jobgradeid = null) {
        if ($jobgradeid == null) { $jobgradeid = $this->auth['job_grade']; }
        if ($jobnameid == null) { $jobnameid = $this->auth['job']; }
        $request = $this->PDO->query('SELECT * FROM job_grades WHERE job_name = "' . $jobnameid . '" AND grade = "'. $jobgradeid . '"');
        $data = $request->fetch();
        $jobgrade = str_replace("?", "", $data['label']);
        return $jobgrade;
    }

    private function getServerInformationBySteamId($steamid) {
        $request = $this->PDO_GTADB->query('SELECT * FROM users WHERE identifier = "'. $steamid . '"');
        $data_user = $request->fetch();
        unset($request);

        $request = $this->PDO_GTADB->query('SELECT * FROM job_grades WHERE job_name = "police" AND grade = "'. $data_user['job_grade'] . '"');
        $data_grade= $request->fetch();
        unset($request);
        $data_user['grade'] = $data_grade['label'];

        $request = $this->PDO_GTADB->query('SELECT * FROM owned_vehicles_service WHERE owner = "'. $steamid . '"');
        $data_vehicles = [];
        while ($data_prov = $request->fetch()) {
            $data_vehicles = $data_prov;
        }
        
        $user = [
            'names' => $data_user['firstname'] . ' '. $data_user['lastname'],
            'grade_id' => $data_user['job_grade'],
            'grade' => $data_user['grade'],
            'vehicles' => $data_vehicles
        ];
        return $user;
    }

    public function login($postdata, $steamid = null) {
        if ($postdata == false &&  $steamid != null) {
            $request = $this->PDO->query('SELECT * FROM police_officers WHERE steamid = "'. $steamid . '"');
            $array = [];
            $data = $request->fetch();
            if ($data == false) { return false; } else {
                return $this->createArrayForLogin($data);
            }
        } else {
            $email = $postdata['email'];
            $password = sha1($postdata['password']);
            $request = $this->PDO->query('SELECT * FROM police_officers WHERE mail = "'. $email . '"');
        }
        $array = [];
        $police_officers = $request->fetch();
        if ($password == $police_officers['password']) {
            $data = $this->getServerInformationBySteamId($police_officers['steamid']);
            $data['mail'] = $police_officers['mail'];
            $data['former'] = $police_officers['former'];
            return $data;
        } else {
            return false;
        }
    }

    public function playerIsOnServer($steamid = null) {
        if ($steamid == null) { $steamid = $this->auth['steam_identifier']; }
        $ch = curl_init('http://' . $this->ENV['INTERNAL']['SERVER_IP'] . '/players.json');
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json'
            )
        );
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        $result = curl_exec($ch);
        curl_close($ch);
        $curentusers = json_decode($result, true);
        foreach ($curentusers as &$unit) {
            if ($unit['identifiers'][0] == $steamid) {
                return true;
            }
        }
        return false;
    }

}

?>