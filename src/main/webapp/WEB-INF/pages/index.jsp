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
    
  <title>Travel Agency</title>
 
    <div class="navbar-fixed">
    <nav class="red lighten-3">
      <div class="container">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Travel Agency</a>
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
           <ul class="right hide-on-med-and-down">
            <li>
              <a href="index.html">Головна</a>
            </li>
            <li>
             
              <!-- Dropdown Trigger -->
  <a class='dropdown-trigger btn pink' href='#' data-target='dropdown1'>Пошук</a>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="hotels.html">Готелі</a></li>
    <li><a href="#!">Країни</a></li>
  </ul>
    <li><a href="#contact">Контакти</a></li>
     <!-- Modal Trigger -->
  <li><a class="waves-effect waves-light btn modal-trigger" href="#modal1">Заповнити заяву</a></li>

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4><span class="cyan-text text-darken-4">Заповніть заяву і ми вам передзвонимо</span></h4>
       <div class="row">
        <form class="col s12">
          <div class="row">
            <div class="input-field col s6"> 
              <i class="material-icons prefix">account</i>
              <input type="text" class="validate" id="first_name">
              <label for="first_name">ПІБ</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <i class="material-icons large pink-text prefix">phone</i>
              <input type="password" id="password">
              <label for="password">Мобільний телефон</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <i class="material-icons large pink-text prefix">mail</i>
              <input type="email" class="validate" id="email">
              <label for="email">Email</label>
            </div>
           </div>
        </form>
    </div>
  </div>
    <div class="modal-footer">
    <a href="#!" class="modal-action modal-close btn waves-effect 
    waves-blue">Register</a>
  </div>
</div>
          </ul>
        </div>
      </div>
    </nav>
  </div>
 
 <div class="slider">
    <ul class="slides">
      <li>
        <img src="img/tr0.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>Мандруй разом з нами!</h3>
          <h5 class="light grey-text text-lighten-3">Найкращий сервіс для вас.</h5>
          <!--<a href="#" class="btn btn-large">Залишити заявку</a>-->
           <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
      <li>
        <img src="img/tr1.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>Тури в усі куточки світу</h3>
          <h5 class="light grey-text text-lighten-3">Нехай мрія стане реальністю</h5>
          <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
      <li>
        <img src="img/tr2.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
          <button data-target="modal1" class="btn modal-trigger">Заповнити заяву</button>
        </div>
      </li>
    </ul>
  </div>
 
   <!-- Modal Trigger -->
  
          
  <!--JQuery -->
  <script type="text/javascript">
    $(document).ready(function(){
    $('.slider').slider();
  });
    $('.dropdown-trigger').dropdown();
    $(document).ready(function(){
    $('.modal').modal();
  });
  </script>
   
        
  

  <!-- Section: Search 
  <section id="search" class="section section-search teal lighten-3 white-text center scrollspy">
    <nav>
     <div class="nav-wrapper">
      <form>
        <div class="input-field">
          <input id="search" type="search" required>
          <label class="label-icon" for="search"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
    </nav>
   <!-- <div class="container">
      <div class="row">
        <div class="col s12">
          <h3>Знайти тур</h3>
          <div class="input-field">
            <input class="white grey-text autocomplete" placeholder="Aruba, Cancun, etc..." type="text" id="autocomplete-input">
          </div>
        </div>
      </div>
    </div>
  </section>-->

  <!-- Section: Icon Boxes -->
  <section class="section section-icons grey lighten-4 center">
    <div class="container">
      <div class="row">
        <div class="col s12 m4">
          <div class="card-panel">
            <i class="material-icons large  pink-text">room</i>
            <h4>Міста</h4>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem, velit.</p>
            <div class="card-action">
          <a href="cities.html">Перейти</a>
        </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card-panel">
            <i class="material-icons large  pink-text">hotel</i>
            <h4>Готелі</h4>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem, velit.</p>
            <div class="card-action">
          <a href="hotels.html">Перейти</a>
        </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card-panel">
            <i class="material-icons large pink-text">class</i>
            <h4>Відгуки</h4>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem, velit.</p>
            <div class="card-action">
          <a href="#">Перейти</a>
        </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Section: Popular -->
  <section id="popular" class="section section-popular scrollspy">
    <div class="container">
      <div class="row">
        <h4 class="center">
          <span class="teal-text">Popular Places</span> </h4>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="https://image.ibb.co/hbEMux/resort1.jpg" alt="">
              <span class="card-title">Cancun, Mexico</span>
            </div>
            <div class="card-content">
              <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptas aliquid fugiat corporis laudantium, architecto
                delectus?
              </p>
              <div class="card-action">
          <a href="#">Перейти</a>
        </div>
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="https://image.ibb.co/mn1egc/resort2.jpg" alt="">
              <span class="card-title">The Bahamas</span>
            </div>
            <div class="card-content">
              <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptas aliquid fugiat corporis laudantium, architecto
                delectus?
              </p>
              <div class="card-action">
          <a href="#">Перейти</a>
        </div>
            </div>
          </div>
        </div>
        <div class="col s12 m4">
          <div class="card">
            <div class="card-image">
              <img src="https://image.ibb.co/mbCVnH/resort3.jpg" alt="">
              <span class="card-title">Nova Scotia</span>
            </div>
            <div class="card-content">
              <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptas aliquid fugiat corporis laudantium, architecto
                delectus?
              </p>
              <div class="card-action">
          <a href="#">Перейти</a>
        </div>
            </div>
          </div>
        </div>
      </div>
  </section>



  <!-- Section: Gallery -->
  <section id="gallery" class="section section-gallery scrollspy">
    <div class="container">
      <h4 class="center">
        <span class="teal-text">Photo Gallery</span> 
      </h4>
      <div class="row">
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?beach" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?travel" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?nature" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?beach, travel" alt="">
        </div>
      </div>

      <div class="row">
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?beaches" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?traveling" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?bridge" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?boat, travel" alt="">
        </div>
      </div>

      <div class="row">
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?water" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?building" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?trees" alt="">
        </div>
        <div class="col s12 m3">
          <img class="materialboxed responsive-img" src="https://source.unsplash.com/1600x900/?cruise" alt="">
        </div>
      </div>
    </div>
  </section>

  <!-- Section: Contact -->
  <section id="contact" class="section section-contact scrollspy">
    <div class="container">
      <div class="row">
        <div class="col s12 m6">
          <div class="card-panel blue lighten-3 white-text center">
            <i class="material-icons medium">email</i>
            <h5>Contact Us For Booking</h5>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus sed praesentium delectus. Sit, mollitia
              quo. Veniam repellat voluptas ipsum doloremque?</p>
          </div>
          <ul class="collection with-header">
            <li class="collection-header">
              <h4>Контакти</h4>
            </li>
            <li class="collection-item">Travel Agency</li>
            <li class="collection-item">вул. Григорія Сковороди 10</li>
            <li class="collection-item">Деталі за телефоном: +380988782311</li>
          </ul>
        </div>-->

      <!-- <div class="col s12 m6">
          <div class="card-panel grey lighten-3">
            <h5>Заповніть, будь ласка, заяву</h5>
            <div class="input-field">
              <input type="text" placeholder="ПІБ" id="name">
              <label for="name">ПІБ</label>
            </div>
            <div class="input-field">
              <input type="email" placeholder="Email" id="email">
              <label for="email">Email</label>
            </div>
            <div class="input-field">
              <input type="text" placeholder="Телефон (+380)" id="phone">
              <label for="phone">Телефон</label>
            </div>
            <div class="input-field">
              <textarea class="materialize-textarea" placeholder="Коментарі" id="message"></textarea>
              <label for="message">Коментарі</label>
            </div>
            <input type="submit" value="Submit" class="btn">
          </div>
        </div>-->
      </div>
    </div>
  </section>
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