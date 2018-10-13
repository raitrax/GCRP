<?php $components->header('Ajouter un délit'); ?>

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
                                                        <input type="text" class="form-control" id="declarationnumber" name="declarationnumber" placeholder="Numéro de déclaration du casier Judiciaire" required><br />
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