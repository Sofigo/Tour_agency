<%@ page contentType="text/html;charset=UTF-8" %>
<DOCTYPE! html>
<html>
 <head>
     <!--Import Google Icon Font-->
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <!--Import materialize.css-->
     <!-- Compiled and minified CSS -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
     <!--Let browser know website is optimized for mobile-->
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
      <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    <script src="C:\materialize-v1.0.0-beta\materialize\js\materialize.min.js"></script>
    
  <title>Admin</title>
    <div class="navbar-fixed">
    <nav class="light-green lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency | Адміністратор</a>
          <a href="#!" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="index.html">Головна</a>
            </li>
           

  <!-- Dropdown Trigger -->
  <li><a class='dropdown-trigger btn indigo darken-2' href='#' data-target='dropdown1'>Заяви</a></li>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="new_forms.html">Нові</a></li>
    <li><a href="ready_forms.html">Оброблені</a></li>
      </ul>
        <li><a href="#!">Вихід</a></li>
      </ul>

    </div>
  </div>
</nav>
</div>
  <!-- Заяви -->
  <div class="row">
  <table>
        <thead>
          <tr>
              <th>Прізвище</th>
              <th>Ім'я</th>
              <th>По-батькові</th>
              <th>ТЕЛЕФОН</th>
              <th>Email</th>
              <th>Коментарі</th>

          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Петренко</td>
            <td>Петро</td>
             <td>Петрович</td>
            <td>0988782312</td>
            <th>petya@hotmail.com</th>
            <th>Цікавлять тури в Парижі</th>
          </tr>
          <tr>
            <td>Іваненко</td>
            <td>Іван</td>
             <td>Іванович</td>
            <td>0951775530</td>
            <th>ivan253@hotmail.com</th>
            <th>Цікавлять тури в Стамбулі</th>
          </tr>
          <tr>
            <td>Юхименко</td>
            <td>Людмила</td>
            <td>Степанівна</td>
            <td>0938302989</td>
            <th>step121@gmail.com</th>
            <th>Цікавлять тури в Лондоні</th>
          </tr>
        </tbody>
      </table>
      </div>
<!--JQuery -->
  <script type="text/javascript">
    $('.dropdown-trigger').dropdown();
    $(document).ready(function(){
  });
  </script>
</body>
<!-- Footer -->
  <footer class="page-footer light-green lighten-3">
          <div class="container">
            <div class="row">
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2018 Copyright Travel Agency
            </div>
          </div>
        </footer>
</html>