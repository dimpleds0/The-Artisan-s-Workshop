<?php

//index.php
// The home page for the Artisan's Workshop

$page_title = 'The Artisan\'s Workshop';
include('header.html.php');

?>

<div class="content">
  <h1>Welcome to the Artisan's Workshop</h1>
  <p>Here you can find all sorts of artisinal crafts and items, handmade just for you.</p>
  <p><a href="shop.php">Shop Here</a></p>
  <p><img src="images/shop-outside.jpg" alt="Outside the shop" class="float-right"></p>
  <p>Ready to learn a new craft? Check out our classes!</p>
  <p><a href="classes.php">View Classes</a></p>
  <p><img src="images/learn-class.jpg" alt="People learning a new craft" class="float-right"></p>
</div>

<?php

include('footer.html.php');

//shop.php
// The page for the shop

$page_title = 'The Artisan\'s Workshop - Shop';
include('header.html.php');

?>

<div class="content">
  <h1>Welcome to the Artisan's Workshop Shop</h1>
  <p>Here you can find all sorts of artisinal crafts and items, handmade just for you.</p>
  <p><img src="images/shop-inside.jpg" alt="Inside the shop" class="float-right"></p>
  <p><a href="index.php">&laquo; Back to Home</a></p>
  <h2>Available Items</h2>
  <ul>
    <li><a href="items.php?type=wood">Woodwork</a></li>
    <li><a href="items.php?type=pottery">Pottery</a></li>
    <li><a href="items.php?type=textiles">Textiles</a></li>
  </ul>
</div>

<?php

include('footer.html.php');

//classes.php
// The page for the classes

$page_title = 'The Artisan\'s Workshop - Classes';
include('header.html.php');

?>

<div class="content">
  <h1>Welcome to the Artisan's Workshop Classes</h1>
  <p>Ready to learn a new craft? Check out our classes!</p>
  <p><img src="images/classes-inside.jpg" alt="Classes in action" class="float-right"></p>
  <p><a href="index.php">&laquo; Back to Home</a></p>
  <h2>Available Classes</h2>
  <ul>
    <li><a href="classes.php?type=wood">Woodworking</a></li>
    <li><a href="classes.php?type=pottery">Pottery</a></li>
    <li><a href="classes.php?type=textiles">Textiles</a></li>
  </ul>
</div>

<?php

include('footer.html.php');

//items.php
// The page for the items

$page_title = 'The Artisan\'s Workshop - Shop Items';
include('header.html.php');

$type = $_GET['type'];

?>

<div class="content">
  <h1>Welcome to the Artisan's Workshop Shop Items</h1>
  <p>Here you can find all sorts of artisinal crafts and items, handmade just for you.</p>
  <p><img src="images/shop-inside.jpg" alt="Inside the shop" class="float-right"></p>
  <p><a href="index.php">&laquo; Back to Home</a></p>
  <h2>Available <?php echo ucwords($type); ?> Items</h2>
  <?php
    switch($type) {
      case 'pottery':
        echo '<p>Pottery items available.</p>';
        break;
      case 'wood':
        echo '<p>Wood items available.</p>';
        break;
      case 'textiles':
        echo '<p>Textile items available.</p>';
        break;
    }
  ?>
</div>

<?php

include('footer.html.php');

//header.html.php
<!DOCTYPE html>
<html>

<head>
  <title><?php echo $page_title; ?></title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
  <div class="page-wrapper">
    <div class="header">
      <h1>The Artisan's Workshop</h1>
    </div>

//footer.html.php

</div>

<div class="footer">
  <p>&copy; 2018 The Artisan's Workshop</p>
</div>

</body>
</html>