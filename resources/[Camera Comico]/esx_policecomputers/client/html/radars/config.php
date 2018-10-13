<?php

$PDO = array (
    'host' => '176.31.64.107',
    'dbname' => 'lspd_panel',
    'user' => 'lspd_ws',
    'password' => 'KieqIjUzZroEuMrfcP6zJIl0tHBwsX66fqwfff8yIEIS1CBTxltOHshJXekezfB4' 
);

$PDO_GTADB = array (
    'host' => '176.31.64.107',
    'dbname' => 'gta_db',
    'user' => 'website_service',
    'password' => 'I57xcMWJ13efYi7wKKbMaM6lNZXGxrXYem1ckXSSwjD3kFPT943khwqOhhqBFS5l' 
);

$ENV = [
    'PDO' => new \PDO('mysql:host=' . $PDO['host'] . ';dbname=' . $PDO['dbname'] . ';charset=utf8', $PDO['user'], $PDO['password']),
    'PDO_GTADB' => new PDO('mysql:host=' . $PDO_GTADB['host'] . ';dbname=' . $PDO_GTADB['dbname'] . ';charset=utf8', $PDO_GTADB['user'], $PDO_GTADB['password']),
    'INTERNAL' => [
        'SERVER_IP' => '176.31.64.107:30120'
    ]
];

?>