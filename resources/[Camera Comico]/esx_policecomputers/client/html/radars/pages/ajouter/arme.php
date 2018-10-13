<?php

    if (!empty($_POST)) {
        if ($WeaponDeclaration->setNewWeaponDeclaration($_POST)) {
            $_SESSION['message']['success']['text'] = "La déclaration d\'arme à été ajouté à la base de données.";
            header('Location: /declarations-armes/');
            exit();
        } else {
            echo 'Service indisponible ! <i>(LSPD as current default settings)</i>';
            exit();
        }
    }

?>

<?php $components->header('Ajouter une déclaration d\'arme'); ?>

            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <h3>Ajouter une déclaration d'arme,</h3><br />
                                            <form method="POST">
                                                <div class="col-md-6 col-centered">
                                                    <div class="form-group">
                                                        <label for="lastname">Responsable LSPD en charge de la déclaration</label>
                                                        <input type="text" class="form-control" id="policeofficer" name="policeofficer" value="<?= $_SESSION['auth']['names'] ?>" disabled><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="lastname">Nom du détenteur</label>
                                                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Entrez le nom du détenteur" required><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname">Prénom du détenteur</label>
                                                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Entrez le prénom du détenteur" required><br />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="weapon">Nom de l'arme</label>
                                                        <input type="text" class="form-control" id="weapon" name="weapon" placeholder="Entrez lenom de l'arme" required><br />
                                                    </div>
                                                    <br />
                                                    <center><input type="submit" class="btn btn-success btn-block btn-lg" value="Ajouter la déclaration d'arme"></center>
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