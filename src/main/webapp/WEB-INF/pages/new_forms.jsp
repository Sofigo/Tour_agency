<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<DOCTYPE! html>
<html>
 <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="/materialize/css/materialize.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
      <!-- Compiled and minified JavaScript -->
    <script src="../materialize/js/materialize.min.js"></script>
    
  <title>Admin</title>
 
    <div class="navbar-fixed">
    <nav class="light-green lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency | Адміністратор</a>
          <a href="#!" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="../index.jsp">Головна</a>
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
          </tr>
        </thead>

        <tbody>
            <c:forEach items="${newApplications}" var="application">
                <tr>
                    <td>${application.surname}</td>
                    <td>${application.name}</td>
                    <td>${application.patronymic}</td>
                    <td>${application.phoneNumber}</td>
                    <td>${application.email}</td>
                </tr>
            </c:forEach>
        </tbody>




      </table>
      </div>


    
     <!-- Modal Trigger -->
 

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