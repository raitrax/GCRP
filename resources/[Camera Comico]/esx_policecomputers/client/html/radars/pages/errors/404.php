<?php header("HTTP/1.0 404 Not Found"); $components->header('Impossible de trouver la page', null, false); ?>

<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm"><div class="col-md-12"></div></div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <br /><h3>Impossible de trouver la page</h3><br />
                            <h4>Erreur 404</h4><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $components->footer(); ?>