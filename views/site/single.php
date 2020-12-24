<?php
use yii\helpers\Url;
?>

<!--main content start-->
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-push-3">
                <article class="post">
                    <div class="post-thumb">
                        <img src="<?= $article->getImage();?>" alt="">
                    </div>
                    <div class="post-content">
                        <header class="entry-header text-center text-uppercase">
                            <h6><a href="<?= Url::toRoute(['site/category','id'=>$article->category->id])?>"> <?= $article->category->title?></a></h6>

                            <h1 class="entry-title"><a href="<?= Url::toRoute(['site/view','id'=>$article->id])?>"><?= $article->title?></a></h1>


                        </header>
                        <div class="entry-content">
                            <?= $article->content?>
                        </div>
                        <div class="decoration">
                            <?php foreach($article->tags as $tag):?>
                                <a href="<?= Url::toRoute(['site/tag','id'=>$tag->id]);?>" class="btn btn-default">#<?=$tag->title?></a>
                            <?php endforeach;?>
                        </div>

                        <div class="social-share">
							<span
                                    class="social-share-title pull-left text-capitalize">By <?= $article->author->name?> On <?= $article->getDate();?></span>
                            <ul class="text-center pull-right">
                                <li><a class="s-facebook" href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="s-twitter" href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="s-instagram" href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </article>

                <?= $this->render('/parts/comment', [
                    'article'=>$article,
                    'comments'=>$comments,
                    'commentForm'=>$commentForm
                ])?>
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
<!-- end main content-->