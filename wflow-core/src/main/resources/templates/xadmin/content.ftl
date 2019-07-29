${sidebar_before!}
${menus!}

<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">@@xadmin.closeCurrent@@</dd>
                <dd data-type="other">@@xadmin.closeOthers@@</dd>
                <dd data-type="all">@@xadmin.closeAll@@</dd>
            </dl>
        </div>
        <div class="layui-tab-content">
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<#if preloadUrl??>
    <script>
        $(function(){
            function initTheme() {
                setTimeout(function(){
                    layui.use(['layer', 'element'], function(){
                        if (layer !== undefined && element !== undefined ) {
                            xadmin.add_tab('${preloadLabel}','${preloadUrl}',true);
                        } else {
                            initTheme();
                        }
                    });
                }, 1000); 
            }
            initTheme();
            if (!is_remember) {
                window.onbeforeunload = function() {
                    return "@@xadmin.tabsLostOnceLeave@@";
                };
            }
        });
    </script>
</#if>