<?php $components->header('Déclarations d\'armes'); ?>
<?php $WeaponsDeclarations = $WeaponDeclaration->getWeaponDeclaration(); ?>
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                    <?php if (!empty($_SESSION['message']['success'])) { echo '<div class="alert alert-success" role="alert">' . $_SESSION['message']['success']['text'] . '</div>'; unset($_SESSION['message']['success']); } ?>
                                        <div class="table-responsive">
                                        <center><a class="btn btn-success" href="/ajouter/armes/">Ajouter une déclaration d'arme</a></center><br />
                                           <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>		
                                                    <tr>		
                                                        <th>Date</th>
                                                        <th>Agent</th>
                                                        <th>Détenteur</th>
                                                        <th>Nom de l'arme</th>
                                                        <th>Numéro de déclaration</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php while ($data = $WeaponsDeclarations->fetch()) { ?>
                                                <?php $date = new DateTime($data['datetime']); $data['datetime'] = $date->format('d/m/Y'); $data['datetime_hour'] = $date->format('H:i'); ?>
                                                    <tr>
                                                        <td>le <?= $data['datetime'] ?> à <?= $data['datetime_hour'] ?></td>
                                                        <td><?= $data['police_officer'] ?></td>
                                                        <td><?= $data['owner_firstname'] ?> <?= $data['owner_lastname'] ?></td>
                                                        <td><?= $data['weapon'] ?></td>
                                                        <td><?= $data['declaration_number'] ?></td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php $components->footer(); ?>