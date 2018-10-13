<?php $components->header('Mon compte'); ?>

            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-4 col-centered">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <center><h3>Mon compte <b>LSPD</b></h3></center><br />
                                           <form method="POST">
                                                <div class="form-group">
                                                    <label for="username">Email</label>
                                                    <input type="email" class="form-control" id="email" name="email" value="<?= $_SESSION['auth']['mail'] ?>" placeholder="Entrez votre email" readonly>
                                                </div>
                                                <div class="form-group">
                                                    <label for="grade">Grade</label>
                                                    <input type="text" class="form-control" id="grade" name="grade" value="<?= $_SESSION['auth']['grade'] ?>" placeholder="Entrez votre grade" readonly>
                                                </div>
                                                <?php if (!empty($e) && $e == true) { ?>
                                                <div class="form-group">
                                                    <br /><p><font color="red">Impossible de modifier votre compte</font>,<br> vérifiez les informations saisie dans les champs</p>
                                                </div>
                                                <?php } ?>
                                                <div class="form-group">
                                                    <br /><center><input type="submit" class="btn btn-info" value="modifier mon compte"></center>
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