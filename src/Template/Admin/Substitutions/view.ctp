<?php
$this->assign('title', __('View'));
$this->Html->addCrumb(__('Substitutions'), ['controller' => 'Substitutions', 'action' => 'index']);
$this->Html->addCrumb(__('View'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="pull-right card-action">
                    <div class="btn-group" role="group" aria-label="...">
                        <?=$this->Html->link('<i class="fa fa-edit"></i>', ['action' => 'edit', $substitution->id], ['escape' => false, 'class' => 'btn btn-warning'])?>&nbsp;
                        <?=$this->Form->postLink('<i class="fa fa-trash"></i>', ['action' => 'delete', $substitution->id], ['confirm' => __('Are you sure you want to delete # {0}?', $substitution->id), 'escape' => false, 'class' => 'btn btn-danger'])?>
                    </div>
                </div>
                <h1 style="margin-bottom: 0">Sustitucion #<?= h($substitution->id) ?></h1>
            </div>
            <div class="card-body">
                <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <tr>
                        <th><?= __('Id') ?></th>
                        <td><?= $this->Number->format($substitution->id) ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Original Article') ?></th>
                        <td><?= h($substitution->overwritten_article) ?></td>
                    </tr>
                    <tr>
                        <th><?= __('New Article') ?></th>
                        <td><?= h($substitution->new_article) ?></td>
                    </tr>
                </table>
            </div>
        </div>
            <div class="card-body">
                <b><?= __('Comments') ?></b>
                <?= $this->Text->autoParagraph(h($substitution->comments)); ?>
            </div>
    </div>
</div>
