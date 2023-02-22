<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
            <div class="box round first grid">
                <h2>Báo Cáo Doanh Thu</h2>
                <div class="block">    
				</div>
        <?php
 
 $dataPoints = array();
 $y = 40;
 for($i = 0; $i < 1000; $i++){
   $y += rand(0, 10) - 5; 
   array_push($dataPoints, array("x" => $i, "y" => $y));
 }
  
 ?>
 <!DOCTYPE HTML>
 <html>
 <head> 
 <script>
 window.onload = function () {
  
 var chart = new CanvasJS.Chart("chartContainer", {
   theme: "light2", // "light1", "light2", "dark1", "dark2"
   animationEnabled: true,
   zoomEnabled: true,
   title: {
     text: "Báo Cáo Doanh THU HÀNG NĂM"
   },
   data: [{
     type: "area",     
     dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
   }]
 });
 chart.render();
  
 }
 </script>
 </head>
 <body>
 <div id="chartContainer" style="height: 370px; width: 100%;"></div>
 <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
 </body>
 </html> 
        </div>


           
<?php include 'inc/footer.php';?>
