<?php
$this->assign('title', __('Laws') . '/' . __('Edit'));
$this->Html->addCrumb(__('Laws'), ['controller' => 'Laws', 'action' => 'index']);
$this->Html->addCrumb(__('Edit'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= __('Edit Laws') ?></div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->Form->create($law, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    echo $this->Form->input('bulletin');
                    echo $this->Form->input('name');
                    echo $this->Form->input('type', ['type'=>'select','options' => $normative_types, 'empty' => true]);
                    echo $this->Form->input('number');
                    echo $this->Form->input('sanction_date', ['type'=>'text','class'=>'datepicker','value'=>$law->sanction_date->i18nFormat('YYYY-MM-dd')]);
                    echo $this->Form->input('promulgated_date', ['type'=>'text','class'=>'datepicker','value'=>$law->promulgated_date->i18nFormat('YYYY-MM-dd')]);
                    echo $this->Form->input('description');
                    echo $this->Form->input('introduction');
                    echo $this->Form->input('comments');
  
                    ?>
                    <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-primary']) ?>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>
