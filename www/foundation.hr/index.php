<!DOCTYPE html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php include_once 'head.php'; ?>
  </head>
  <body>
    <?php require_once 'navigation.php' ?>
    <?php
    if(isset($_GET['user'])){
      echo '<div class="grid-container">
      <div class="grid-x grid-margin-x">
        <div class="cell medium-4 large-3">
          <div class="card" style="width: 300px">
            <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
          <div class="cell medium-4 large-3">
            <div class="card" style="width: 300px">
              <div class="card-divider">*GRADE*</div>
              <img src="images/wall.jpg" />
              <div class="card-section">
                <h4>*NAME*</h4>
                <p>
                  *Setter and average grade*
                </p>
              </div>
            </div>
          </div>
        </div>
        <nav aria-label="Pagination">
          <ul class="pagination">
            <li class="pagination-previous disabled">Previous <span class="show-for-sr">page</span></li>
            <li class="current"><span class="show-for-sr">You\'re on page</span> 1</li>
            <li><a href="#" aria-label="Page 2">2</a></li>
            <li class="pagination-next"><a href="#" aria-label="Next page">Next <span class="show-for-sr">page</span></a></li>
          </ul>
        </nav>
      </div>
    </div>';
    } else { 
    echo '<div class="grid-container">
    <h1>Welcome to SprayWall</h1>
    <p>Log in to start using the app</p>
  </div>';
      
    }
   
  ?>
    
    <?php include_once 'footer.php' ?>
    <?php include_once 'scripts.php'; ?>
  </body>
</html>
