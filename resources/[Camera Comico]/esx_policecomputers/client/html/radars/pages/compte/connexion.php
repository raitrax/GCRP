<?php

    if (!empty($_SESSION['auth'])) { header('Location: /'); exit(); }

    if (!empty($_POST)) {
        $login = $account->login($_POST);
        if ($login != false) {
            $_SESSION['auth'] = $login;
            header('Location: /');
            exit();
        } else { $e = true; }
    }

?>
<html>
    <head>
      <meta charset="utf-8" />
      <title>LSPD - Connexion à mon compte</title>
      <link href="/assets/css/bootstrap.css" rel="stylesheet" />
      <link href="/assets/css/font-awesome.css" rel="stylesheet" />
      <link href="/assets/css/style.css" rel="stylesheet" /> 
      <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
        <body>
            <div class="navbar navbar-inverse set-radius-zero" >
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/">
                            <img src="/assets/img/police_ls.png" width=180 height=70/>
                        </a>
                    </div>
                    <div class="right-div">
                        <a style="margin-left: 15px;" href="/connexion/" class="btn btn-primary pull-right">Connexion</a>
                        <a href="/inscription/" class="btn btn-info pull-right">Inscription</a>
                    </div>
                </div>
            </div>


            <div class="content-wrapper">
                <div class="container">
                    <div class="row pad-botm"><div class="col-md-12"></div></div>
                        <div class="row">
                            <div class="col-md-4 col-centered">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                        <center><h3>Connexion à mon compte</h3></center><br />
                                           <form method="POST">
                                                <div class="form-group">
                                                    <label for="username">Email</label>
                                                    <input type="email" class="form-control" id="email" name="email" placeholder="Entrez votre email" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password">Mot de passe</label>
                                                    <input type="password" class="form-control" id="password" name="password" placeholder="Entrez votre mot de passe" required>
                                                </div>
                                                <?php if (!empty($e) && $e == true) { ?>
                                                <div class="form-group">
                                                    <br /><p><font color="red">Impossible de se connecter à votre compte</font>,<br> vérifiez votre mot de passe</p>
                                                </div>
                                                <?php } ?>
                                                <div class="form-group">
                                                    <br /><center><input type="submit" class="btn btn-success" value="connexion à mon compte"></center>
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

            
            </div>
        </div>
    </div>

  <section class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                      &copy; 2018 GESTION LSPD | LSAV
            </div>
        </div>
    </div> 
  </section>
      <script src="/assets/js/jquery-1.10.2.js"></script>
      <script src="/assets/js/bootstrap.js"></script>
      <script src="/assets/js/dataTables/jquery.dataTables.js"></script>
      <script src="/assets/js/dataTables/dataTables.bootstrap.js"></script>
      <script src="/assets/js/custom.js"></script>
      <script src="/assets/js/serviceinputs.js"></script>
    </body> 
</html>
