<?php
$this->assign('title', __('Articles') . '/' . __('Add'));
$this->Html->addCrumb(__('Articles'), ['controller' => 'Articles', 'action' => 'index']);
$this->Html->addCrumb(__('Add'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= __('Add Articles') ?></div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->Form->create($article, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    if(!empty($chapter_id)){
                        echo $this->Form->hidden('chapter_id', ['value' => $chapter_id]);
                    } else {
                        echo $this->Form->input('chapter_id', ['options' => $chapters]);
                    }
                    echo $this->Form->input('name');
                    echo $this->Form->input('description');
                    ?>
                    <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-primary']) ?>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>
