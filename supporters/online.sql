$username = mysql_real_escape_string($_GET['name'], $db);
$score = mysql_real_escape_string($_GET['score'], $db);
$hash = $_GET['hash'];
$privateKey="ADDYOURKEY";
