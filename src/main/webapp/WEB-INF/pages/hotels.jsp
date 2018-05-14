<DOCTYPE! html>
<html>
 <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="C:\materialize-v1.0.0-beta\materialize\css\materialize.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
      <!-- Compiled and minified JavaScript -->
    <script src="C:\materialize-v1.0.0-beta\materialize\js\materialize.min.js"></script>
    
  <title>Hotels</title>
 
    <div class="navbar-fixed">
    <nav class="red lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency | Готелі</a>
          <a href="#!" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="index.html">Головна</a>
            </li>
           

  <!-- Dropdown Trigger -->
  <li><a class='dropdown-trigger btn pink' href='#' data-target='dropdown1'>Пошук</a></li>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="hotels.html">Готелі</a></li>
    <li><a href="tours.html">Тури</a></li>
  </ul>
 <li><a class="waves-effect waves-light btn modal-trigger" href="#modal1">Заповнити заяву</a></li>
    
    
      <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4><span class="cyan-text text-darken-4">Заповніть заяву і ми вам передзвонимо</span></h4>
       <div class="row">
        <form class="col s12">
          <div class="row">
            <div class="input-field black-text col s6"> 
              <input type="text" class="validate" id="first_name">
              <label for="first_name">Прізвище</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s7"> 
              <input type="text" class="validate" id="name">
              <label for="first_name">Ім'я</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s8"> 
              <input type="text" class="validate" id="last_name">
              <label for="first_name">По-батькові</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">phone</i>
              <input type="text" id="phone">
              <label for="phone">Мобільний телефон</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">mail</i>
              <input type="email" class="validate" id="email">
              <label for="email">Email</label>
            </div>
           </div>
           <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">description</i>
              <input type="email" class="validate" id="email">
              <label for="email">Коментарі</label>
            </div>
           </div>
        </form>
    </div>
  </div>
    <div class="modal-footer">
    <a href="#!" class="modal-action modal-close btn waves-effect 
    waves-blue">Відправити</a>
  </div>
</div>
</ul>
</div>
</div>
</nav>
</div>
<!--JQuery -->
  <script type="text/javascript">
    $('.dropdown-trigger').dropdown();
    $(document).ready(function(){
    $('.modal').modal();
  });
  </script>
  <!-- Hotels description -->
  <!--Hotel 1-->
  <div class="row">
  <div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot1.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Family" 4 зірки<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Португалія<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Ціна</th>
              <th>Тип кімнати</th>
              <th>Тип харчування</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>300 $</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
          <tr>
            <td>500$</td>
            <td>2 місця</td>
            <td>Все включено</td>
          </tr>
          <tr>
            <td>400$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>700$</td>
            <td>Люкс</td>
            <td>Сніданок-вечеря</td>
          </tr>
           <tr>
            <td>1000$</td>
            <td>Пентхауз</td>
            <td>Все включено</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 2-->
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot2.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Plaza" 5 зірок<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Malta<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Ціна</th>
              <th>Тип кімнати</th>
              <th>Тип харчування</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>300 $</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
        </tbody>
          <tr>
            <td>300$</td>
            <td>1 місце</td>
            <td>Сніданок-обід</td>
          </tr>
          <tr>
            <td>500$</td>
            <td>2 місця</td>
            <td>Сніданок-обід</td>
          </tr>
          <tr>
            <td>500$</td>
            <td>2 місця</td>
            <td>Сніданок-вечеря</td>
          </tr>
           <tr>
            <td>1000$</td>
            <td>Люкс</td>
            <td>Сніданок-вечеря</td>
          </tr>
           <tr>
            <td>1500$</td>
            <td>Пентхауз</td>
            <td>Все включено</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 3-->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot3.jpg">
    </div>
    <div class="card-content">

      <span class="card-title activator grey-text text-darken-4">"Paradise" 4 зірки<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Париж<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Ціна</th>
              <th>Тип кімнати</th>
              <th>Тип харчування</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>150 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місця</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>300$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>600$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 4-->
<div class="row">
      <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot4.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Malboro" 4 зірки<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Нью Йорк<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Ціна</th>
              <th>Тип кімнати</th>
              <th>Тип харчування</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>150 $</td>
            <td>1 місце</td>
            <td>Сніданок-обід</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місця</td>
            <td>Обід-вечеря</td>
          </tr>
          <tr>
            <td>250$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>250$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>500$</td>
            <td>Пентхауз</td>
            <td>Все включено</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
</div>
</div>
<!--Hotel 5-->
<div class="row">
      <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot5.jpg">
    </div>
    <div class="card-content">

      <span class="card-title activator grey-text text-darken-4">"Mercure" 4 зірки<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Париж<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Ціна</th>
              <th>Тип кімнати</th>
              <th>Тип харчування</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>150 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місця</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>300$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>600$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
</body>
<!-- Footer -->
  <footer class="page-footer">
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

