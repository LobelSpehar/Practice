<div class="title-bar primary" data-responsive-toggle="example-menu" data-hide-for="medium">
  <button class="menu-icon" type="button" data-toggle="example-menu"></button>
  <div class="title-bar-title">Menu</div>
</div>

<nav class="top-bar" id="example-menu">
  <div class="top-bar-left">
    <a href='index.php' class="menu-text">Home</a>
    <?php
    if(isset($_GET['user'])){
      echo '<a href="newroute.php" class="menu-text">Add new route</a>';
    }   
  ?>
  </div>
  <div class="top-bar-right">
  
  <?php
    if(isset($_GET['user'])){
      echo 'Logged In as 
      <a href="myprofile.php" class="menu-text">'.$_GET['user'].'</a>',
      '<a href="index.php" class="button">Log Out</a>';
    } else { 
    echo '<a href="login.php" class="button">Log In</a>';
      
    }
   
  ?>
   </div>
</nav>