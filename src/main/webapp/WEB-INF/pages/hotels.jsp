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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
    
  <title>Hotels</title>
    <div class="navbar-fixed">
    <nav class="red lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency | Готелі</a>
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
  <!-- Hotels description -->

    <c:forEach items="${hotels}" var="hotel" varStatus="myIndex">
    <div class="row">
      <c:if test = "getCategoryIndex(${myIndex.index}) % 2 == 1">
        <div class="row">
      </c:if>
          <div class="col s6">
            <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="../${hotel.image}">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">"${hotel.name}" ${hotel.starsAmount} зірки<i class="material-icons right">more_vert</i></span>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">${hotel.city.name}<i class="material-icons right">close</i></span>
              <p><table>
              <thead>

              <tr>
                <th>Ціна</th>
                <th>Тип кімнати</th>
                <th>Тип харчування</th>
              </tr>
              </thead>

              <tbody>
              <c:forEach items="${hotel.tours}" var="tour">
                <tr>
                  <td>${tour.price} $</td>
                  <td>${tour.adultsAmount} місць(та)</td>
                  <td>${tour.foodType}</td>
                </tr>

              </c:forEach>

              </tbody>

            </table></p>



        </div>
    </div>
      </div>
    <c:if test = "getCategoryIndex(${myIndex.index}) % 2 == 1">
      </div>
      </c:if>

    </c:forEach>




</body>
<!-- Footer -->
  <footer class="page-footer ">
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

