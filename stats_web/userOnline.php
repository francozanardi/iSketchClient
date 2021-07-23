<?php
    header('Access-Control-Allow-Origin: https://isketchclient.web.app');

    if(!array_key_exists('HTTP_ORIGIN', $_SERVER) || $_SERVER['HTTP_ORIGIN'] != "https://isketchclient.web.app"){
        die("Ok");
    }

    $servername = "**********";
    $username = "**********";
    $password = "**********";
    $database = "**********";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $database);
    
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed");
    }
    
    $ip = $conn->real_escape_string($_SERVER['REMOTE_ADDR']);
    
    $sqlDownloads = "INSERT INTO downloads(ip) VALUES ('".$ip."')";
    $sqlOnline = "INSERT INTO online(ip) VALUES ('".$ip."')";
    
    $conn->query($sqlDownloads);
    
    if ($conn->query($sqlOnline)) {
      echo "Ok";
    } else {
      echo "Error: " . $conn->error;
    }
?>