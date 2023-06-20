<?php
	$employee_username = $_POST['employee_user'];
	$employee_password = $_POST['employee_password'];
	$client_username = $_POST['client_user'];
	$client_password = $_POST['client_password'];
    
	$connection = new mysqli("localhost", "lopeza21_bobthebuilder", "goldfishchips", "lopeza21_SpiderMan-TheMultiVerseShop");
	if ($connection->connect_error)
    	{
        	die("Unable to connect to the database ".$connection->connect_error);
    	}
    	
    $sql = "select * from PRODUCT";
    
    $result = mysqli_query($connection, $sql);
    
    if (!$result) {
        die("Query failed: " . mysqli_error($connection));
    }
   
?>
<!DOCTYPE html>
<html>
<head>
	<title>Spiderman Movie Store</title>
	<style>
    	/* Add your custom styles here */
	</style>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<h1>Welcome to the Spiderman Movie Store!</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<h2>Available Products</h2>
	<table>
	    <tr>
	        <th>Product Stock</th>
	        <th>Product Name</th>
	        <th>Category ID</th>
	        <th>Product Price</th>
	        <th>Quantity</th>
	   </tr>
	   <form action="/~lopeza21/ProjectSpiderman/AddtoCart.php" method="POST">
	   <?php
	       while ($row = mysqli_fetch_assoc($result)) {
            
                $product_id = $row['Product_ID'];
                $product_stock = $row['Product_Stock'];
                $product_name = $row['Product_Name'];
                $category_id = $row['Category_ID'];
                $product_price = $row['Product_Price'];
                
                echo "<tr><td>  $product_stock  </td><td>  $product_name  </td><td>  $category_id </td><td> $$product_price  </td></tr>";
                echo "<tr><td><input type='submit' id='submit' name='product' value='$product_name'><label>Add to Cart!</label></td></tr>";
                

	       }
	   ?>

	   </form>
	</table>
</body>
</html>
