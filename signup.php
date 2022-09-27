<?php 
    include_once './components/header.php';
    include_once './helpers/session_helper.php';
?>
<style>
<?php include '../styles/style.css'; ?>
</style>

<h1 id="user" class="registerText">Пожалуйста, зарегистрируйтесь</h1>
<div class="welcome">
    

    <span style="color:red;"><?php flash('register') ?></span>

    <form method="post" action="./controllers/Users.php">
        <input type="hidden" name="type" value="register">
        <input type="text" name="usersName" 
        placeholder="ФИО...">
        <input type="text" name="usersEmail" 
        placeholder="Эл. адрес...">
        <input type="text" name="usersUid" 
        placeholder="Имя пользователя...">
        <input type="password" name="usersPwd" 
        placeholder="Пароль...">
        <input type="password" name="pwdRepeat" 
        placeholder="Повторите пароль">
        <button type="submit" name="submit" class="button2">Авторизоваться</button>
    </form>
  
    </div>
<?php 
    include_once './components/footer.php'
?>