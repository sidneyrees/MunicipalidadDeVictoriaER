<?php
$this->assign('title', __('View'));
$this->Html->addCrumb(__('Articles'), ['controller' => 'Articles', 'action' => 'index']);
$this->Html->addCrumb(__('View'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= h($article->name) ?></div>
                </div>
                <div class="pull-right card-action">
                    <div class="btn-group" role="group" aria-label="...">
                        <?=$this->Html->link('<i class="fa fa-edit"></i>', ['action' => 'edit', $article->id], ['escape' => false, 'class' => 'btn btn-warning'])?>&nbsp;
                        <?=$this->Form->postLink('<i class="fa fa-trash"></i>', ['action' => 'delete', $article->id], ['confirm' => __('Are you sure you want to delete # {0}?', $article->id), 'escape' => false, 'class' => 'btn btn-danger'])?>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <tr>
                        <th><?= __('Law') ?></th>
                        <td><?= $article->has('law') ? $this->Html->link($article->law->name, ['controller' => 'Laws', 'action' => 'view', $article->law->id]) : '' ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Chapter') ?></th>
                        <td><?= $article->has('chapter') ? $this->Html->link($article->chapter->name, ['controller' => 'Chapters', 'action' => 'view', $article->chapter->id]) : '' ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Name') ?></th>
                        <td><?= h($article->name) ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Id') ?></th>
                        <td><?= $this->Number->format($article->id) ?></td>
                    </tr>
                </table>
            </div>
        </div>
            <div class="card-body">
                <h4><?= __('Description') ?></h4>
                <?= $this->Text->autoParagraph(h($article->description)); ?>
            </div>
    </div>
</div>
