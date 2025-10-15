<?php

function createTable(array $records, bool $withHeaders=false): string {
    $htmlString = '<table>';

    if ($withHeaders) {
        $htmlString .= '<thead><tr>';
        foreach (array_keys($records[0]) as $header) {
            $htmlString .= '<th>' . $header . '</th>';
        }
        $htmlString .= '<th>Action</th>';
        $htmlString .= '</tr></thead>';
    }

    $htmlString .= '<tbody>';
    foreach ($records as $record) {
        $htmlString .= '<tr>';
        foreach($record as $key => $value) {
            $htmlString .= '<td>' . $value . '</td>';
        }
        $actionLink = "<td><a href='http://www.pokemon.patrick.web.bbq/pokemon/show/{$record['id']}><button>Details</button>";
        $htmlString .= $actionLink;
        $htmlString .= '</td></tr>';
    }
    $htmlString .= '</tbody>';

    return $htmlString;
}