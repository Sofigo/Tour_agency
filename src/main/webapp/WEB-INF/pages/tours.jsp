<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
  <title>Tours</title>
 
    <div class="navbar-fixed">
    <nav class="cyan">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency | Тури</a>
          <a href="#!" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="../home">Головна</a>
            </li>
           

  <!-- Dropdown Trigger -->
  <li><a class='dropdown-trigger btn pink' href='#' data-target='dropdown1'>Інформація про</a></li>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="../hotels/all">Готелі</a></li>
    <li><a href="../tours/all-by-city">Тури</a></li>
  </ul>
  <li><a href="#contact">Контакти</a></li>
  <li><a class="waves-effect waves-light btn modal-trigger" href="#modal1">Заповнити заяву</a></li>
    
    <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4><span class="cyan-text text-darken-4">Заповніть заяву і ми вам передзвонимо</span></h4>
       <div class="row">
        <form class="col s12" action="#!">
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
<!--JQuery -->
  <script type="text/javascript">
    $('.dropdown-trigger').dropdown();
    $(document).ready(function(){
    $('.modal').modal();
  });
  </script>

<c:forEach items="${cities}" var="city" varStatus="myIndex">
  <c:if test = "getCategoryIndex(${myIndex.index}) % 2 == 0">
      <div class="row">
  </c:if>

    <div class="col s6">
        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="../${city.image}">
            </div>
            <div class="card-content">
                <span class="card-title activator grey-text text-darken-4">${city.name}<i class="material-icons right">more_vert</i></span>
                <p>* ціна - це вся вартість за тур. Сюди входить вартість перельоту, харчування та проживання</p>
            </div>
            <p class="card-reveal">
                <span class="card-title grey-text text-darken-4">Наявні тури ${city.name}<i class="material-icons right">close</i></span>
                <p>
                <table>
                <thead>
                <tr>
                    <th>Місто вильоту</th>
                    <th>Дата вильоту</th>
                    <th>Кількість ночей</th>
                    <th>Кількість людей</th>
                    <th>Тип харчування</th>
                    <th>Готель</th>
                    <th>Ціна*</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${city.hotels}" var="hotel">
                    <c:forEach items="${hotel.tours}" var="tour">
                        <tr>
                            <th>${tour.departureAirport}</th>
                            <td>${tour.departureDate}</td>
                            <td>${tour.nightsAmount}</td>
                            <td>${tour.adultsAmount}</td>
                            <td>${tour.foodType}</td>
                            <td>${hotel.name}</td>
                            <td>${tour.price}</td>
                        </tr>
                    </c:forEach>

                </c:forEach>
                </tbody>
            </table>


  </div>
  </div>
  </div>
      <c:if test = "getCategoryIndex(${myIndex.index}) % 2 == 1">
          </div>
        </c:if>

</c:forEach>

  <!-- City description -->
  <!--City 1-->
  <div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/c1.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Париж<i class="material-icons right">more_vert</i></span>
      <p>* ціна - це вся вартість за тур. Сюди входить вартість перельоту, харчування та проживання</p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Наявні тури  Париж<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Місто вильоту</th>
              <th>Дата вильоту</th>
              <th>Кількість ночей</th>
              <th>Кількість людей</th>
              <th>Тип харчування</th>
              <th>Готель</th>
              <th>Ціна*</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th>Бориспіль</th>
            <td>12.06.2018</td>
            <td>7</td>
            <td>2</td>
            <td>Все включено</td>
            <td>Hotel de Louvre</td>
            <td>2450$</td>
          </tr>
        </tbody>
          <tr>
            <th>Бориспіль</th>
            <td>19.06.2018</td>
            <td>10</td>
            <td>1</td>
            <td>Сніданок</td>
            <td>Le Saint Paris</td>
            <td>2000$</td>
          </tr>
          <tr> 
            <th>Жуляни</th>
            <td>20.06.2018</td>
            <td>5</td>
            <td>2</td>
            <td>Сніданок-вечеря</td>
            <td>Shereeton</td>
            <td>3000$</td>
          </tr>
          <tr>
            <td>Львів</td>
            <td>23.07.2018</td>
            <td>7</td>
            <td>2</td>
            <td>Все включено</td>
            <td>New York</td>
            <td>3000$</td>
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>

<!--City 2-->
  <div class="col s6 ">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/c2.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Лондон<i class="material-icons right">more_vert</i></span>
      <p>* ціна - це вся вартість за тур. Сюди входить вартість перельоту, харчування та проживання</p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Наявні тури в Лондоні<i class="material-icons right">close</i></span>
      <p><table>
        <thead>
          <tr>
              <th>Місто вильоту</th>
              <th>Дата вильоту</th>
              <th>Кількість ночей</th>
              <th>Кількість людей</th>
              <th>Тип харчування</th>
              <th>Готель</th>
              <th>Ціна</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th>Бориспіль</th>
            <td>21.05.2018</td>
            <td>7</td>
            <td>3</td>
            <td>Все включено</td>
            <td>Mercure</td>
            <td>2350$</td>
          </tr>
        </tbody>
          <tr>
            <th>Жуляни</th>
            <td>29.05.2018</td>
            <td>10</td>
            <td>1</td>
            <td>Сніданок-обід</td>
            <td>La Meridien Picadilly</td>
            <td>2050$</td>
          </tr>
          <tr>
            <th>Жуляни</th>
            <td>30.05.2018</td>
            <td>5</td>
            <td>2</td>
            <td>Сніданок-вечеря</td>
            <td>Grange St Pauls</td>
            <td>3300$</td>
          </tr>
          <tr>
            <th>Львів</th>
            <td>01.07.2018</td>
            <td>7</td>
            <td>2</td>
            <td>Все включено</td>
            <td>aLoft</td>
            <td>3500$</td>
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>


</body>
<!-- Footer -->
  <footer class="page-footer cyan">
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
