
<?php
$this->assign('title', __('Laws'));
$this->Html->addCrumb(__('Laws'));
$this->loadHelper('Search');

$this->Html->css('//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/css/bootstrap-datepicker3.min.css', ['block' => true]);
$this->Html->script('//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/js/bootstrap-datepicker.min.js', ['block' => true]);
$this->Html->scriptBlock('
    $("#created").datepicker({autoclose: true,todayHighlight: true});
    $("#modified").datepicker({autoclose: true,todayHighlight: true});
', ['block' => true]);
?>

<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                
                <div class="pull-right card-action">
                    <div class="btn-group" role="group" aria-label="...">
                        <?= $this->Html->link('<i class="fa fa-plus"></i>', ['action' => 'add'], ['class' => 'btn btn-success', 'escape' => false])?>&nbsp; 
                        <?= $this->Html->link('<i class="fa fa-refresh"></i>', ['action' => 'index'], ['class' => 'btn btn-default', 'escape' => false])?>
                    </div>
                </div>
                <h1 style="margin-bottom: 0">Normas</h1>
                
<?php 
$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
$meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
?>
<span style="font-size: 0.85em">Última actualización realizada el día <?= $dias[$latest_updated->format('w')]." ".$latest_updated->format('d')." de ".$meses[$latest_updated->format('n')-1]. " del ".$latest_updated->format('Y') . ', a las '.$latest_updated->format('H:i') .' horas' ?></span><br /><br />
                
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" cellspacing="0" width="100%">
                    <thead>
                        <?= $this->Search->generate([
                            ['number', ['type' => 'number', 'placeholder' => __('Número =')]],
                            ['name', ['placeholder' => __('Nombre =')]], 
                            ['bulletin', ['type' => 'text', 'placeholder' => __('Boleting oficial #=')]], 
                            [
                                'Buscar', ['type' => 'submit', 'class' => 'btn btn-primary', 'style' => 'margin: 0px']
                        ]])?>
                        <!-- tr>
                            <th><?= $this->Paginator->sort('number') ?></th>
                            <th><?= $this->Paginator->sort('name') ?></th>
                            <th><?= $this->Paginator->sort('bulletin') ?></th>
                            <th></th>
                        </tr -->
                    </thead>
                    <tbody>

                        <?php
                        if($laws->count() == 0):
                        ?>
                            <tr>
                                <td colspan="7" class="text-center"><?= __('No data found')?></td>
                            </tr>
                        <?php endif;?>

                        <?php foreach ($laws as $law): ?>
                        <tr>

                            <td><?= $normative_types[$law->type] ?> Nº<?= h($law->number) ?></td>
                            <td><?= h($law->name) ?></td>
                            <td><?= !empty($law->bulletin) ? $this->Html->link('B.O. #'. $law->bulletin, 'http://servicios.infoleg.gob.ar/infolegInternet/verBoletin.do?fechaNro=nro&id='. $law->bulletin, ['target'=>'_blank']) : '' ?></td>
                            <td>
                                <?= $this->Html->link('<i class="fa fa-search"></i> Ver', ['action' => 'view', $law->id], ['class' => 'btn btn-primary  btn-sm', 'escape' => false])?>&nbsp;
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <ul class="pagination pagination-sm pull-right">
                    <?= $this->Paginator->prev() ?>
                    <?= $this->Paginator->numbers() ?>
                    <?= $this->Paginator->next() ?>
                </ul>
                <p><?= $this->Paginator->counter() ?></p>
            </div>
        </div>
    </div>
</div>