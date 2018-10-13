<?php

    SESSION_START();

    require '../../initd/config.php';
    require '../../initd/class/justice/JudicialLocker.php';
    $JudicialLocker = new \Justice\JudicialLocker($ENV, $_SESSION['auth']);

    $datas = $JudicialLocker->getJudicialLocker();

    foreach ($datas as $data) {
        if ($data['declaration_number'] == $_GET['declaration_number']) {
            if($data != false) {
                echo json_encode($data);
                exit();
            } else {
                echo 'not-found';
                exit();
            }
        }
    }

    echo 'not-found';
    exit();
?>