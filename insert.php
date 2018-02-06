
<!doctype html>
<html>
    <head>
        <!--link href="index.css" rel="stylesheet"/-->
        <link href="bootstrap.min.css" rel="stylesheet"/>
        <title>Ma3 Terminus</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>
<body >

<div class="container-fluid text-center header">
    <div class="col-sm-offset-4 col-sm-4">
        <a id="home_link"  href="http://localhost/ma3%20terminus/"><h1>MA3TERMINUS</h1></a>
    </div>
    <div class="col-sm-4"></div>
</div>

<div class="container-fluid">

    <div class="text-center">
        <h3>ADD DETAILS OF NEW TERMINUS....</h3>
    </div>
</div>


<div class="container-fluid">

    <form class="form-horizontal" role="form" id="insert" action="<?php echo $_SERVER['PHP_SELF']?>" method="post" enctype="multipart/form-data">

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#title">Latitude:</label>
                    <div class="col-sm-7">
	                   <input class="form-control" type="text" id="title" name="lat" required data-trigger="focus" data-placement="top" placeholder="e.g. -1.283876" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#url">Longitude:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="url" name="long" required data-trigger="focus" data-placement="top" placeholder="e.g. 36.827671" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#key">Destination:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="key" name="dest" required data-trigger="focus" data-placement="top" placeholder="e.g. Thika" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#key">Route Number:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="key" name="route_number" required data-trigger="focus" data-placement="top" placeholder="e.g. 247" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#key">Road Used:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="key" name="road_used" required data-trigger="focus" data-placement="top" placeholder="e.g. Thika Road" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>  

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#key">Price Range:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="key" name="price_range" required data-trigger="focus" data-placement="top" placeholder="e.g. 50/= to 80/=" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-1"></div>
                <label class="control-label col-sm-2" for="#key">Sacco Name:</label>
                    <div class="col-sm-7">      
                        <input class="form-control" type="text" id="key" name="sacco_name" required data-trigger="focus" data-placement="top" placeholder="e.g. Kenya Mpya" /> 
                    </div>

                    <div class="col-sm-2"></div>
            </div>
        </div>

        

    <div class="container-fluid">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-4"></div>
                 <input type="submit"  class="col-sm-4 btn btn-danger" value="SUBMIT"/> 
                <div class="col-sm-4"></div>
            </div>
        </div>
    </div>

     	                
    </form>
</div>


<script type="text/javascript" src="jquery-validate.bootstrap-tooltip.min.js"></script>




<?php
$db = new PDO('mysql:host=;dbname=', '', '');

isset($_POST['lat'])? $lat = $_POST['lat']: $lat = "";
isset($_POST['long'])? $long = $_POST['long']: $long = "";
isset($_POST['dest'])? $dest = $_POST['dest']: $dest = "";
isset($_POST['route_number'])? $route_number = $_POST['route_number']: $route_number = "";
isset($_POST['road_used'])? $road_used = $_POST['road_used']: $road_used = "";
isset($_POST['price_range'])? $price_range = $_POST['price_range']: $price_range = "";
isset($_POST['sacco_name'])? $sacco_name = $_POST['sacco_name']: $sacco_name = "";

$sq1 = $db->prepare("INSERT INTO terminus_location(latitude, longitude, destination) VALUES(:lat, :long, :dest)");
$sq1->bindParam(':lat', $lat);
$sq1->bindParam(':long', $long);
$sq1->bindParam(':dest', $dest);

$sq2 = $db->prepare("INSERT INTO terminus_road(road_used, sacco_name) VALUES(:road_used, :sacco_name)");
$sq2->bindParam(':road_used', $road_used);
$sq2->bindParam(':sacco_name', $sacco_name);

$sq3 = $db->prepare("INSERT INTO terminus_route(route_number, price_range) VALUES(:route_number, :price_range)");
$sq3->bindParam(':route_number', $route_number);
$sq3->bindParam(':price_range', $price_range);


//SHOW STATE OF INSERT
if(($sq1->execute()) && ($sq2->execute()) && ($sq3->execute())){
    echo"
        <script type=\"javascript\">
            alert('Successfully added');
        </script>
    ";

}else{
    echo"
        <script type=\"javascript\">
            alert('Something went horribly wrong');
        </script>
    ";
}






?>





