<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/tags.jsp" %>
<html>
<head>
    <title>数字化项目数据同步</title>
</head>
<body>
<div class="container">
    <h4>基础数据导入</h4>
    <div class="row">
        <button class="btn btn-danger" name="link" href="${ctx}/syn/test/listTest">测试</button>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/org/cleanOrg">清空组织机构</button>
        <button class="btn" name="link" href="${ctx}/syn/org/importOrg">导入组织机构</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/market/clean">清空商场</button>
        <button class="btn" name="link" href="${ctx}/syn/market/importMarket">导入商场</button>
        <hr/>

        <h4>业务数据导入</h4>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/brand/cleanBrand">清空品牌数据</button>
        <button class="btn" name="link" href="${ctx}/syn/brand/importBrandInfo">导入品牌</button>
        <button class="btn" name="link" href="${ctx}/syn/brand/importBrandSeries">导入品牌系列</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/company/cleanCompany">清空工厂品牌公司数据</button>
        <button class="btn" name="link" href="${ctx}/syn/company/importCompany">导入工厂品牌公司</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/dealer/cleanDealer">清空经销商数据</button>
        <button class="btn" name="link" href="${ctx}/syn/dealer/importDealer">导入经销商</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/booth/clean">清空摊位</button>
        <button class="btn" name="link" href="${ctx}/syn/booth/importBooth">导入摊位</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/contract/cleanContract">清空合同</button>
        <button class="btn" name="link" href="${ctx}/syn/contract/importContract">导入合同</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/contractBooth/clean">清空合同摊位</button>
        <button class="btn" name="link" href="${ctx}/syn/contractBooth/importContractBooth">导入合同摊位</button>
        <hr/>
        <button class="btn btn-danger" name="link" href="${ctx}/syn/conBrandSeries/cleanConBrandSeries">清空合同代理品牌系列</button>
        <button class="btn" name="link" href="${ctx}/syn/conBrandSeries/importConBrandSeries">导入合同代理品牌系列</button>
        <hr/>
    </div>
</div>

<div class="modal fade" id="modal_div">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">系统提示</h3>
            </div>
            <div class="modal-body">
                <div id="data_div"></div>
            </div>
        </div>
    </div>
</div>


<script>
    $(function () {
        $('button[name="link"]').click(function () {
            if(confirm("是否确认操作？")){
            var url = $(this).attr('href');
            $(this).attr('disabled', 'disabled');
            var btn = $(this);
            $('#data_div').html('执行中....');
            $('#modal_div').modal('show');
            $.ajax({
                type: 'get',
                url: url,
                success: function (data) {
                    $('#data_div').html(data);
                    btn.removeAttr("disabled");
                }
            });
        }
        });
    });
</script>
</body>
</html>
