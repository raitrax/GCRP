<?php $components->header('Casier Judiciaire'); ?>

<style>

    .table-special-link { text-decoration: none; color: #111111; }
    .table-special-link :hover { transition-duration: 1s; text-decoration: none; color: #2D2D2B; }

</style>

<?php $JudicialLockers = $JudicialLocker->getJudicialLocker(); ?>
            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                    <?php if (!empty($_SESSION['message']['success'])) { echo '<div class="alert alert-success" role="alert">' . $_SESSION['message']['success']['text'] . '</div>'; unset($_SESSION['message']['success']); } ?>
                                        <div class="table-responsive">
                                            <center><a class="btn btn-success" href="/ajouter/criminel/">Ajouter un nouveau criminel</a> - <a class="btn btn-info" href="/ajouter/delit/">Ajouter un nouveau délit</a></center><br />
                                           <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>		
                                                    <tr>		
                                                        <th>Création</th>
                                                        <th>Dernière maj</th>
                                                        <th>Agent(s)</th>
                                                        <th>Suspect</th>
                                                        <th>Infraction(s)</th>
                                                        <th>Sanction(s)</th>
                                                        <th>Numéro de déclaration</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <?php while ($data = $JudicialLockers->fetch()) { ?>
                                                <?php $data['police_officers'] = $JudicialLocker->arrayconvert($data['police_officers']); $data['offenses'] = $JudicialLocker->arrayconvert($data['offenses']); $data['sanctions'] = $JudicialLocker->arrayconvert($data['sanctions']); ?>
                                                <?php $date = new DateTime($data['creation_date']); $data['creation_date'] = $date->format('d/m/Y'); $data['creation_hour'] = $date->format('H:i'); ?>
                                                <?php $date = new DateTime($data['lastupdate_date']); $data['lastupdate_date'] = $date->format('d/m/Y'); $data['lastupdate_hour'] = $date->format('H:i'); ?>
                                                    <tr>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>">le <?= $data['creation_date'] ?> à <?= $data['creation_hour'] ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>">le <?= $data['lastupdate_date'] ?> à <?= $data['lastupdate_hour'] ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>">/ <?php for($i = 0;$i < count($data['police_officers']); $i++) { echo $data['police_officers'][$i]; if ($i != count($data['police_officers'])) { echo ' / ';  }  } ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>"><?= $data['suspect_firstname'] ?> <?= $data['suspect_lastname'] ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>">/ <?php for($i = 0;$i < count($data['offenses']); $i++) { if(strlen($data['offenses'][$i]) >= 50) { $data['offenses'][$i] = substr($data['offenses'][$i], 0, 50).' [...]'; } echo $data['offenses'][$i]; if ($i != count($data['offenses'])) { echo ' / ';  }  } ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>">/ <?php for($i = 0;$i < count($data['sanctions']); $i++) { if(strlen($data['sanctions'][$i]) >= 50) { $data['sanctions'][$i] = substr($data['sanctions'][$i], 0, 50).' [...]'; } echo $data['sanctions'][$i]; if ($i != count($data['sanctions'])) { echo ' / ';  }  } ?></a></td>
                                                        <td><a class="table-special-link" href="/casier-judiciaire/<?= $data['declaration_number'] ?>"><?= $data['declaration_number'] ?></a></td>
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