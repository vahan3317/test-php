<?php 
    session_start(); 
?>
<style>
<?php include './styles/style.css'; ?>
</style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Login System</title>
    <link rel="stylesheet" href="./style.css" type="text/css">
</head>
<body>
    <div class="nav">
        
            <a href="index.php" class="button"><li>Домoй</li></a>
            <?php if(!isset($_SESSION['usersId'])) : ?>
            
                <a href="signup.php" class="button2"><li>Зарегистрироваться</li></a>
                <a href="login.php" class="button"><li>Войти</li></a>
            
                <?php else: ?>
                <a href="./controllers/Users.php?q=logout" class="button2"><li>Выйти</li></a>
            <?php endif; ?>
        
    </div>