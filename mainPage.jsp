<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <link rel="stylesheet" href="./css/login.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <title>Sign in</title>
</head>

<body>
  <div class="main">
    <p class="sign" align="center">Sign in</p>
    <form class="form1">
      <input class="un " type="text" align="center" placeholder="Username" id="userName">
      <input class="pass" type="password" align="center" placeholder="Password">
      <div id="container">
      <a class="submit" align="center" id="signInBtn" href="./mapPage.jsp">Sign in</a>
      <a class="submit" align="center" id="signUnBtn" href="./signup.jsp" >Create an account</a>
      </div>
      <p class="forgot" align="center"><a href="#">Forgot Password?</p>    
    </div>
    <script src="./js/login.js"></script>
</body>

</html