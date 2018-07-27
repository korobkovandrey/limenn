{extends 'template:Базовый шаблон'}
{use 'template:Блоки'}

{block 'content'}
    <section class="content-page">
        <div class="wrapper">
            <h1>{'longtitle' | resource ?: 'pagetitle' | resource}</h1>
            <div class="content-row">
                {'content' | resource}
            </div>
        </div>
    </section>
{/block}