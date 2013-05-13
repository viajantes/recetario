<?php

$a = $_GET['a'];

mysql_query('x' . $a . 'y');



if(isset($_GET['id']) && $_GET['status']==2)

{

mysql_query("DELETE FROM shops2 WHERE id='$_GET[id]' ");


