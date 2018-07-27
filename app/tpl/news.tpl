{extends 'template:Базовый шаблон'}
{use 'template:Блоки'}

{block 'content'}
    <!-- start content-news -->
    <section class="content-news">
        <div class="wrapper">
{if $_modx->resource.news_date_filter}
    {'!date_filter' | snippet}
{/if}
            <div class="news-row">
{'!pdoPage' | snippet: [
    'resources' => $_modx->resource.news_date_filter ? ('filter_ids' | placeholder) : '',
    'limit' => 9,
    'pageLimit' => 7,
    'showHidden' => 0,
    'hideContainers' => 1,
    'tvPrefix' => '',
    'includeTVs' => 'image',
    'processTVs' => 'image',
    'sortby' => $_modx->resource.news_sortby == 'date' ?
                    ['publishedon' => 'DESC', 'menuindex' => 'DESC', 'id' => 'DESC'] :
                    ['parent' => 'ASC', 'menuindex' => 'ASC', 'id' => 'ASC'],
    'cache' => 1,
    'tpl' => '@INLINE
                <article class="news-article {$image | is_file_exists ? \'news-article__img\' : \'\'}" {$image | is_file_exists : \'@INLINE style="background-image: url({$src | phpthumbon1 : [\\\'w\\\' => 415, \\\'h\\\' => 415, \\\'far\\\' => 0]});"\'}>
                    <h3 class="news-article__title">{$menutitle ?: $pagetitle}</h3>
                    <p class="news-article__text">{$introtext}</p>
                    <a href="{$uri}" class="news-article__link">Подробнее</a>
                </article>',
    'tplPageWrapper' => '@INLINE <ul class="pagination">{$pages}</ul>',
    'tplPage' => '@INLINE <li><a href="{$href}">{$pageNo}</a></li>',
    'tplPageActive' => '@INLINE <li><a href="{$href}" class="pagination-active">{$pageNo}</a></li>',
    'pageLinkScheme' => '[[+pageVarKey]]-[[+page]]'
]}
            </div>
{'page.nav' | placeholder}
        </div>
    </section>
    <!-- end content-news -->
{/block}