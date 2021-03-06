<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
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
    
  <title>Travel Agency</title>
    <div class="navbar-fixed">
    <nav class="red lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency</a>
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="../home">Головна</a>
            </li>
            <li>
             
  <!-- Dropdown Trigger -->
  <a class='dropdown-trigger btn pink' href='#' data-target='dropdown1'>Інформація про</a>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="../hotels/all">Готелі</a></li>
    <li><a href="../tours/all-by-city">Тури</a></li>
  </ul>
    <li><a href="#contact">Контакти</a></li>
  <!-- Modal Trigger -->
  <li><a class="waves-effect waves-light btn modal-trigger" href="#modal1">Заповнити заяву</a></li>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4><span class="cyan-text text-darken-4">Заповніть заяву і ми вам передзвонимо</span></h4>
       <div class="row">
        <form class="col s12" action="/addForm">
          <div class="row">
            <div class="input-field black-text col s6"> 
              <input type="text" class="validate" id="first_name" value="Горшкова">
              <label for="first_name">Прізвище</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s7"> 
              <input type="text" class="validate" id="name" value="Софія">
              <label for="name">Ім'я</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s8"> 
              <input type="text" class="validate" id="last_name" value="Вячеславівна">
              <label for="last_name">По-батькові</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">phone</i>
              <input type="number" id="phone" value="0988782311">
              <label for="phone">Мобільний телефон</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">mail</i>
              <input type="email" class="validate" id="email" value="gorshkovasofia@gmail.com">
              <label for="email">Email</label>
            </div>
           </div>
           <div class="row">
            <div class="input-field black-text col s12">
              <i class="material-icons large pink-text prefix">description</i>
              <input type="text" id="comment" value="Цікавлять тури в Париж">
              <label for="comment">Коментарі</label>
            </div>
           </div>
          <div class="modal-footer">
          <input type="submit" value="Відправити">
          </div>
         </form> 
    </div>
  </div>
</div>
<!-- -->
          </ul>
        </div>
      </div>
    </nav>
  </div>
 
 <div class="slider">
    <ul class="slides">
      <li>
        <img src="img/tr0.jpg"> 
        <div class="caption left-align">
          <h3>Мандруй разом з нами!</h3>
          <h5 class="light grey-text text-lighten-3">Найкращий сервіс для вас.</h5>
           <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
      <li>
        <img src="img/tr1.jpg"> 
        <div class="caption right-align">
          <h3>Тури в усі куточки світу</h3>
          <h5 class="light grey-text text-lighten-3">Нехай мрія стане реальністю</h5>
          <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
      <li>
        <img src="img/tr2.jpg"> 
        <div class="caption center-align">
          <h3>Не зволікай!</h3>
          <h5 class="light grey-text text-lighten-3">Наважся на мрію.</h5>
          <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
    </ul>
  </div>
          
  <!--JQuery -->
  <script type="text/javascript">
    $(document).ready(function(){
    $('.slider').slider();
  });
    $('.dropdown-trigger').dropdown();
    $(document).ready(function(){
    $('.modal').modal();
  });
    $(document).ready(function(){
    $('select').formSelect();
  });
    $(document).ready(function(){
    $('.datepicker').datepicker();
  });
  </script>
  <!-- Section: Popular -->
  <section id="popular" class="section section-popular scrollspy">
    <div class="container">
      <div class="row">
        <h4 class="center">
          <span class="teal-text">Популярні тури</span> </h4>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="img/c4.jpg" alt="">
              <span class="card-title">Стамбул</span>
            </div>
            <div class="card-content">
              <p>Стародавнє місто Стамбул з його історією та незабутньою культурою. Заворожує та дарує справжі відпочино тілом і душею.
              </p>
              <div class="card-action">
          <a href="TODO">Перейти</a>
        </div>
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="img/c1.jpg" alt="">
              <span class="card-title">Париж</span>
            </div>
            <div class="card-content">
              <p>Місто кохання та щасливих людей! Опинившись тут ише один раз, Париж назавжди залишить свій романтичний слід у вашому серці.
              </p>
              <div class="card-action">
          <a href="TODO">Перейти</a>
        </div>
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="img/c2.jpg" alt="">
              <span class="card-title">Лондон</span>
            </div>
            <div class="card-content">
              <p>Чудовий,п`янкий Лондон - серце Великобританії. Різномаїття культур, насичена історія, домашні кафе - все це ви зустрінете саме в Лондоні.
              </p>
              <div class="card-action">
          <a href="TODO">Перейти</a>
        </div>
            </div>
          </div>
        </div>
      </div>
        </div>
  </section>
<!-- Search Form -->
<div class="row">
<section id="search" class="section-search scrollspy">
  <div class="container">
    <div class="row">
      <form class="col s12 m7" action="../tours/searchTours" method="get">
        <div class="card-panel grey-text">
          <h4>Пошук туру</h4>
  <div class="input-field punkt-default">
    <select name="airport">
      <option value="" disabled selected>Оберіть</option>
        <c:forEach items="${departureAirports}" var="airportName">
            <option value="${airportName}">${airportName}</option>
        </c:forEach>
    </select>
    <label>Місто вильоту</label>
  </div>
 <div class="input-field punkt-default">
    <select name="city">
      <option value="" disabled selected>Оберіть</option>
        <c:forEach items="${cityNames}" var="cityName">
            <option value="${cityName}">${cityName}</option>
        </c:forEach>
    </select>
    <label>Пункт призначення</label>
  </div>
  <select name="price" class="price-default">
    <option value="" disabled selected>Ціна до</option>
    <option value="500">500 $</option>
    <option value="2000">2000 $</option>
    <option value="4000">4000 $</option>
  </select>
  <select name="stars" class="hotel-default">
    <option value="" disabled selected>Тип готелю</option>
    <option value="3">3*</option>
    <option value="4">4*</option>
    <option value="5">5*</option>
  </select>
  <select name="food" class="meal-default">
    <label>Тип харчування</label>
    <option value="" disabled selected>Будь-яке харчування</option>

      <c:forEach items="${foodTypes}" var="foodType">
          <option value="${foodType}">${foodType}</option>
      </c:forEach>

  </select>
   <div class="input-field data-default">
      <input  name="date" type="text" class="datepicker">
    <label>Дата вильоту</label>
    </div> 
    <div class="modal-footer">
    <input type="submit" value="Пошук">
  </div>
  </div>
</form>
</div>
</div>
</section>
</div>
</body>
  <!-- Footer -->
  <footer class="page-footer">
    <section id="contact" class="section section-contact scrollspy">
    <div class="container">
      Контакти
    </div>
    <div class="container">
    вул. Григорія Сковороди 10
    </div>
    <div class="container">
    Деталі за телефоном: +380988782311
    </div> 
  </section>
    <div class="footer-copyright">
    <div class="container">
    © 2018 Copyright Travel Agency
     </div>
   </div>
 </footer>
</html>