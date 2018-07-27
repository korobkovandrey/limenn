{block 'block_main_concept'}
    <!-- start about -->
    <section class="about">
        <div class="wrapper">
            <div class="section-header">
                <div class="section-header__ico">
                    <picture>
                        {$_modx->resource.main_concept_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <source srcset="{$src}" type="image/svg+xml">',
                            'ext' => 'svg'
                        ]}
                        {$_modx->resource.main_concept_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <img src="{$src}" alt="">',
                            'ext' => 'png,jpg,jpeg',
                            'else' => $_modx->resource.main_concept_logo | is_file_exists : '@INLINE <img src="{$src}" alt="">'
                        ]}
                    </picture>
                </div>
                {if $_modx->resource.main_concept_title}
                <h2 class="section-header__title">{$_modx->resource.main_concept_title}</h2>
                {/if}
            </div>
            <div class="about-wrap">
                <div class="about-descr">
                    {$_modx->resource.main_concept_text}
                    {if $_modx->resource.main_concept_btn_text && $_modx->resource.main_concept_btn_link}
                    <a href="{$_modx->resource.main_concept_btn_link | makeUrl}" class="btn-primary about-descr__link">{$_modx->resource.main_concept_btn_text}</a>
                    {/if}
                </div>
            </div>
        </div>
    </section>
    <!-- end about -->
{/block}

{block 'block_main_advantages'}
    <!-- start advantages -->
{'getImageListPDO' | snippet : [
    'tvname' => 'main_advantages',
    'tplWrapper' => '@INLINE <section class="advantages">{$output}</section>',
    'tpl' => '@INLINE
        <div class="advantages-column" {$image | is_file_exists : \'@INLINE style="background-image: url({$src});"\'}>
            <div class="advantages-column__descr">
                <h4 class="advantages-column__descr-title">{$title}</h4>
                <p class="advantages-column__descr-text">{$text}</p>
            </div>
        </div>'
]}
    <!-- end advantages -->
{/block}

{block 'block_main_offers'}
    <!-- start offers -->
    <section class="offers" {$_modx->resource.main_offers_image | is_file_exists : '@INLINE style="background-image: url({$src});"'}>
        <div class="wrapper">
            <h2 class="section-header__title offers-title">{$_modx->resource.main_offers_title}</h2>
{'getImageListPDO' | snippet : [
    'tvname' => 'main_offers',
    'limit' => 3,
    'tplWrapper' => '@INLINE <div class="offers-row">{$output}</div>',
    'tpl' => '@INLINE
                <div class="offers-column">
                    {$image | is_file_exists : \'@INLINE <img class="offers-column__img" src="{$src}" alt="\' ~ ($title | striptags | htmlent) ~ \'">\'}
                    <div class="offers-column__descr">
                        <h4 class="offers-column__title">{$title}</h4>
                        <p class="offers-column__text">{$text}</p>
                    </div>
                    <a href="{$link | makeUrl}" class="modalbox offers-column__link">
                        <img src="/assets/templates/garmonia/img/arrow-right.svg" alt="harmony">
                    </a>
                </div>'
]}
            {if $_modx->resource.main_concept_btn_text && $_modx->resource.main_concept_btn_link}
                <div class="offers-link__all">
                    <a href="{$_modx->resource.main_offers_btn_link | makeUrl}">{$_modx->resource.main_offers_btn_text}</a>
                </div>
            {/if}
        </div>
    </section>
    <!-- end offers -->
{/block}

{block 'block_main_info'}
    <!-- start info -->
    <section class="info">
        <div class="wrapper">
            <div class="section-header info-header">
                <div class="section-header__ico">
                    <picture>
                        {$_modx->resource.main_info_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <source srcset="{$src}" type="image/svg+xml">',
                            'ext' => 'svg'
                        ]}
                        {$_modx->resource.main_info_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <img src="{$src}" alt="">',
                            'ext' => 'png,jpg,jpeg',
                            'else' => $_modx->resource.main_info_logo | is_file_exists : '@INLINE <img src="{$src}" alt="">'
                        ]}
                    </picture>
                </div>
                <h2 class="section-header__title">{$_modx->resource.main_info_title}</h2>
            </div>
            <div class="info-wrap">
                <div class="info-descr">
                    <div class="info-descr__row">
                        <div class="info-descr__column">
                            <h4 class="info-descr__column-title">{$_modx->resource.main_info_builder_name}</h4>
                            <p class="info-descr__column-link">
                                <a href="{$_modx->resource.main_info_builder_social_link | add_protocol}">
                                    <picture>
                                        {$_modx->resource.main_info_builder_social_icon_svg | is_file_exists : [
                                            'tpl' => '@INLINE <source srcset="{$src}" type="image/svg+xml">',
                                            'ext' => 'svg'
                                        ]}
                                        {$_modx->resource.main_info_builder_social_icon_svg | is_file_exists : [
                                            'tpl' => '@INLINE <img src="{$src}" alt="">',
                                            'ext' => 'png,jpg,jpeg',
                                            'else' => $_modx->resource.main_info_builder_social_icon | is_file_exists : '@INLINE <img src="{$src}" alt="">'
                                        ]}
                                    </picture>
                                    <span>{$_modx->resource.main_info_builder_social_link | replace_protocol}</span>
                                </a>
                            </p>
                        </div>
                        {$_modx->resource.main_info_builder_logo | is_file_exists : '@INLINE
                        <div class="info-descr__column info-descr__column-last">
                            <img src="{$src}" alt="' ~ ($_modx->resource.main_info_builder_name | striptags | htmlent) ~ '">
                        </div>'}
                    </div>
                    {$_modx->resource.main_info_text}
                    <div class="info-descr__links">
                        {if $_modx->resource.main_info_btn1_text && $_modx->resource.main_info_btn1_link}
                            <a href="{$_modx->resource.main_info_btn1_link | makeUrl}" class="btn-primary info-descr__links-first">{$_modx->resource.main_info_btn1_text}<img
                                        src="/assets/templates/garmonia/img/info-button-ico-1.svg" alt=""></a>
                        {/if}
                        {if $_modx->resource.main_info_btn2_text && $_modx->resource.main_info_btn2_link}
                            <a href="{$_modx->resource.main_info_btn2_link | makeUrl}" class="btn-primary info-descr__links-last">{$_modx->resource.main_info_btn2_text}<img
                                        src="/assets/templates/garmonia/img/info-button-ico-2.svg" alt="harmony"></a>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end info -->
{/block}

{block 'block_main_hypothec'}
    <!-- start mortgage -->
    <section class="mortgage" {$_modx->resource.main_hypothec_image | is_file_exists : '@INLINE style="background-image: url({$src});"'}>
        <div class="wrapper">
            <h2 class="mortgage-title__first mortgage-title__first-mob">{$_modx->resource.main_hypothec_title}</h2>
            <div class="mortgage-row">
                <div class="mortgage-column mortgage-column__first">
                    <h2 class="mortgage-title__first">{$_modx->resource.main_hypothec_title}</h2>
                    <h2 class="mortgage-title">{$_modx->resource.main_hypothec_text}</h2>
                    {if $_modx->resource.main_hypothec_btn_text && $_modx->resource.main_hypothec_btn_link}
                        <a href="{$_modx->resource.main_hypothec_btn_link | makeUrl}" class="modalbox mortgage-link">{$_modx->resource.main_hypothec_btn_text}</a>
                    {/if}
                </div>
                <div class="mortgage-column mortgage-column__last">
                    {if $_modx->resource.main_hypothec_btn1_text && $_modx->resource.main_hypothec_btn1_link}
                        <a href="{$_modx->resource.main_hypothec_btn1_link | makeUrl}" class="mortgage-column__cat">
                            <span>{$_modx->resource.main_hypothec_btn1_text}</span>
                        </a>
                    {/if}
                    {if $_modx->resource.main_hypothec_btn2_text && $_modx->resource.main_hypothec_btn2_link}
                        <a href="{$_modx->resource.main_hypothec_btn2_link | makeUrl}" class="mortgage-column__cat">
                            <span>{$_modx->resource.main_hypothec_btn2_text}</span>
                        </a>
                    {/if}
                </div>
            </div>
{'getImageListPDO' | snippet : [
    'tvname' => 'main_hypothec_banks_logo',
    'tplWrapper' => '@INLINE <div class="mortgage-bottom">{$output}</div>',
    'tpl' => '@INLINE {$image | is_file_exists : \'@INLINE <div class="mortgage-bottom__img"><img src="{$src}" alt=""></div>\'}'
]}
        </div>
    </section>
    <!-- end mortgage -->
{/block}

{block 'block_main_gallery'}
    <!-- start gallery -->
    <section class="gallery">
        <div class="wrapper">
            <div class="section-header gallery-header">
                <div class="section-header__ico">
                    <picture>
                        {$_modx->resource.main_gallery_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <source srcset="{$src}" type="image/svg+xml">',
                            'ext' => 'svg'
                        ]}
                        {$_modx->resource.main_gallery_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <img src="{$src}" alt="">',
                            'ext' => 'png,jpg,jpeg',
                            'else' => $_modx->resource.main_gallery_logo | is_file_exists : '@INLINE <img src="{$src}" alt="">'
                        ]}
                    </picture>
                </div>
                <h2 class="section-header__title">{$_modx->resource.main_gallery_title}</h2>
            </div>
        </div>
        <div class="gallery-fotorama">
            <div class="fotorama" data-nav="thumbs" data-loop="true" data-thumbmargin="15" data-thumbwidth="172" data-thumbheights="118" data-thumbborderwidth="4"
                 data-allowfullscreen="true" data-thumbmargin="0" data-width="100%">
                {'getImageListPDO' | snippet : [
                    'tvname' => 'main_gallery',
                    'tplWrapper' => '@INLINE {$output}',
                    'tpl' => '@INLINE {$image | is_file_exists : \'@INLINE <img height="118px" src="{$src | phpthumbon1 : [\\\'w\\\' => 1600, \\\'h\\\' => 1200, \\\'far\\\' => 0]}" alt="\' ~ ($title | striptags | htmlent) ~ \'">\'}'
                ]}
            </div>
        </div>
    </section>
    <!-- end gallery -->
{/block}

{block 'block_main_map'}
    <!-- start map -->
    <section class="map">
        <div class="wrapper">
            <div class="section-header">
                <div class="section-header__ico">
                    <picture>
                        {$_modx->resource.main_map_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <source srcset="{$src}" type="image/svg+xml">',
                            'ext' => 'svg'
                        ]}
                        {$_modx->resource.main_map_logo_svg | is_file_exists : [
                            'tpl' => '@INLINE <img src="{$src}" alt="">',
                            'ext' => 'png,jpg,jpeg',
                            'else' => $_modx->resource.main_map_logo | is_file_exists : '@INLINE <img src="{$src}" alt="">'
                        ]}
                    </picture>
                </div>
                <h2 class="section-header__title">{$_modx->resource.main_map_title}</h2>
            </div>
        </div>
        <div class="map-wrap">
            <div id="map"></div>
            <div class="map-wrap__info">
                {$_modx->resource.main_map_text}
            </div>
        </div>
    </section>
    <!-- end map -->
{/block}

{block 'block_main_contacts'}
    <!-- start contacts -->
    <section class="contacts" {$_modx->resource.main_form_image | is_file_exists : '@INLINE style="background-image: url({$src});"'}>
        <div class="wrapper">
            <div class="contacts-header">
                <h2 class="section-header__title contacts-header__title">{$_modx->resource.main_form_title}</h2>
                <p class="contacts-header__text">{$_modx->resource.main_sub_title}</p>
            </div>
            <div class="contacts-descr">
                {'!AjaxForm'|snippet:[
                'snippet'=>'FormIt',
                'frontend_js'=>'',
                'hooks'=>'spam,FormItSaveForm,email',
                'emailSubject'=>'Форма У вас появились вопросы?',
                'formName'=>'Форма У вас появились вопросы?',
                'emailTo'=>'+app_email_to'|placeholder,
                'emailFrom'=>'+app_email_from'|placeholder,
                'emailFromName'=>'+app_email_sender'|placeholder,
                'submitVar'=>'form_contacts',
                'spamEmailFields'=>'email2',
                'validate'=>'name:required, email2:email:required, compliance:required, email:blank, info:blank, text:blank, email3:blank',
                'formFields'=>'id,date,name,phone,email2,comment,services',
                'fieldNames'=>'id==Страница,name==Имя,phone==Телефон,email2==E-mail,comment==Сообщение',
                'successMessage'=>'+app_email_success'|placeholder,
                'validationErrorMessage'=>'+app_email_error'|placeholder,
                'emailTpl'=>'MAIL_TPL',
                'form'=>'@INLINE
        				<form class="callback" method="POST">
        					<div class="success"><span>Спасибо!<br>Мы свяжемся с вами в ближайшее время</span></div>
        					<div class="contacts-descr__input">
        						<span class="contacts-descr__input-text">Имя</span>
        						<input type="text" name="name" placeholder="Имя" required minlength="3">
        					</div>
        					<div class="necessaty_fields"><input type="text" value="1" name="info"/></div>
        					<div class="contacts-descr__input">
        						<span class="contacts-descr__input-text">Телефон</span>
        						<input class="input-phone" type="tel" name="phone" placeholder="Телефон" minlength="8">
        					</div>
        					<div class="necessaty_fields"><input type="text" value="text" name="text"/></div>
        					<div class="contacts-descr__input">
        						<span class="contacts-descr__input-text">E-mail</span>
        						<input type="email" name="email2" placeholder="E-mail" required minlength="6">
        						<input type="hidden" name="email" placeholder="E-mail">
        					</div>
        					<div class="necessaty_fields"><input type="text" value="test@test.ru" name="email3"/></div>
        					<div class="contacts-descr__input">
        						<label class="contacts-descr__input-checkbox">
        							<input checked="checked" type="checkbox" name="compliance" value="1" required>
        							<span class="custom-checkbox"></span>
        							<span class="checkbox-text">{$_modx->resource.main_form_fz_text}</span>
        						</label>
        					</div>
        					<p class="contacts-descr__notification">{$_modx->resource.main_form_btn_text_before}</p>
        					<input type="hidden" name="id" value="{$_modx->resource.id}">
            				<input type="hidden" name="form_contacts" value="1">
        					<div class="contacts-descr__link">
        						<button class="btn-primary submit">{$_modx->resource.main_form_btn_text}</button>
        					</div>
        					<p class="contacts-descr__text">{$_modx->resource.main_form_btn_text_after}</p>
        				</form>
				    ',
                ]}
            </div>
        </div>
    </section>
    <!-- end contacts -->
{/block}