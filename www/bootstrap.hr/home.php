<!DOCTYPE html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php include_once 'head.php'; ?>
  </head>
  <body>
    <?php include_once 'navigation.php'; ?>

<main>

 

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <?php for($i=1;$i<=6;$i++){
        echo '<div class="col">
                  <div class="card shadow-sm">
                      <img src="images/wall.jpg"></img>
                      <div class="card-body">
                      <p class="card-text">'.$i.'. *Name*   *Grade*</p>
                      <div class="d-flex justify-content-between align-items-center">
                          <div class="btn-group">
                          <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                          <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                          </div>
                          <small class="text-muted">setter</small>
                      </div>
                      </div>
                  </div>
              </div>';
      } ?>
      
        
      </div>
      <nav aria-label="Page navigation example" id="paging">
        <ul class="pagination">
          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
      </nav>
    </div>
  </div>

</main>
    <?php include_once 'footer.php' ?>
    <?php include_once 'scripts.php'; ?>
  </body>
</html>
