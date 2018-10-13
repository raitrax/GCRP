<?php

namespace InternalService;

class engine {
    function randomCar($car, $gen_string = NULL) {
        $string = "";
        if ($gen_string == NULL) {
            $gen_string = "abcdefghijklmnpqrstuvwxyABCDEFGHIJKLMPNOQRSTUVWXYZ123456789@!?;:(-_)=";
        }
        srand((double)microtime()*1000000);
        for($i=0; $i<$car; $i++) {
            $string .= $gen_string[rand()%strlen($gen_string)];
        }
        return $string;
    }
}


?>