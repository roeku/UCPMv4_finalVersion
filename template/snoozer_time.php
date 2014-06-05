<?php
// Huidige tijd
	$curdate = time (); 
	$curday = date('d', $curdate); 
	$curmonth = date('m', $curdate); 
	$curyear = date('Y', $curdate);
	$curhour = date('H', $curdate);
$curtime = $_GET['starttime'];
$duration = $_GET['duration'];
	
?>
  <section class="index">
    <div class="thisday">
        <ul class="line-through">
	<?php 
    seeBeforeDeleted($curtime, $duration, $userID); ?>
        </ul><ul><li>
      <?php
    deleteEvent($curtime, $duration, $userID);
?></li></ul>
</div>