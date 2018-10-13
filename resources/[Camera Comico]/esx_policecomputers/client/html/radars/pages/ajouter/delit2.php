<?php

    if (!empty($_POST)) {
        $offenses = $_POST['description'];
        $sanctions = $_POST['sanctions'];
        $setNewOffenseInJudicialLocker = $JudicialLocker->setNewOffenseInJudicialLocker($offenses, $sanctions, $declarationnumber);
        if ($setNewOffenseInJudicialLocker == true) {
            $_SESSION['message']['success']['text'] = "Le délit à été ajouté à la base de données.";
            header('Location: /casier-judiciaire/');
            exit();
        } else {
            echo 'Service indisponible ! <i>(LSPD as current default settings)</i>';
            exit();
        }
        exit();
    }

?>
<?php $components->header('Ajouter un délit'); ?>

<?php

    $ch = curl_init();
	$timeout = 5;
    $url = "http://online-test.workingdigital.org/internal-service/getPlayerJudicialLocker.php?declaration_number=".$declarationnumber;
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
	$data = curl_exec($ch);
	curl_close($ch);

    if ($data == "not-found") {
        ?>
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <h3>Ajouter un délit,</h3><br />
                                            <br /><center><p><font color="red">Numéro de déclaration est inconue !</font></p></center><br /><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        
        $components->footer();
        exit();
    }

    $data = json_decode($data, true);

?>

            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <h3>Ajouter un délit,</h3><br />
                                            <form method="POST">
                                                <div class="col-md-6 col-centered">
                                                    <div class="form-group">
                                                        <label for="declarationnumber">Numéro de déclaration</label>
                                                        <input type="text" class="form-control" id="declarationnumber" name="declarationnumber" value="<?= $declarationnumber ?>" placeholder="Numéro de déclaration du casier Judiciaire" required readonly><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="declarationnumber">Nom du suspect</label>
                                                        <input type="text" class="form-control" value="<?= $data['suspect_lastname'] ?>" readonly><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="declarationnumber">Prénom du suspect</label>
                                                        <input type="text" class="form-control" value="<?= $data['suspect_firstname'] ?>" readonly><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="policeofficer">Responsable LSPD en charge de l'affaire</label>
                                                        <input type="text" class="form-control" id="policeofficer" name="policeofficer" placeholder="Nom du responsable LSPD en charge de l'affaire" value="<?= $_SESSION['auth']['names'] ?>" required readonly><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="description">Description des faits</label>
                                                        <textarea class="form-control" name="description" id="description" rows="10" cols="50" required></textarea><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="description">Description de(s) sanction(s)</label>
                                                        <textarea class="form-control" name="sanctions" id="sanctions" rows="10" cols="50" required></textarea><br />
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="date">Date des faits <br><small><b>(JJ/MM/AAAA)</b></small></label>
                                                            <input type="text" class="form-control" id="date" name="date" value="<?= date('d/m/Y') ?>" placeholder="Date des faits" readonly required><br />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="hour">Heure des faits <br><small><b>(HH:MM)</b></small></label>
                                                            <input type="text" class="form-control" id="hour" name="hour" value="<?= date('H:i') ?>" placeholder="Heure des faits" readonly required><br />
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <center><input type="submit" class="btn btn-success btn-block btn-lg" value="Ajouter le délit"></center>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php $components->footer(); ?>