<#include "layout/_include/head.ftl">
<@head title="Journals - ${blog_title!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav false ''/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post">
            <div class="post-head-wrapper-text-only"
                 style="background-image: url('')">
                <div class="post-title">
                    Journals
                </div>
            </div>
            <#list journals.content?sort_by("createTime")?reverse as journal>
                <div class="post-item-wrapper">
                    <div class="post-item post-item-no-gaps">
                        <div class="post-item-info-wrapper">
                            <div class="post-item-title"  style="font-size: medium; text-decoration: none !important;">
                                ${journal.content!}
                            </div>
                            <div class="post-item-meta"  style="font-size: small;">
                                ${journal.createTime?string('yyyy-MM-dd HH:mm')}
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#include "layout/_include/tail.ftl">
