<?php

if (!isset($_GET['identifier'])) { 
  die("Параметр identifier не задан!");
}
$string = $_GET['identifier'];
if (empty($string)) { 
  die("No<br />Идентификатор не может быть пустой строкой!");
}
if (ctype_digit($string[0])) {
  die("No<br />Идентификатор не может начинаться с цифры!");
}
if (!ctype_alnum($string)) {
  die("No<br />Идентификатор может состоять только из латинских букв и цифр!");
}

echo "Yes<br />Введённая строка является идентификатором.";
