<?php
$this->assign('title', __('Substitutions') . '/' . __('Edit'));
$this->Html->addCrumb(__('Substitutions'), ['controller' => 'Substitutions', 'action' => 'index']);
$this->Html->addCrumb(__('Edit'));
?>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-body">
                <?= $this->Form->create($substitution, ['templates' => 'template_form_1_column']) ?>
                    <?php
                    echo $this->Form->hidden('overwritten_article', ['options'=>$articles]);
                    echo $this->Form->hidden('new_article', ['options'=>$articles]);
                    echo 'Articulo sustituido: ' . $substitution->overwritten_article . '<br />';  
                    echo 'Articulo nuevo: ' . $substitution->new_article.'<br /><br />';
                    echo $this->Form->input('comments');
                    ?>
                    <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-primary']) ?>
                <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>
