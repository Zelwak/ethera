<?php
require('vendor/autoload.php');
include('parameters.php');
include('functions.php');

$faker = Faker\Factory::create();

$pdo = new PDO('mysql:host='.$host.';dbname='.$db_name.';charset=utf8', $user, $password);

truncateAll($pdo);
$m = 4;

for($i=1;$i<=5*$m;$i++){
    $name = $faker->lastName;
    $pdo->exec("INSERT INTO player(name) VALUES('$faker->lastName')");
}

for($i=1;$i<=5*$m;$i++){
    $pdo->exec("INSERT INTO team(player_id) VALUES($i)");
}

$fieldType_list = ['Marais', 'Forêt', 'Taïga', 'Désert', 'Plaine', 'Toundra', 'Jungle', 'Océan', 'Colline', 'Montagne', 'Enfer'];
foreach($fieldType_list as $fieldType){
    $pdo->exec("INSERT INTO fieldType(name) VALUES('$fieldType')");
}

$numCase = 5*$m;
$sizeCase = 100;
for($i=0;$i<$numCase;$i++){
    for($j=0;$j<$numCase;$j++) {
        $width = $height = $sizeCase;
        $x = $i*$width;
        $y = $j*$height;
        $fieldType_id = mt_rand(1, count($fieldType_list));
        $pdo->exec("INSERT INTO field(x, y, width, height, fieldType_id) VALUES($x,$y,$width,$height,$fieldType_id)");
    }
}

$bagType_list = ['Bagage du dément', 'Sac totémique', 'Sacoche royale', 'Sac illusoire', 'Paquetage grumelot', 'Sac en peau de dragon', 'Sac abyssal', 'Sac en tisse-givre', 'Sac sans fond', 'Sac d\'explorateur', 'Sac en peau de démon'];
$pdo->exec("INSERT INTO bagType(name, size) VALUES('Sacoche modeste', 10)");
foreach($bagType_list as $bagType){
    $size = mt_rand(3,20)*5;
    $pdo->exec("INSERT INTO bagType(name, size) VALUES('$bagType',$size)");
}

for($i=0;$i<15*$m;$i++){
    $bagType_id = mt_rand(1, count($bagType_list)+1);
    $pdo->exec("INSERT INTO bag(bagType_id) VALUES($bagType_id)");
}

$j = 1;
for($i=1;$i<=15*$m;$i++){
    $name = $faker->lastName;
    $hp = mt_rand(0, 100);
    $mp = mt_rand(0, 100);
    $x = mt_rand(1, $numCase*$sizeCase-20);
    $y = mt_rand(1, $numCase*$sizeCase-20);
    $field_id = mt_rand(1, count($fieldType_list));
    $team_id = $j;
    $bag_id = $i;
    $pdo->exec("INSERT INTO wizard(name, hp, mp, x, y, field_id, team_id, bag_id) VALUES('$name',$hp,$mp,$x,$y,$field_id,$team_id,$bag_id)");
    if($j == 3){
        $j = 1;
    }else{
        $j++;
    }
}

$spell_list = ['Boule de feu', 'Piques de glace', 'Tourbillon', 'Cataclysme', 'Epée de lumière', 'Mercurocrum', 'Hansaplastum', 'Omega slash de l\'ultime Apollon', 'Trempette', 'Aura de lumière', 'Aura d\'air', 'Lames des 7 purgateurs', 'Silence'];
foreach($spell_list as $spell){
    $cost = mt_rand(5,50);
    if(mt_rand(1,4) == 4){
        $heal = mt_rand($cost+5,$cost+30);
        $pdo->exec("INSERT INTO spell(name, cost, heal) VALUES('$spell',$cost, $heal)");
    }else{
        $damage = mt_rand($cost+5,$cost+30);
        $pdo->exec("INSERT INTO spell(name, cost, damage) VALUES('$spell',$cost, $damage)");
    }
}

for($i=0;$i<mt_rand(5,30);$i++){
    $spell_id = mt_rand(1, count($spell_list)+1);
    $fieldType_id = mt_rand(1, count($fieldType_list)+1);
    $pdo->exec("INSERT INTO spell_fieldType(spell_id, fieldType_id) VALUES($spell_id, $fieldType_id)");
}

for($i=0;$i<60*$m;$i++){
    $spell_id = mt_rand(1, count($spell_list)+1);
    $wizard_id = mt_rand(1, mt_rand(1, 15*$m));
    $pdo->exec("INSERT INTO wizard_spell(spell_id, wizard_id) VALUES($spell_id, $wizard_id)");
}


$objectType_list = ['Batôn', 'Baguette', 'Gantelets', 'Collier', 'Bague', 'Cuirasse', 'Veste', 'Pantalon', 'Chaussures', 'Pierre de lune', 'Pierre de souvenir', 'Artéfact', 'Viande', 'Poisson', 'Bière', 'Potion de vie', 'Potion de mana', 'Potion d\'endurance', 'Livre', 'Herbes médicinales'];
$i = 1;
foreach($objectType_list as $objectType){
    if($i <= 9){
        $durability = mt_rand(10, 200)*10;
    }else{
        $durability = 1;
    }
    $pdo->exec("INSERT INTO objectType(name, durability) VALUES('$objectType', $durability)");
    $i++;
}

for($i=0;$i<60*$m;$i++){
    $objectType_id = mt_rand(1, count($objectType_list)+1);
    $bag_id = mt_rand(1, mt_rand(1, 15*$m));
    $quantity = mt_rand(0, 50);
    $pdo->exec("INSERT INTO objectType_bag(objectType_id, bag_id, quantity) VALUES($objectType_id, $bag_id, $quantity)");
}

for($i=0;$i<45*$m;$i++){
    $spell_id = mt_rand(1, count($spell_list)+1);
    $objectType_id = mt_rand(1, count($objectType_list)+1);
    $pdo->exec("INSERT INTO objectType_spell(spell_id, objectType_id) VALUES($spell_id, $objectType_id)");
}

echo mt_rand();
