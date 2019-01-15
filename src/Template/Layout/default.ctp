<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ordenanzas : Municipalidad de Victoria, Entre Rios</title>
    <meta name="description" content="Ordenanzas de la Municipalidad de Victoria, Entre Rios">
    <meta name="author" content="Sidney Rees <contacto@sidneyrees.com>">
    <link rel="shortcut icon" href="<?= $this->Url->build('/', true) ?>img/favicon.ico">
    
    <!-- Nav and address bar color -->
    <meta name="theme-color" content="#0072b8">
    <meta name="msapplication-navbutton-color" content="#0072b8">
    <meta name="apple-mobile-web-app-status-bar-style" content="#0072b8">
    
    <?php
    echo $this->Html->CSS('roboto-fontface');
    echo $this->Html->CSS('bootstrap');
    echo $this->Html->CSS('font-awesome.min');
    echo $this->Html->CSS('poncho');
    ?>
</head>

  <body>

    <header>
      <nav class="navbar navbar-top navbar-default" role="navigation">
        <div class="container">
          <div>
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<?= $this->Url->build('/', true) ?>">
                <img alt="Brand" src="<?= $this->Url->build('/', true) ?>img/logo.png" height="50">
                <h1 class="sr-only">Honorable Concejo Deliberante <small>Victoria, Entre Rios</small>
                </h1>
              </a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar-collapse">
              <ul class="nav navbar-nav navbar-right" style="margin-right: -15px">
                <li><a href="<?= $this->Url->build('/', true) ?>admin/login">Ingresar</a></li>
              </ul>
            </div>
    
            <!-- SEARCH FORM -->
            <div id="search_wrapper" class="col-sm-6 col-sm-offset-3">
              <span class="bg-primary">en: Modernización</span>
              <div class="input-group stylish-input-group">
                <input type="text" class="form-control" placeholder="Buscar trámites, servicios o áreas">
                <span class="input-group-addon">
                  <button type="submit">
                    <span class="glyphicon glyphicon-search"></span>
                  </button>
                </span>
              </div>
            </div>
          </div>
        </div>
      </nav>
    </header>
    
    <main role="main">
        
        <section class="jumbotron" style="background-image: url('<?= $this->Url->build('/', true) ?>img/modernizacion.jpg');">
            <div class="jumbotron_bar">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      
                      <ul class="list-inline pull-left">
                        <li><a href="<?= $this->Url->build('/', true) ?>ordenanzas" class="search"><i class="glyphicon glyphicon-search"></i>Buscar ordenanza</a></li>
                        <li><a href="http://www.victoria.gob.ar/">Institucional</a></li>
                      </ul>
                      
                      <ol class="breadcrumb pull-right">
                        <?php 
                            $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
                            $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                        ?>
                        <li class="active">Última actualización: <?= $dias[$latest_updated->format('w')]." ".$latest_updated->format('d')." de ".$meses[$latest_updated->format('n')-1]. " del ".$latest_updated->format('Y') . ', a las '.$latest_updated->format('H:i') .' horas.'?></li>
                      </ol>
                    </div>
                  </div>
                </div>
            </div>
            
            <div class="jumbotron_body">
                <div class="container">
                  <div class="row">
                    <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                      <h1>Ordenanzas municipales</h1>
                      <p>En este sitio podrá consultar, de forma simple y rápida, todas las ordenanza municipales <u>actualizadas</u>.</p>
                    </div>
                  </div>
                </div>
            </div>
            <div class="overlay"></div>
        </section>
        
        <section>
            <article class="container">
                <div class="row">
                    <div class="col-md-12">
                        <?=$this->Flash->render()?>
                        <?=$this->Flash->render('auth')?>
                        <?=$this->fetch('content')?>
                    </div>
                </div>
            </article>
        </section>
        
        <section class="modulo-contacto">
          <div class="container">
            <div class="row">
              <div class="col-xs-12 col-sm-6">
                  <h2 class="h3 section-title">Datos de Contacto</h2>
                  <div>
                    <h5>Sr. J Alcides Risso</h5>
                    <p>Presidente del Concejo Deliberante</p>
                    <p class="margin-40">
                      <strong>Dirección:</strong> Ezpleleta y Sarmiento
                      (planta alta del palacio municipal)<br>
                      <strong>Teléfono:</strong> (03436) 422577<br>
                      <strong>Correo electrónico:</strong> <a href="presidenciahcdmdv@gmail.com">presidenciahcdmdv@gmail.com</a>
                    </p>
                  </div>
              </div>
              <div class="col-xs-12 col-sm-6">
                <div>
                  <h2 class="h3 section-title">Envianos tu consulta</h2>
                  <form>
                    <div class="form-group">
                      <label class="text-muted">Escribí tu consulta al Honorable Concejo Deliberante</label>
                      <textarea class="form-control" rows="3" placeholder=""></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Enviar mi consulta</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </section>
        
    </main>
    
    <footer class="main-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <img class="image-responsive" alt="Argentina.gob.ar - Presidencia de la Nación" src="<?= $this->Url->build('/', true) ?>img/logo.png">
          </div>
          <div class="col-sm-6">
            <p class="text-muted small">Los contenidos de Argentina.gob.ar están licenciados bajo <a href="https://creativecommons.org/licenses/by/2.5/ar/">Creative Commons Reconocimiento 2.5 Argentina License</a></p>
            <br>
            <p class="text-muted small">Desarrollo web <abbr title="Ad honorem es una locución latina que se usa para caracterizar cualquier actividad que se lleva a cabo sin percibir ninguna retribución económica. Literalmente, significa 'por la honra, el prestigio o la satisfacción personal que la tarea brinda'.">ad honorem</abbr> por <a href="https://www.sidneyrees.com">Sidneyrees.com</a></p>
          </div>
        </div>
      </div>
    </footer>

    <script src="//code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <?= $this->Html->Script('bootstrap.min') ?>
  </body>
</html>
