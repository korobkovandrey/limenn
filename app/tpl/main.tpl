{extends 'template:Базовый шаблон'}
{use 'template:Блоки'}
{use 'template:Блоки главной'}

{block 'page_header'}
    <!-- start banner -->
    <section class="banner" {$_modx->resource.main_header_bg_image | is_file_exists : '@INLINE style="background-image: url(\'{$src}\')"'}>
        {if $_modx->resource.main_header_cloud_anim }
            <div class="banner-cloud  banner-cloud__1"></div>
            <div class="banner-cloud  banner-cloud__2"></div>
            <div class="banner-cloud  banner-cloud__3"></div>
            <div class="banner-cloud  banner-cloud__4"></div>
            <div class="banner-cloud  banner-cloud__5"></div>
            <div class="banner-cloud  banner-cloud__6"></div>
            <div class="banner-cloud  banner-cloud__7"></div>
            <div class="banner-cloud  banner-cloud__8"></div>
            <div class="banner-cloud  banner-cloud__9"></div>
            <div class="banner-cloud  banner-cloud__10"></div>
            <div class="banner-cloud  banner-cloud__11"></div>
            <div class="banner-cloud  banner-cloud__12"></div>
            <div class="banner-cloud  banner-cloud__13"></div>
            <div class="banner-cloud  banner-cloud__14"></div>
            <div class="banner-cloud  banner-cloud__15"></div>
            <div class="banner-cloud  banner-cloud__16"></div>
            <div class="banner-cloud  banner-cloud__17"></div>
        {/if}
        <div class="wrapper">
            <div class="banner-descr">
                <h1 class="banner-descr__title"><span>{$_modx->resource.main_header_pre_title}</span>{$_modx->resource.main_header_title}</h1>
                <p class="banner-descr__subtitle">{$_modx->resource.main_header_sub_title}</p>
                {if $_modx->resource.main_header_btn_text}
                <div class="banner-descr__link">
                    <a href="{$_modx->resource.main_header_btn_link ? ($_modx->resource.main_header_btn_link | makeUrl) : '#feedback'}" rel="nofollow" class="btn-primary">{$_modx->resource.main_header_btn_text}</a>
                </div>
                {/if}
            </div>
        </div>
        {if $_modx->resource.main_header_superaction_enable}
        <div class="banner-stock">
            <div class="banner-stock__header">
                <p class="banner-stock__header-text">{$_modx->resource.main_header_superaction_name}</p>
            </div>
            <div class="banner-stock__descr" style="background-image: url({($_modx->resource.main_header_superaction_image | is_file_exists) | phpthumbon1 : ["w" => 150, "h" => 100, "zc" => 0, "far" => 0]})">
                <h5 class="banner-stock__descr-title">{$_modx->resource.main_header_superaction_title}</h5>
                <p class="banner-stock__descr-text">{$_modx->resource.main_header_superaction_desc}</p>
                {if $_modx->resource.main_header_superaction_link_text && $_modx->resource.main_header_superaction_link}
                <a href="{$_modx->resource.main_header_superaction_link | makeUrl}" rel="nofollow" class="banner-stock__descr-link">{$_modx->resource.main_header_superaction_link_text}</a>
                {/if}
            </div>
        </div>
        {/if}
        <div class="to_down">
            <div class="mouse-icon">
                <div class="weel"></div>
            </div>
        </div>
    </section>
    <!-- end banner -->
{/block}

{block 'content'}
    {var $blocks_order = $_modx->resource.main_blocks_order | fromJSON}
    {foreach $blocks_order as $v}
        {switch $v.block}
        {case 'block_main_concept'}
            {paste 'block_main_concept'}
        {case 'block_main_advantages'}
            {paste 'block_main_advantages'}
        {case 'block_main_offers'}
            {paste 'block_main_offers'}
        {case 'block_main_info'}
            {paste 'block_main_info'}
        {case 'block_main_hypothec'}
            {paste 'block_main_hypothec'}
        {case 'block_main_gallery'}
            {paste 'block_main_gallery'}
        {case 'block_main_map'}
            {paste 'block_main_map'}
        {case 'block_main_contacts'}
            {paste 'block_main_contacts'}
        {/switch}
    {/foreach}
{/block}

{block 'map_script'}{paste 'block_map_script'}{/block}