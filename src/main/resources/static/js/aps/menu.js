
    layui.config({
        base: '/module/'
    }).extend({
        treetable: 'treetable-lay/treetable'
    }).use(['table', 'treetable'], function () {
        var $ = layui.jquery;
        var table = layui.table;
        var treetable = layui.treetable;

        // 渲染表格
        layer.load(2);
        treetable.render({
            treeColIndex: 1,
            treeSpid: -1,
            treeIdName: 'authorityId',
            treePidName: 'parentId',
            elem: '#auth-table',
            url: '/json/menus.json',
            page: false,
            cols: [[
                {type: 'numbers'},
                {field: 'authorityName', minWidth: 200, title: '权限名称'},
                {field: 'authority', title: '权限标识'},
                {field: 'menuUrl', title: '菜单url'},
                {field: 'orderNumber', width: 80, align: 'center', title: '排序号'},
                {
                    field: 'isMenu', width: 80, align: 'center', templet: function (d) {
                        if (d.isMenu == 1) {
                            return '<span class="layui-badge layui-bg-gray">按钮</span>';
                        }
                        if (d.parentId == -1) {
                            return '<span class="layui-badge layui-bg-blue">目录</span>';
                        } else {
                            return '<span class="layui-badge-rim">菜单</span>';
                        }
                    }, title: '类型'
                },
                {templet: '#auth-state', width: 120, align: 'center', title: '操作'}
            ]],
            done: function () {
                layer.closeAll('loading');
            }
        });

        $('#btn-expand').click(function () {
            treetable.expandAll('#auth-table');
        });

        $('#btn-fold').click(function () {
            treetable.foldAll('#auth-table');
        });
    });