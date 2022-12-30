
<!doctype html>
<html class='no-js' lang='en' dir='ltr'>
  <head>
  <?php include_once 'head.php'; ?>
  </head>
<body>
    <div class='grid-container'>
      <?php require_once 'navigation.php' ?>
      <form class="log-in-form">
        <h4 class="text-center">Log in with you email account</h4>
        <label>Email
          <input type="email" placeholder="somebody@example.com">
        </label>
        <label>Password
          <input type="password" placeholder="Password">
        </label>
        <input id="show-password" type="checkbox">
        <label for="show-password">Show password</label>
        <p>
          <input type="submit" class="button expanded" value="Log in"></input>
        </p>
        <a href='index.php?user=admin'>Fake Log In</a>
        <p class="text-center">
          <a href="#">Forgot your password?</a>
        </p>
      </form>
    </div>

    <?php include_once 'footer.php' ?>
    <?php include_once 'scripts.php'; ?>
  </body>
</html>
