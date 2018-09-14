layui.config({
    base: '../module/'
}).extend({
    treetable: 'treetable-lay/treetable'
}).use(['layer', 'table', 'treetable'], function () {
    var $ = layui.jquery;
    var table = layui.table;
    var layer = layui.layer;
    var treetable = layui.treetable;

    // 渲染表格
    var renderTable = function () {
        layer.load(2);
        treetable.render({
            treeColIndex: 1,
            treeSpid: 0,
            treeIdName: 'myid',
            treePidName: 'mypid',
            treeDefaultClose: true,
            treeLinkage: false,
            elem: '#test3',
            url: '/getAllRelations',
            page: false,
            cols: [[
                {type: 'numbers'},
            	{field:'sonCpscode',width: 180, align: 'center', title: '库存编码'},
            	{field:'sonCinvname', width: 100, align: 'center', title: '库存名称'},
            	{field:'sonCinvstd',width: 100, align: 'center',  title: '型号'},
            	{field:'sonCcomunitname',width: 100, align: 'center',  title: '主计量单位'},
            	{field:'price',width: 80, align: 'center', title: '单价'},
            	{field:'sonTdqtyd', width: 180, align: 'center', title: '基本用量分母'},
            	{field:'sonIpsquantity',width: 180, align: 'center', title: '基本用量分子'},
                {
                    field: 'comtime', width: 120, align: 'center', templet: function (d) {
                        if (d.id == 1) {
                            return '<span>10</span>';
                        } else {
                        	return '<span></span>';
                        }
                    }, title: '装配时间(天)'
                },
                {
                    field: 'isMenu', width: 80, align: 'center', templet: function (d) {
                        if (d.mypid == 0) {
                            return '<span class="layui-badge layui-bg-blue">产品</span>';
                        }
                        if (d.sonType == 1) {
                            return '<span class="layui-badge-rim layui-bg-orange">部件</span>';
                        } else {
                            return '<span class="layui-badge layui-bg-gray">零件</span>';
                        }
                    }, title: '类型'
                },
                {
                    field: 'operator', width: 180, align: 'center', templet: function (d) {
                        if (d.mypid == 0) {
                            return '<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">修改</a><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="addb">增加部件</a><a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>';
                        }
                        if (d.sonType == 1) {
                            return '<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">修改</a><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="addl">增加零件</a><a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>';
                        } else {
                            return '<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">修改</a><a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>';
                        }
                    }, title: '操作'
                }
            ]],
            done: function () {
                layer.closeAll('loading');
            }
        });
    };

    renderTable();


    $('#btn-expand').click(function () {
        treetable.expandAll('#test3');
    });

    $('#btn-fold').click(function () {
        treetable.foldAll('#test3');
    });

    $('#btn-refresh').click(function () {
        renderTable();
    });

    //监听工具条
    table.on('tool(test3)', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;

        if (layEvent === 'del') {
            layer.msg('删除' + data.id);
        } else if (layEvent === 'edit') {
            layer.msg('修改' + data.id);
        } else if (layEvent === 'addb') {
            layer.msg('增加部件');
        } else if (layEvent === 'addl') {
            layer.msg('增加零件');
        }
    });
});

