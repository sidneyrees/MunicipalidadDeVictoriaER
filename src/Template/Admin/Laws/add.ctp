<?php
$this->assign('title', __('Laws') . '/' . __('Add'));
$this->Html->addCrumb(__('Laws'), ['controller' => 'Laws', 'action' => 'index']);
$this->Html->addCrumb(__('Add'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title"><?= __('Add Laws') ?></div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->Form->create($law, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    $date = new Cake\I18n\Time();       
                    echo $this->Form->input('bulletin');
                    echo $this->Form->input('name');
                    echo $this->Form->input('type', ['type'=>'select','options' => $normative_types, 'empty' => true]);
                    echo $this->Form->input('number');
                    echo $this->Form->input('sanction_date', ['type'=>'text','class'=>'datepicker','value'=>$date->i18nFormat('YYYY-MM-dd')]);
                    echo $this->Form->input('promulgated_date', ['type'=>'text','class'=>'datepicker','value'=>$date->i18nFormat('YYYY-MM-dd')]);
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
