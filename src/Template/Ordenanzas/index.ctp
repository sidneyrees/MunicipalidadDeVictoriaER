<?php
$this->assign('title', __('Laws'));
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
            <div class="card-body">
                <table class="table table-bordered table-striped" cellspacing="0" width="100%">
                    <thead>
                        <?= $this->Search->generate([
                            ['number', ['type' => 'number', 'placeholder' => __('number =')]],
                            ['name', ['placeholder' => __('name =')]], 
                            ['bulletin', ['type' => 'text', 'placeholder' => __('bulletin =')]], 
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
                            <td><?= h($law->name) ?><br />Sancionada: <?= h($law->sanction_date) ?></td>
                            <td><?= !empty($law->bulletin) ? $this->Html->link('B.O. #'. $law->bulletin, 'http://servicios.infoleg.gob.ar/infolegInternet/verBoletin.do?fechaNro=nro&id='. $law->bulletin, ['target'=>'_blank']) . '<br />Derogada: '.h($law->promulgated_date) : '' ?></td>
                            <td><?= $this->Html->link('<i class="fa fa-edit"></i> VER', ['action' => 'view', $law->id], ['escape' => false, 'class' => 'btn btn-primary btn-sm'])?></td>
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
