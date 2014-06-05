<?php
include('../core/init.php');
$hour = $_GET['hour'] + 2;

$now = new \Datetime();
    $add = $now->modify('+'.$hour.' hours');
    $add = $add->format('Y-m-d H:i:s');
    echo $add;
$time = new \Datetime();
$curtime = $time->modify('+'.'2'.' hours');
$curtime = $curtime->format('Y-m-d H:i:s');
echo $curtime;
?>


	 <ul>
<?php 
    seeBeforeDeleted($curtime, $add, $userID)
?>

        </ul>
<div class="snooze_container">
	<a href="snooze_time.php?starttime=<?php echo $curtime ?>&duration=<?php echo $add?>" alt="">
		<div class="snooze red">
			Emergency stop
		</div>
	</a>
</div>