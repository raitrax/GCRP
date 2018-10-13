<?php

    SESSION_START();

    require '../../initd/config.php';
    require '../../initd/class/radars/radars.php';
    $radars = new \Justice\radars($ENV);
    $PeageFlash = $radars->getPeageFlash();

        while ($data = $PeageFlash->fetch()) {
            if (!empty($_GET['plate'])) {
                if ($data['plate'] == $_GET['plate']) {
                    echo json_encode($data);
                }
            } else {
                echo json_encode($data);
            }
        }

    ?>


<?php exit(); ?>

<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        boby {
            height:150px;
            overflow-y: scroll;
        }
    </style>
  </head>

  <body>


  <table class="table">
  <thead>
    <tr>
      <th scope="col">Véhicule</th>
      <th scope="col">Plaque d'immatriculation</th>
      <th scope="col">Vitesse</th>
      <th scope="col">Numéro radar</th>
    </tr>
  </thead>
  <tbody>
    <?php
       
        while ($data = $PeageFlash->fetch()) {
            if (!empty($_GET['plate'])) {
                if ($data['plate'] == $_GET['plate']) {
                    echo '<tr>';
                    echo '<th scope="row">' . $data['modele'] . '</th>';
                    echo '<td>' . $data['plate'] . '</td>';
                    echo '<td>' . $data['speed'] . '</td>';
                    echo '<td>' . $data['station'] . '</td>';
                    echo '</tr>';
                }
            } else {
                echo '<tr>';
                echo '<th scope="row">' . $data['modele'] . '</th>';
                echo '<td>' . $data['plate'] . '</td>';
                echo '<td>' . $data['speed'] . '</td>';
                echo '<td>' . $data['station'] . '</td>';
                echo '</tr>';
            }
        }

    ?>
  </tbody>
</table>
 </body>
</html>
