
<style>
<?php include 'styles/style.css'; ?>

</style>


<?php 

    include_once './components/header.php';
    
?>

<?php if(!isset($_SESSION['usersId'])) : ?>
    <h1 id="user">&#128519 <br>
     <span class="registerText">вы можете зарегистрироваться <br> или же<br>
      зайдите в учетную запись, используя </span>
      <br> 
      <span class="registerText">Имя пользователя:MainUser <br>Пароль:User1111</span>
    </h1>
    <?php else: ?><h1 id="user" class="registerText">Добро пожаловать, пользователь <?php if(isset($_SESSION['usersId'])){
        echo explode(" ", $_SESSION['usersName'])[0]; 
        echo " &#128526;";
            }   ?> </h1>
                
<div class="welcome">
   
    <form method="POST" action="">

				<div class="search">
			<input type="search" class="" name="keyword" value="<?php echo isset($_POST['keyword']) ? $_POST['keyword'] : '' ?>" placeholder="Поищи здесь...(*mike,test)" required=""/>

					<button class="button" name="search">Поиск</button>
					<a href="./" class="button2"><img src="./assets/update2.webp" alt="" width="50"></a>
		
			</form>
			
		</div>
		<?php include 'search.php'?>

    
</div>

<?php endif; ?>


    

