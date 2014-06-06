<?php
//get other peeps appointments with names
function getOthersAppointments($day, $month, $year, $userID){
	//echo '<h1>Colleagues</h1>';
	$q=
	$result = mysql_query("SELECT * FROM `UCPM_appointments` INNER JOIN `UCPM_employees` ON UCPM_appointments.userID = UCPM_employees.userID WHERE $userID!=inviteesID AND (DATE(starttime) = '$year-$month-$day') AND (UCPM_appointments.userID!=$userID) AND (secret=0) ORDER BY starttime ASC");
	if (mysql_num_rows($result) == 0){
		echo '<li><div class="empty">Nothing planned for this day…</div></li>';
	} else {
		while($row = mysql_fetch_array($result)){
			echo '<li><div class="time">'.timestampToHours($row['starttime']).' till '.timestampToHours($row['endtime']).'</div><div class="title">'.$row['title'].'</div><div class="location">'.$row['location'].'</div><div class="title">'.$row['name'].'</div></li>';
			}
	}	
}
function getColleagues($userID){
	$result = mysql_query("SELECT * FROM `UCPM_employees` WHERE userID!=$userID");
	if (mysql_num_rows($result) == 0){
		echo 'No colleagues found';
	} else {
		while($row = mysql_fetch_array($result)){
			echo '<a href="colleagues_detail.php?colleagueID='.$row['userID'].'">';
			echo '<article class="info_list"><div class="info_pic"><img src="img/'.$row['img'].'" height="80"></div><div class="info_container"><div class="info_title">'.$row['name'].'</div><div class="info_extra">'.$row['function'].'</div></div></article>';
			echo '</a>';
			}
	}	
}
function getColleaguesName($userID){
	$result = mysql_query("SELECT name FROM `UCPM_employees` WHERE userID=$userID");
	if (mysql_num_rows($result) == 0){
		echo 'No name found';
	} else {
		while($row = mysql_fetch_array($result)){
			echo $row['name'];
			}
	}	
}
function getColleaguesInfo($colleagueID, $info){
	$q="SELECT $info FROM `UCPM_employees` WHERE userID=$colleagueID";
	$result = mysql_query($q);
	if (mysql_num_rows($result) == 0){
		echo 'No data found';
 	} else {
		while($row = mysql_fetch_array($result)){
			return $row[$info];
			}
	}	
}
?>