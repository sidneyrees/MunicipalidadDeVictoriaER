<?php
$this->assign('title', __('View'));
$this->Html->addCrumb(__('Chapters'), ['controller' => 'Chapters', 'action' => 'index']);
$this->Html->addCrumb(__('View'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= h($chapter->name) ?></div>
                </div>
                <div class="pull-right card-action">
                    <div class="btn-group" role="group" aria-label="...">
                        <?=$this->Html->link('<i class="fa fa-edit"></i>', ['action' => 'edit', $chapter->id], ['escape' => false, 'class' => 'btn btn-warning'])?>&nbsp;
                        <?=$this->Form->postLink('<i class="fa fa-trash"></i>', ['action' => 'delete', $chapter->id], ['confirm' => __('Are you sure you want to delete # {0}?', $chapter->id), 'escape' => false, 'class' => 'btn btn-danger'])?>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <tr>
                        <th><?= __('Law') ?></th>
                        <td><?= $chapter->has('law') ? $this->Html->link($chapter->law->name, ['controller' => 'Laws', 'action' => 'view', $chapter->law->id]) : '' ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Name') ?></th>
                        <td><?= h($chapter->name) ?></td>
                    </tr>
                    <tr>
                        <th><?= __('Id') ?></th>
                        <td><?= $this->Number->format($chapter->id) ?></td>
                    </tr>
                </table>
            </div>
        </div>
            <div class="card-body">
                <h4><?= __('Description') ?></h4>
                <?= $this->Text->autoParagraph(h($chapter->description)); ?>
            </div>
    </div>
    <?php if (!empty($chapter->articles)): ?>
        <div class="col-xs-12">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">
                        <div class="title"><?= __('Related Articles') ?></div>
                    </div>
                </div>
                <div class="card-body no-padding">
                    <table class="table table-striped table-hover" cellspacing="0" width="100%">
                        <tr>
                            <th class="actions"><?= __('Actions') ?></th>
                            <th><?= __('Id') ?></th>
                            <th><?= __('Law Id') ?></th>
                            <th><?= __('Chapter Id') ?></th>
                            <th><?= __('Name') ?></th>
                            <th><?= __('Description') ?></th>
                        </tr>
                    <?php foreach ($chapter->articles as $articles): ?>
                        <tr>
                            <td>
                                <?=$this->Html->link('<i class="fa fa-search"></i>', ['controller' => 'Articles', 'action' => 'view', $articles->id], ['escape' => false])?>&nbsp;
                                <?=$this->Html->link('<i class="fa fa-edit"></i>', ['controller' => 'Articles', 'action' => 'edit', $articles->id], ['escape' => false])?>&nbsp;
                                <?=$this->Form->postLink('<i class="fa fa-trash"></i>', ['controller' => 'Articles', 'action' => 'delete', $articles->id], ['confirm' => __('Are you sure you want to delete # {0}?', $articles->id), 'escape' => false])?>
                            </td>
                            <td><?= h($articles->id) ?></td>
                            <td><?= h($articles->law_id) ?></td>
                            <td><?= h($articles->chapter_id) ?></td>
                            <td><?= h($articles->name) ?></td>
                            <td><?= h($articles->description) ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </table>
                </div>
            </div>
        </div>
    <?php endif; ?>
</div>
