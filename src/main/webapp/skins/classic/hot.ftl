<#include "macro-head.ftl">
<#include "macro-list.ftl">
<#include "macro-pagination.ftl">
<#include "common/sub-nav.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${hotLabel} - ${symphonyLabel}">
        <meta name="description" content="${recentArticleLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index${miniPostfix}.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}/hot">
    </head>
    <body>
        <#include "header.ftl">
        <@subNav 'hot' ''/>
        <div class="main">
            <div class="wrapper">
                <div class="content fn-clear">
                    <div class="module">
                        <@list listData=indexArticles/>
                        <@pagination url="/hot"/>
                        <div class="pagination">
                            <a href="${servePath}/recent" class="ft-gray">${moreRecentArticleLabel}</a>
                        </div>
                    </div>
                    <#include "common/domains.ftl">
                </div>
                <div class="side">
                    <#include "side.ftl">
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <@listScript/>
    </body>
</html>
