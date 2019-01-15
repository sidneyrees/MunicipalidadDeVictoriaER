
<?php
$this->assign('title', __('Chapters'));
$this->Html->addCrumb(__('Chapters'));
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
                <div class="card-title">
                    <div class="title">
                        <?=__('List Chapter')?>
                    </div>
                </div>
                <div class="pull-right card-action">
                    <div class="btn-group" role="group" aria-label="...">
                        <?= $this->Html->link('<i class="fa fa-plus"></i>', ['action' => 'add'], ['class' => 'btn btn-success', 'escape' => false])?>&nbsp;
                        <?= $this->Html->link('<i class="fa fa-refresh"></i>', ['action' => 'index'], ['class' => 'btn btn-default', 'escape' => false])?>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="actions"><?= __('Actions') ?></th>
                            <th><?= $this->Paginator->sort('id') ?></th>
                            <th><?= $this->Paginator->sort('law_id') ?></th>
                            <th><?= $this->Paginator->sort('name') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?= $this->Search->generate([
                            [
                                'Buscar', ['type' => 'submit', 'class' => 'btn btn-primary', 'style' => 'margin: 0px']
                            ],
            ['id'],['law_id'],['name'],                        ])?>
                        <?php
                        if($chapters->count() == 0):
                        ?>
                            <tr>
                                <td colspan="4" class="text-center"><?= __('No data found')?></td>
                            </tr>
                        <?php endif;?>

                        <?php foreach ($chapters as $chapter): ?>
                        <tr>
                            <td>
                                <?= $this->Html->link('<i class="fa fa-search"></i>', ['action' => 'view', $chapter->id], ['escape' => false])?>&nbsp;
                                <?= $this->Html->link('<i class="fa fa-edit"></i>', ['action' => 'edit', $chapter->id], ['escape' => false])?>&nbsp;
                                <?= $this->Form->postLink('<i class="fa fa-trash"></i>', ['action' => 'delete', $chapter->id], ['confirm' => __('Are you sure you want to delete # {0}?', $chapter->id), 'escape' => false])?>
                            </td>
                            <td><?= $this->Number->format($chapter->id) ?></td>
                            <td><?= $chapter->has('law') ? $this->Html->link($chapter->law->name, ['controller' => 'Laws', 'action' => 'view', $chapter->law->id]) : '' ?></td>
                            <td><?= h($chapter->name) ?></td>
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
