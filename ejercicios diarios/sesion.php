<?php
$consulta = $pdo->prepare('
  UPDATE PS_UserData.dbo.Users_Master
    SET SID = :SID
    WHERE UserID = :UserID
');
$consulta->execute([
  ':UserID' => $_SESSION['UserID'],
  ':ID' => SID,
]);