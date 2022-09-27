
<?php 
    include_once './components/header.php';
    include_once './helpers/session_helper.php';
    include_once './helpers/session_helper.php';

?>
<style>
<?php include './styles/style.css'; ?>
</style>
    <h1 id="user">Пожалуйста войдите</h1>

    <div class="welcome">
    <span style="color:red;"> <?php flash('login') ?></span>

    <form method="post" action="./controllers/Users.php">
    <input type="hidden" name="type" value="login">
        <input type="text" name="name/email"  
        placeholder="Имя пользователя/или электронная почта...">
        <input type="password" name="usersPwd" 
        placeholder="Пароль...">
        <button type="submit" name="submit" class="button">Войти</button>
    </form>

    <div class="form-sub-msg"><a href="./reset-password.php" class="button2">Забытый пароль?</a></div>
    </div>
<?php 
    include_once './components/footer.php'
?>