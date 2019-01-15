<?php
$this->assign('title', __('Chapters') . '/' . __('Edit'));
$this->Html->addCrumb(__('Chapters'), ['controller' => 'Chapters', 'action' => 'index']);
$this->Html->addCrumb(__('Edit'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= __('Edit Chapters') ?></div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->Form->create($chapter, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    if(!empty($law_id)){
                        echo $this->Form->hidden('law_id', ['value' => $law_id]);
                    } else {
                        echo $this->Form->input('law_id', ['options' => $laws]);
                    }
                    echo $this->Form->input('name');
                    echo $this->Form->input('description');
                    ?>
                    <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-primary pull-right']) ?>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>
