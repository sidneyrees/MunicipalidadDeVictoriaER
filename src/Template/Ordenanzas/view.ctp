<?php
$this->assign('title', __('View'));
?>
<div class="row">
    <div class="col-xs-12">
        
        <h1><?= h($law->name) ?></h1>
        <h2><?= $normative_types[$law->type] ?> Nº <?= $law->number ?></h2>
        
        <p><b><?= $law->description ?></b></p>
        <p>Sancionada: <?= $law->sanction_date ?><br />
        Promulgada: <?= $law->promulgated_date ?>
        </p>
        <hr />
        <p style="text-align: center;"><?= nl2br($law->introduction) ?></p>
        <hr />
        <?php if(!empty($law->comments)){ ?>
        <p style="text-align: center;"><b>OBSERVACIONES:</b> <?= nl2br($law->comments) ?></p>
        <hr />
        <?php } ?>
    
        <?php if (!empty($law->chapters)): ?>
            <?php foreach ($law->chapters as $chapters): ?>
            
                <p style="text-align: center;"><b><?= strtoupper($chapters->name) ?></b>                                      
                    <br>
                    <?= nl2br($chapters->description) ?>
                </p>                               
                
                <?php if (!empty($chapters->articles)): ?>
                    <?php foreach ($chapters->articles as $articles): ?>
                        <p><a name="<?= strtoupper($articles->id) ?>"></a><b><?= strtoupper($articles->name) ?></b>&nbsp;—&nbsp;<?= nl2br($articles->description) ?></p>
                    <?php endforeach; ?>
                <?php endif; ?>
            <?php endforeach; ?>
        <?php endif; ?>
                
    </div>
</div>