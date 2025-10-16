<?php

echo 'delete' . '<br>';

deleteById('pokemon', $id);

header('Location: /pokemon/read');
exit();