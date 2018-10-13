<?php

class components {
    
    private $AUTH;

    public function __construct($AUTH = false) {
        $this->AUTH = $AUTH;
    }

    public function header($pagetitle = NULL, $require_auth = NULL, $addon = true) {
        $p5 = md5($pagetitle);
        if ($pagetitle == NULL) {$pagetitle = 'Accueil';}
        require '../initd/class/environment/functions.php';
        $engine = new \InternalService\engine;
        if ($require_auth == true && $this->AUTH != false) { 
            header('Location: /espace-citoyens/connexion/'); exit(); 
        } else {
            return include('../initd/components/header.php');
        }
    }
    
    public function footer() {
        return include('../initd/components/footer.php');
    }

}

?>