<?php

echo 'create' . '<br>';

$newPokemon = [
    'id' => 11,
    'name' => 'Pokemon 2',
    'caught' => 0,
    'type_1' => 'Psycho',
    'type_2' => 'Flug',
    'description' => 'Lorem ipsum.'
];

create('pokemon', $newPokemon);
$newId = findLatestId('pokemon');

header('Location: /pokemon/show/' . $newId);
exit();