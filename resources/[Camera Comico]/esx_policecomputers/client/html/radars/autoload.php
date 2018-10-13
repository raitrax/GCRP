<?php


    if (SESSION_ID() == null) { SESSION_START(); }

    if (empty($_SESSION['auth'])) { $_SESSION['auth'] = false; }

    ob_start();

    require '../initd/config.php';

    require '../initd/class/environment/components.php';

    require '../initd/class/account/accountmanager.php';

    require '../initd/class/justice/JudicialLocker.php';

    require '../initd/class/justice/weapondeclaration.php';

    $components = new components($_SESSION['auth']);

    $account = new \internal\account($ENV, $_SESSION['auth']);  
    
    $JudicialLocker = new \Justice\JudicialLocker($ENV, $_SESSION['auth']);

    $WeaponDeclaration = new \Justice\WeaponDeclaration($ENV, $_SESSION['auth']);

?>
