<?php
$mysqli = new mysqli('your_host', 'your_user', 'your_pass', 'saffronlites_db');
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}
echo "Connected successfully!";
