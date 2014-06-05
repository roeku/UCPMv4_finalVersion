<section class="index">
    <form id="cancel" action="snooze_time.php" method="post">
	<p>How long will the emergency last?</p>
        <input type="range" min="0" max="24" step="1" value="0" name="hour" onchange="showValue(this.value)">
        <b><span id="range"></span></b>
        <b>hours</b>
       
        </form>
     <h1>To reschedule appointments</h1>
    <div class="thisday">
       
       
    </div>
</section>

        <script type="text/javascript">
            function showValue(newValue) {
                document.getElementById("range").innerHTML=newValue;
                
                $.ajax({
                    method: 'GET',
                    url:    'template/snoozeoverview.php?hour='+newValue,
                    dataType: 'html',
                    error: function(e){
                        console.log('hata var');
                    },
                    success: function(e){
                       $('.thisday').html(e);
                    },
                    
                });
            }
        </script>