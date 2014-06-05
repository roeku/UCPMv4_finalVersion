<section class="index">
<?php
	$colleagueID=$_GET['colleagueID'];			
?>

	<div>
		<a href="c_calendar.php?id=<?php echo $colleagueID;?>">
			<p class="succes">Show agenda »</p>
		</a>
	</div>

	<div class="recipe_container">
		<div class="recipe_pic">
		<img src="img/<?php echo getColleaguesInfo($colleagueID, 'img');?>" width="100%">
		</div>
			<?php echo '<h2>'. getColleaguesInfo($colleagueID, 'name').'</h2>';?>
			
		<div class="recipe_info">
			<ul>
				<li><strong>Function:</strong><br/> <?php echo getColleaguesInfo($colleagueID, 'function');?></li><br/>
				<li><strong>Contact:</strong><br/> <?php echo getColleaguesInfo($colleagueID, 'email');?><br/> <?php echo '+'.getColleaguesInfo($colleagueID, 'telephone');?> </li><br/>
				<li><strong>Personal:</strong><br/> Hobbies: <?php echo getColleaguesInfo($colleagueID, 'hobbies');?><br/> Kids: <?php echo getColleaguesInfo($colleagueID, 'kids');?></li><br/>
			</ul>
		</div>
	</div>

</section>