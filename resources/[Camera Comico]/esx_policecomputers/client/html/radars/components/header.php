<?php if (empty($_SESSION['auth'])) { header('Location: /connexion/'); exit(); } ?>
<html>
    <head>
      <meta charset="utf-8" />
      <title>LSPD - <?= $pagetitle ?></title>
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
                        <a style="margin-left: 15px;" href="/logout/" class="btn btn-danger pull-right">Me déconnecter</a>
                        <a style="margin-left: 15px;" href="/mon-compte/" class="btn btn-primary pull-right">Mon compte</a>
                        <?php if ($_SESSION['auth']['grade_id'] == 6) { ?><a style="margin-left: 15px;" href="/administration-lspd/" class="btn btn-warning pull-right">Administration LSPD</a><?php } ?>
                        <a class="pull-righ"><?= $_SESSION['auth']['names'] ?> - <?= $_SESSION['auth']['grade'] ?></a>
                    </div>
                </div>
            </div>
            <section class="menu-section">
                <div class="container">
                    <div class="row ">
                        <div class="col-md-12">
                            <div class="navbar-collapse collapse ">
                                <ul id="menu-top" class="nav navbar-nav navbar-right">
                                    <li>
                                        <a href="/" class="menu-top-active"><b>Accueil</b></a>
                                    </li>
                                    <li>
                                        <a href="/casier-judiciaire/"><b>Casier Judiciaire</b></a>
                                    </li>
                                    <li>
                                        <a href="/depot-de-plainte/"><b>Dépôt de plainte</b></a>
                                    </li>
                                    <li>
                                        <a href="/declarations-armes/"><b>Déclarations d'armes</b></a>
                                    </li>
                                    <li>
                                      <div class="dropdown">
                                        <a>
                                          <li class="dropdown-toggle" data-toggle="dropdown">Aide <span class="caret"></span></li>
                                          <ul class="dropdown-menu">
                                            <?php if ($_SESSION['auth']['former'] == true) { ?>
                                                <li><a href="/aide/entretien-wl/"><b>entretien d'embauche</b></a></li>
                                            <?php } ?>
                                            <li><a href="/aide/information/"><b>Information LSPD</b></a></li>
                                            <li><a href="/aide/intervention/"><b>Fiche D'Intervention Routière</b></a></li>
                                          </ul>
                                        </a>
                                      </div> 
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>