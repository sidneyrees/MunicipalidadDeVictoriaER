
<?php
$this->assign('title', __('Substitutions'));
$this->Html->addCrumb(__('Substitutions'));
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
                <h1 style="margin-bottom: 0">Sustituciones</h1>
            </div>
            <div class="card-body">
                <table class="table table-striped" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th><?= $this->Paginator->sort('id') ?></th>
                            <th><?= $this->Paginator->sort('overwritten_article') ?></th>
                            <th><?= $this->Paginator->sort('new_article') ?></th>
                            <th class="actions"><?= __('Actions') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($substitutions as $substitution):?>
                        <tr>
                            <td><?= $this->Number->format($substitution->id) ?></td>
                            <td><?= h($substitution->overwritten_article) ?></td>
                            <td><?= h($substitution->new_article) ?></td>
                            <td>
                                <?= $this->Html->link('<i class="fa fa-search"></i> Ver', ['action' => 'view', $substitution->id], ['class' => 'btn btn-primary btn-sm','escape' => false])?>&nbsp;
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
