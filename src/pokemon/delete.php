<?php

echo 'delete' . '<br>';

deleteById('pokemon', 2);

header('Location: /pokemon/read');
exit();