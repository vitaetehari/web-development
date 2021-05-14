<?php
if (!isset($_GET['text'])) die("Параметр text не задан!");
$string = str_replace('  ', ' ', trim($_GET['text']));
echo $string;
