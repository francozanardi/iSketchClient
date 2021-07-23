<?php
    header('Access-Control-Allow-Origin: https://isketchclient.web.app');

    if(!array_key_exists('HTTP_ORIGIN', $_SERVER) || $_SERVER['HTTP_ORIGIN'] != "https://isketchclient.web.app"){
        die("download:0;online:0");
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
    
    function getCantidadDeFilas($tabla, $conn){
        $sql = "SELECT COUNT(*) as cant FROM ". $tabla;
        $result = $conn->query($sql);
        
        if ($result->num_rows > 0) {
          if($row = $result->fetch_assoc()) {
            return $row["cant"];
          }
        }
        
        return -1;
    }
    
    echo "downloads:" . getCantidadDeFilas("downloads", $conn) . ";online:" . getCantidadDeFilas("online", $conn);
?>