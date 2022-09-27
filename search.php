<?php
	require 'conn.php';
	if(ISSET($_POST['search'])){
?>
<style>
<?php include './styles/style.css'; ?>
</style>

	<table class="table">
		<thead class="">
			<tr>
				<th>ID</th>
				<th>Имя</th>
				
				
				<th>Видеть страницу</th>

			</tr>
		</thead>
		<tbody>
			<?php
				$keyword = $_POST['keyword'];
				$query = $conn->prepare("SELECT * FROM `users` WHERE `name` LIKE '%$keyword%' or `login` LIKE '%$keyword%' ");
				$query->execute();
				while($row = $query->fetch()){
			?>
			<tr>
			<td><?php echo $row['id']?>.</td>
				<td><?php echo $row['name']?></td>
				
				
    <td><a href="student-view.php?id=<?= $row['id']; ?>" class="button2"> Страница пользователя </a></td>
			</tr>
  
 
 
			<?php
				}
			?>
		</tbody>
	</table>
<?php		
	}else{
?>

<?php
	}
?>