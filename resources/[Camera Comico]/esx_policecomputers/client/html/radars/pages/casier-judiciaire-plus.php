<?php $components->header('Casier Judiciaire - Plus de détails'); ?>

<?php

    $ch = curl_init();
	$timeout = 5;
    $url = "http://online-test.workingdigital.org/internal-service/getPlayerJudicialLocker.php?declaration_number=".$declarationnumber;
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
	$data = curl_exec($ch);
	curl_close($ch);

    if ($data == "not-found") { header('Location: /casier-judiciaire/'); exit(); } else { 
        $data = json_decode($data, true); 
        $data['police_officers'] = json_decode($data['police_officers'], true);
        if ($data['offenses'] == "null") { $data['offenses'] = [0 => "Aucun fait n'a été constaté"]; } else { $data['offenses'] = json_decode($data['offenses'], true); }
        if ($data['sanctions'] == "null") { $data['sanctions'] = [0 => "Aucune sanctions n'a été prononcé"]; } else { $data['sanctions'] = json_decode($data['sanctions'], true); }
    }

?>

            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <h3>Nom: <b><?= $data['suspect_lastname'] ?></b>, Prénom: <b><?= $data['suspect_firstname'] ?></b></h3><br />
                                            <p><b><u>Agents ayant modifié de casier:</u></b><br /> /
                                                <?php 
                                                    for($i = 0;$i < count($data['police_officers']); $i++) { 
                                                        echo $data['police_officers'][$i]; 
                                                        if ($i != count($data['police_officers'])) { 
                                                            echo ' / ';  
                                                        }  
                                                    }
                                                ?>
                                             </p><br />
                                             <p><b><u>Dernière infraction de <?= $data['suspect_lastname'] ?>, <?= $data['suspect_firstname'] ?>:</u></b><br />
                                                <?= $data['offenses'][0] ?>
                                             </p><br />
                                             <p><b><u>Dernière sanctions de <?= $data['suspect_lastname'] ?>, <?= $data['suspect_firstname'] ?>:</u></b><br />
                                                <?= $data['sanctions'][0] ?>
                                             </p><br />
                                             <p><b><u>Infraction de <?= $data['suspect_lastname'] ?>, <?= $data['suspect_firstname'] ?>:</u></b><br />
                                                <?php 
                                                    for($i = 1;$i < count($data['offenses']); $i++) { 
                                                        echo $data['offenses'][$i]; 
                                                        if ($i != count($data['offenses']) && !empty($data['offenses'][2])) { 
                                                            echo '<br />---- suite ----<br />';  
                                                        }  
                                                    }
                                                ?>
                                             </p><br />
                                             <p><b><u>Sanctions de <?= $data['suspect_lastname'] ?>, <?= $data['suspect_firstname'] ?>:</u></b><br />
                                                <?php 
                                                    for($i = 1;$i < count($data['sanctions']); $i++) { 
                                                        echo $data['sanctions'][$i]; 
                                                        if ($i != count($data['sanctions']) && !empty($data['sanctions'][2])) { 
                                                            echo '<br />---- suite ----<br />';  
                                                        }  
                                                    }
                                                ?>
                                             </p><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php $components->footer(); ?>