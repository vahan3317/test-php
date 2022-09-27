
<?php 
    include_once './components/header.php';
    include_once './helpers/session_helper.php';
?>
    <h1 id="user" class="registerText">Сброс пароля</h1>

    
<div class="welcome">
<?php flash('reset') ?>
    <form method="post" action="./controllers/ResetPasswords.php">
        <input type="hidden" name="type" value="send" />
        <input type="text" name="usersEmail" 
        placeholder="Напишите почту...">
        <button type="submit" name="submit" class="button">Получить на почту</button>
    </form>
</div>
<?php 
    include_once 'components./footer.php'
?>