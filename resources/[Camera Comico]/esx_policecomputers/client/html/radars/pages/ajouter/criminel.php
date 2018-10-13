<?php

    if (!empty($_POST)) {
        if ($JudicialLocker->setNewJudicialLocker($_POST)) {
            $_SESSION['message']['success']['text'] = "Le casier judiciaire à été ajouté à la base de données.";
            header('Location: /casier-judiciaire/');
            exit();
        } else {
            echo 'Service indisponible ! <i>(LSPD as current default settings)</i>';
            exit();
        }
    }

?>

<?php $components->header('Ajouter un délit'); ?>

            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <h3>Ajouter un casier judiciaire,</h3><br />
                                            <form method="POST">
                                                <div class="col-md-6 col-centered">
                                                    <div class="form-group">
                                                        <label for="lastname">Nom du suspect</label>
                                                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Entrez le nom du suspect" required><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname">Prénom du suspect</label>
                                                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Entrez le prénom du suspect" required><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="phonenum">Numéro de téléphone du suspect</label>
                                                        <input type="text" class="form-control" id="phonenum" name="phonenum" placeholder="Entrez le numéro de téléphone du suspect" disabled required><br />
                                                    </div>
                                                    <br />
                                                    <center><input type="submit" class="btn btn-success btn-block btn-lg" value="Ajouter le casier judiciaire"></center>
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