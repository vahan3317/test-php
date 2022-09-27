<?php
require 'con2.php';

include_once './components/header.php'
?>
<style>
<?php include './styles/style.scss'; ?>
</style>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    

    <title>User View</title>
</head>
<body>

    <div class="">

        <div class="">
            <div class="">
                <div class="">
             
                    <div class="main">

                        <?php
                        if(isset($_GET['id']))
                        {
                            $user_id = mysqli_real_escape_string($con, $_GET['id']);
                            $query = "SELECT * FROM users WHERE id='$user_id' ";
                            $query_run = mysqli_query($con, $query);

                            if(mysqli_num_rows($query_run) > 0)
                            {
                                $user = mysqli_fetch_array($query_run);
                                ?>
                                
                                    <div class="balance-div">
                                        <label>Ваш баланс:</label>
                                        <p class="coin">
                                          <img src="./assets/coin.png" alt="coin.png" > <span><?=$user['coins'];?></span><img src="./assets/Eth.png" alt="" class="Eth">
                                        </p>
                                    </div>
                      
                                <?php
                            }
                            else
                            {
                                echo "<h4>No Such Id Found</h4>";
                            }
                        }
                        ?>
                    
                    <div class="top-second">
                    <div class="instruction">
                        <span class="inst1">Варианты обмена на скидку</span>
                        <span class="inst2" id="myBtn">Инструкция</span>
                        <div id="myModal" class="modal">

                            <!-- Modal content -->
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <p class="inst3">Инструкция.</p><br>
                                <p>После публикации сделайте скрин, что вы его написали и отправьте своему куратору, чтобы мы добавили вам спецкурс в личный кабинет.</p><br><br>
                                <p>После публикации сделайте скрин, что вы его написали и отправьте своему куратору, чтобы мы добавили вам спецкурс в личный кабинет.</p><br><br>
                                <p>После публикации сделайте скрин, что вы его написали и отправьте своему куратору, чтобы мы добавили вам спецкурс в личный кабинет.</p><br><br>
                                <p>После публикации сделайте скрин, что вы его написали и отправьте своему куратору, чтобы мы добавили вам спецкурс в личный кабинет.</p><br><br>
                                
                            </div>

                        </div>

                    </div>
                    <div class="second-card">
                    <?php
                        include_once('conn.php');
                        $a=1;
                        $stmt = $conn->prepare(
                                "SELECT * FROM products");
                        $stmt->execute();
                        $users = $stmt->fetchAll();
                        foreach($users as $user)
                        {
                    ?>
                    
                   <div class="products">
                    
                    <div class="coin2">
                    <img src="./assets/coin.png" alt="coin.png" class="coinImg" ><span> <?php echo $user['price']; ?> </span><img src="./assets/Eth.png" alt="" >
                    </div>
                    <img src="./assets/phone1.png" alt="" class="imgPhone">
                    <div>
                    <?php echo $user['description']; ?>
                    </div>
                    <button class="buy">
                    Уже использовано
                    </button>
                    </div>
                    <?php
                    }
                    ?>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>