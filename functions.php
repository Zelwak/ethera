<?php
function truncateAll($pdo){
    $pdo->query('SET foreign_key_checks = 0');

    $tables_list = $pdo->query("SELECT table_name FROM information_schema.tables where table_schema='dip_sql_ethera'")->fetchAll(PDO::FETCH_NUM);
    foreach($tables_list as $table){
        $pdo->exec("TRUNCATE TABLE $table[0]");
    }

    $pdo->query('SET foreign_key_checks = 1');
}

function display_fields($pdo){
    $field_list = $pdo->query("SELECT * FROM field")->fetchAll(PDO::FETCH_NUM);
    foreach ($field_list as $field){
        echo "<div class=\"field\" x=\"$field[1]\" y=\"$field[2]\" width=\"$field[3]\" height=\"$field[4]\" fieldType_id=\"$field[5]\" _id=\"$field[0]\" type=\"field\"></div>";
    }
}

function display_wizards($pdo){
    $wizard_list = $pdo->query("SELECT * FROM wizard")->fetchAll(PDO::FETCH_NUM);
    foreach ($wizard_list as $wizard){
        echo "<span class=\"wizard\" x=\"$wizard[4]\" y=\"$wizard[5]\" _id=\"$wizard[0]\" type=\"wizard\">☓</span>";
    }
}