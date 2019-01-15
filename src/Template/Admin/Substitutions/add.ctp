<?php
$this->assign('title', __('Substitutions') . '/' . __('Add'));
$this->Html->addCrumb(__('Substitutions'), ['controller' => 'Substitutions', 'action' => 'index']);
$this->Html->addCrumb(__('Add'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= __('Add Substitutions') ?></div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->Form->create($substitution, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    echo $this->Form->input('overwritten_article', ['options'=>$articles]);
                    echo $this->Form->input('new_article', ['options'=>$articles]);
                    echo $this->Form->input('comments');
                    ?>
                    <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-primary']) ?>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>
