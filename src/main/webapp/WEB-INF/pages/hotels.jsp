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
              <a href="index.jsp">Головна</a>
            </li>
           

  <!-- Dropdown Trigger -->
  <li><a class='dropdown-trigger btn pink' href='#' data-target='dropdown1'>Інформація про</a></li>
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="hotels.jsp">Готелі</a></li>
    <li><a href="tours.jsp">Тури</a></li>
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
          <a href="#!" class="modal-action modal-close btn waves-effect waves-blue">Відправити</a>
          </div>
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
  <!--Hotel 1-->
  <div class="row">
  <div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot1.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Soko" 4 зірки<i class="material-icons right">more_vert</i></span>
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
      </table></p>
    </div>
</div>
</div>
<!-- Hotel 2 -->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot7.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Pestana" 3 зірки<i class="material-icons right">more_vert</i></span>
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
            <td>250 $</td>
            <td>1 місце</td>
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
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot8.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Madeira" 3 зірки<i class="material-icons right">more_vert</i></span>
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
            <td>100 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 4 -->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot9.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Boma" 5 зірок<i class="material-icons right">more_vert</i></span>
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
            <td>220 $</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>          
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 5-->
<div class="row">
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot10.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Hotel de Louvre" 5 зірок<i class="material-icons right">more_vert
</i></span>
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
            <td>Сніданок-обід</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>250$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>400$</td>
            <td>4 місця</td>
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
<!--Hotel 6-->
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot11.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Le saint Paris" 4 зірки<i class="material-icons right">more_vert</i></span>
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
            <td>180 $</td>
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
            <td>Обід</td>
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
<!--Hotel 7-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot3.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Shereeton" 5 зірок<i class="material-icons right">more_vert</i></span>
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
            <td>130 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
          <tr>
            <td>180$</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>330$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>1600$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 8-->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot12.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"New York" 4 зірки<i class="material-icons right">more_vert
      </i>
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
            <td>130 $</td>
            <td>1 місце</td>
            <td>Обід</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місця</td>
            <td>Все включено</td>
          </tr>
          <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>4 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>1200$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
  </div>
</div>
</div>
</div>
<!--Hotel 9-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot5.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Mercure" 5 зірок<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Лондон<i class="material-icons right">close</i></span>
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
            <td>100 $</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>230$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>280$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>450$</td>
            <td>4 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>1300$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 10-->
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot13.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Le Meridien Picadilly" 5 зірок<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Лондон<i class="material-icons right">close</i></span>
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
            <td>200 $</td>
            <td>1 місце</td>
            <td>Сніданок-обід</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>300$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>400$</td>
            <td>2 місця</td>
            <td>Сніданок-обід</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Сніданок</td> 
          </tr>
          <tr>
            <td>1700$</td>
            <td>Пентхауз</td>
            <td>Все включено</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 11-->
  <div class="row">
  <div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot14.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Grange St Pauls" 4 зірки<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Лондон<i class="material-icons right">close</i></span>
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
            <td>250 $</td>
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
            <td>320$</td>
            <td>2 місця</td>
            <td>Сніданок-вечеря</td>
          </tr>
          <tr>
            <td>400$</td>
            <td>2 місця</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>700$</td>
            <td>4 місця</td>
            <td>Все включено</td>
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
<!-- Hotel 12 -->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot15.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"aLoft" 5 зірок<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Лондон<i class="material-icons right">close</i></span>
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
            <td>250$</td>
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
            <td>800$</td>
            <td>4 місця</td>
            <td>Сніданок-вечеря</td>
          </tr>
           <tr>
            <td>1500$</td>
            <td>Пентхауз</td>
            <td>Обід</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
</div>
</div>
</div>
<!--Hotel 13-->
<div class="row">
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot2.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Hilton" 5 зірок<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Стамбул<i class="material-icons right">close</i></span>
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
            <td>350 $</td>
            <td>1 місце</td>
            <td>Сніданок-обід</td>
          </tr>
        </tbody>
          <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
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
            <td>4 місця</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>1500$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 14 -->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot4.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Plaza" 4 зірки<i class="material-icons right">more_vert</i></span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Стамбул<i class="material-icons right">close</i></span>
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
            <td>400 $</td>
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
            <td>600$</td>
            <td>4 місця</td>
            <td>Сніданок</td>
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
<!--Hotel 15-->
<div class="row">
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot6.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Family" 4 зірки<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Стамбул<i class="material-icons right">close</i></span>
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
            <td>1 місце</td>
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
            <td>1000$</td>
            <td>Пентхауз</td>
            <td>Сніданок-обід</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 16-->
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot16.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Glorious" 5 зірок<i class="material-icons right">more_vert</i>
</span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Стамбул<i class="material-icons right">close</i></span>
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
            <td>180 $</td>
            <td>1 місце</td>
            <td>Сніданок-обід</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
            <td>Обід-вечеря</td>
          </tr>
          <tr>
            <td>350$</td>
            <td>1 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Обід</td> 
          </tr>
          <tr>
            <td>900$</td>
            <td>Пентхауз</td>
            <td>Обід</td> 
          </tr>
        </tbody>
      </table></p>
</div>
</div>
</div>
</div>
<!--Hotel 17-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot17.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"St Regis" 4 зірок<i class="material-icons right">more_vert</i>
</span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Дубаї<i class="material-icons right">close</i></span>
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
            <td>1 місце</td>
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
<!--Hotel 18-->
<div class="row">
  <div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot18.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Le Royal Meridien" 5 зірок<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Дубаї<i class="material-icons right">close</i></span>
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
            <td>170 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місце</td>
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
<!--Hotel 19-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot19.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Ajman" 4 зірки<i class="material-icons right">more_vert</i>
</span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Дубаї<i class="material-icons right">close</i></span>
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
            <td>750$</td>
            <td>4 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>1600$</td>
            <td>Пентхауз</td>
            <td>Все включено</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 20-->
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot20.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Four Points" 4 зірки<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Дубаї<i class="material-icons right">close</i></span>
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
            <td>160 $</td>
            <td>1 місце</td>
            <td>Сніданок-вечеря</td>
          </tr>
        </tbody>
          <tr>
            <td>200$</td>
            <td>1 місця</td>
            <td>Все включено</td>
          </tr>
          <tr>
            <td>500$</td>
            <td>4 місце</td>
            <td>Все включено</td>
          </tr>
           <tr>
            <td>300$</td>
            <td>2 місця</td>
            <td>Сніданок</td>
          </tr>
           <tr>
            <td>450$</td>
            <td>4 місця</td>
            <td>Сніданок</td> 
          </tr>
          <tr>
            <td>900$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 21-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot21.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"St Regis" 5 зірок<i class="material-icons right">more_vert</i>
</span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Балі<i class="material-icons right">close</i></span>
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
            <td>250 $</td>
            <td>1 місце</td>
            <td>Сніданок</td>
          </tr>
        </tbody>
          <tr>
            <td>300$</td>
            <td>2 місця</td>
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
            <td>750$</td>
            <td>4 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>1600$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
<!--Hotel 22-->
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot22.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Belissimo" 5 зірок<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Балі<i class="material-icons right">close</i></span>
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
            <td>220$</td>
            <td>1 місце</td>
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
            <td>450$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>900$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
<!--Hotel 23-->
<div class="row">
<div class="row">
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot23.jpg">
    </div>
    <div class="card-content">
<span class="card-title activator grey-text text-darken-4">"Heritage" 5 зірок<i class="material-icons right">more_vert</i>
</span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Балі<i class="material-icons right">close</i></span>
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
<!--Hotel 24-->
<div class="col s6">
  <div class="card">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="img/hot24.jpg">
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">"Four seasons" 4 зірки<i class="material-icons right">more_vert</i>
      </span>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Балі<i class="material-icons right">close</i></span>
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
            <td>Обід</td>
          </tr>
           <tr>
            <td>350$</td>
            <td>2 місця</td>
            <td>Все включено</td> 
          </tr>
          <tr>
            <td>800$</td>
            <td>Пентхауз</td>
            <td>Сніданок-вечеря</td> 
          </tr>
        </tbody>
      </table></p>
    </div>
  </div>
</div>
</div>
</div>
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

