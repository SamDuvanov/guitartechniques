<?php
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>

<div class="site-index">

    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-push-3">
                    <?php foreach($articles as $article):?>
                        <article class="post">
                            <div class="post-thumb">
                                <a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>"><img src="<?= $article->getImage();?>" alt=""></a>

                                <a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>" class="post-thumb-overlay text-center">
                                    <div class="text-uppercase text-center">Просмотреть</div>
                                </a>
                            </div>
                            <div class="post-content">
                                <header class="entry-header text-center text-uppercase">
                                    <h6><a href="<?= Url::toRoute(['site/category','id'=>$article->category->id])?>"> <?= $article->category->title; ?></a></h6>

                                    <h1 class="entry-title"><a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>"><?= $article->title?></a></h1>


                                </header>
                                <div class="entry-content">
                                    <p><?= $article->description?>
                                    </p>

                                    <div class="btn-continue-reading text-center text-uppercase">
                                        <a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>" class="more-link">Продолжить Чтение</a>
                                    </div>
                                </div>
                                <div class="social-share">
                                    <!--                                    <span class="social-share-title pull-left text-capitalize">By --><?//= $article->author->name; ?><!-- On --><?//= $article->getDate();?><!--</span>-->
                                    <span class="social-share-title pull-left text-capitalize">By Sam On <?= $article->getDate();?></span>
                                    <ul class="text-center pull-right">
                                        <li><a class="s-facebook" href="#"><i class="fa fa-eye"></i></a></li><?= (int) $article->viewed?>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    <?php endforeach; ?>

                    <?php
                    echo LinkPager::widget([
                        'pagination' => $pagination,
                    ]);
                    ?>
                </div>
                <div class="col-md-4 col-md-pull-9" data-sticky_column>
                    <div class="primary-sidebar">

                        <aside class="widget border pos-padding">
                            <h3 class="widget-title text-uppercase text-center">Категории</h3>
                            <ul>
                                <?php foreach($categories as $category):?>
                                    <li>
                                        <a href="<?= Url::toRoute(['site/category','id'=>$category->id]);?>"><?= $category->title?></a>
                                        <span class="post-count pull-right"> (<?= $category->getArticlesCount();?>)</span>
                                    </li>
                                <?php endforeach;?>

                            </ul>
                        </aside>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
