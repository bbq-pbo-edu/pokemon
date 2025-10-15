<?php

echo 'update' . '<br>';

$data = [
    'name' => 'Polkemon',
    'caught' => 1,
    'type_1' => 'Feuer',
    'type_2' => null,
    'description' => 'test'
];

updateById('pokemon', 2, $data);

header('Location: /pokemon/show/2');