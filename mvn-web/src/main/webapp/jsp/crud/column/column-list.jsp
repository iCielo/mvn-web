<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../common/list.jsp"%>
<title>${title}</title>
<script type="text/javascript">
	$(function() {
		$('#dataTable').myBootstrapTable({
			idField : "id",
			columns : [ {
				checkbox : true,
				align : 'center',
				valign : 'middle'
			}, {
				title : '表名',
				field : 'tableName',
				align : 'center'
			}, {
				title : '列名',
				field : 'columnName',
				align : 'center'
			}, {
				title : '数据类型',
				field : 'columnType',
				align : 'center'
			}, {
				title : '显示名',
				field : 'label',
				align : 'center'
			}, {
				title : '输入提示',
				field : 'placeholder',
				align : 'center'
			}, {
				title : '录入类型',
				field : 'inputType',
				align : 'center'
			}, {
				title : '数据字典',
				field : 'dictType',
				align : 'center'
			}, {
				title : '自定义数据字典',
				field : 'dictList',
				align : 'center'
			}, {
				title : '校验规则',
				field : 'rules',
				align : 'center'
			} ],
			url : "${CP}/crud/column.do?method=loadData",
			queryParams : getQueryParams
		});
	});

	//新增
	function addEntity() {
		Common.showDialog({
			title : "新增用户",
			data : {
				url : "${CP}/crud/column.do?method=add",
				height : "464px"
			}
		});
	}

	//修改
	function updEntity() {
		var rows = $("#dataTable").bootstrapTable('getSelections');
		if (rows.length != 1) {
			Common.alert("只能选择一条记录修改！");
			return;
		}
		Common.showDialog({
			title : "修改用户",
			data : {
				url : "${CP}/crud/column.do?method=upd&id=" + rows[0].id,
				height : "407px"
			}
		});
	}

	//删除
	function delEntity() {
		var rows = $("#dataTable").bootstrapTable('getSelections');
		if (rows.length == 0) {
			Common.alert("请选择要删除的记录！");
			return;
		}
		var ids = [];
		for (var i = 0; i < rows.length; i++) {
			ids.push(rows[i].id);
		}
		Common.confirm("是否删除", "确认是否删除？", function() {
			Common.ajax({
				url : "${CP}/crud/column.do?method=delEntity",
				data : {
					ids : ids.join(",")
				},
				success : function(data) {
					query();
				}
			})
		});
	}

	/* 查询 */
	function query() {
		$("#dataTable").bootstrapTable('refresh');
	}

	/* 查询参数 */
	function getQueryParams(params) {
		$(".search-are input,.search-are select").each(function(i, obj) {
			params[$(obj).prop("name")] = $(obj).val();
		});
		return params;
	}
</script>
</head>
<body>
	<section class="panel">
		<header class="panel-heading"> ${title} </header>
		<div class="panel-body">
			<div id="toolbar">
				<button class="btn btn-primary " onclick="addEntity()">
					<i class="glyphicon glyphicon-plus-sign"></i>&nbsp;新&nbsp;增
				</button>
				<button class="btn btn-primary" onclick="updEntity()">
					<i class="glyphicon glyphicon-edit"></i>&nbsp;修&nbsp;改
				</button>
				<button class="btn btn-danger " onclick="delEntity()">
					<i class="glyphicon glyphicon-remove"></i>&nbsp;删&nbsp;除
				</button>
			</div>
			<table id="dataTable"></table>
		</div>
	</section>
</body>
</html>