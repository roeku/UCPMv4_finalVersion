<?php

// delete function for defined appointments with start & endtime
function deleteEvent($time, $buffertime, $userID){
	foundAppointment($day, $month, $year, $userID);
		$q = "DELETE FROM UCPM_appointments WHERE DATE_FORMAT(starttime, '%Y-%m-%d %H:%i:%s') > DATE_FORMAT('".$time."', '%Y-%m-%d %H:%i:%s') AND DATE_FORMAT(starttime, '%Y-%m-%d %H:%i:%s') < DATE_FORMAT('".$buffertime."', '%Y-%m-%d %H:%i:%s') AND userID=$userID";
	$result = mysql_query($q) or die(mysql_error());
	checkDeleted($day, $month, $year, $buffertime, $userID);

}

function checkDeleted($day, $month, $year, $userID) {
	if(mysql_affected_rows() !== 0){
		echo '<div class="title">You\'ve just cancelled '. mysql_affected_rows() . ' appointment(s) for the upcoming ' . $_POST['hour'] . ' hour(s).</div>';
	}
}

function seeBeforeDeleted($time, $buffertime, $userID) {
    $result = mysql_query("SELECT * FROM UCPM_appointments WHERE DATE_FORMAT(starttime, '%Y-%m-%d %H:%i:%s') > DATE_FORMAT('".$time."', '%Y-%m-%d %H:%i:%s') AND DATE_FORMAT(starttime, '%Y-%m-%d %H:%i:%s') < DATE_FORMAT('".$buffertime."', '%Y-%m-%d %H:%i:%s') AND userID=$userID ORDER BY starttime ASC");
	if (mysql_num_rows($result) == 0){
		echo '<li><div class="empty">Nothing planned for this time…</div></li>';
	} else {
		while($row = mysql_fetch_array($result)){
			if ($row['secret']==1){
				$secret= '<div class="label secret">secret</div>';
			} else {
				$secret='';
			}
			if(date('Y-m-d', strtotime($row['endtime']))==date('Y-m-d', strtotime($row['starttime']))){
			echo '<li><a href="edit.php?id='.$row['appID'].'"><div class="label '.$row['label'].'">'.$row['label'].'</div>'.$secret.'<div class="time">'.timestampToHours($row['starttime']).' till '.timestampToHours($row['endtime']).'</div><div class="title">'.$row['title'].'</div><div class="location">At '.$row['location'].'</div></li></a>';
			} else {
			echo '<li><a href="edit.php?id='.$row['appID'].'"><div class="label '.$row['label'].'">'.$row['label'].'</div>'.$secret.'<div class="time">'.timestampToDates($row['starttime']).' <em>('.timestampToHours($row['starttime']).')</em> till '.timestampToDates($row['endtime']).' <em>('.timestampToHours($row['endtime']).')</em></div><div class="title">'.$row['title'].'</div><div class="location">At '.$row['location'].'</div></li></a>';
			}
		}
	}	
}
?>

