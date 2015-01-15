<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!-- 引入国际化标签 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form id="purchase_mgr_purchaseOrder_form" method="post" style="padding:15px;width: 600px">
<div title="基本信息" style="padding:15px">
    	<fieldset style="padding:10px;width: 530px" class="spinner">
			<legend>基本信息</legend>  
			<table  class="detailtable"> 
				    <tr> 
				        <td style="padding-left:10px;">订货单号：</td>
						<td >
						    <input type="hidden" id="purOrderId" name="purOrderId" value="${purchaseOrderData.purOrderId }" /> 
						    <input id="orderCode" name="orderCode" class="spinner" style="width:168px;" value="${purchaseOrderData.orderCode}" readonly="readonly"/>
						</td>
				        <td style="padding-left:10px;">合同编号：</td>
						<td>
							<input id="contractCode" name="contractCode" class="spinner" style="width:168px" value="${purchaseOrderData.contractCode }"  readonly="readonly"/>
						</td>
					</tr> 
					<tr> 
					    <td style="padding-left:10px;">合同状态：</td>
						<td><input id="orderState" name="orderState" class="spinner" style="width:168px" value="${purchaseOrderData.orderState }" readonly="readonly"/></td>
					    <td style="padding-left:10px;">采购类型：</td>
						<td><input id="purchaseTypeId" name="purchaseTypeId" class="spinner" style="width:168px" value="${purchaseOrderData.purchaseTypeId}" readonly="readonly"/></td>
					 </tr>
					 <tr>
						<td style="padding-left:10px;">采购日期：</td>
						<td><input id="orderDate" name="orderDate" class="spinner" style="width:168px" value="<fmt:formatDate value="${purchaseOrderData.orderDate}" pattern="yyyy-MM-dd"/>"  readonly="readonly"/></td>
					    <td style="padding-left:10px;">仓库：</td>
					    <td><input id="storage" name="storage" class="spinner" style="width:168px" value="${purchaseOrderData.storage}" readonly="readonly"/></td>
				 	</tr>
				 	<tr>
						<td style="padding-left:10px;">供应商编号：</td>
						<td ><input name="supplierCode" class="spinner" style="width:168px" value="${purchaseOrderData.supplierCode}" readonly="readonly"/></td>
						<td style="padding-left:10px;">供应商：</td>
						<td ><input  name="supplierId" class="spinner" style="width:168px" value="${purchaseOrderData.supplierId}" readonly="readonly"/></td>
				   </tr> 
				   <tr> 
				        <td style="padding-left:10px;">是否启用：</td>
						<td><input name="enabled" class="spinner" id="enabled" style="width:168px" value="${ purchaseOrderData.enabled}" readonly="readonly"/></td>
					
						<td style="padding-left:10px;">联系人：</td>
						<td><input class="spinner" style="width:168px" value="${purchaseOrderData.linkman}" readonly="readonly"/></td>
					</tr> 
					<tr>
						<td style="padding-left:10px;">供应商地址：</td>
						<td><input class="spinner" style="width:168px" value="${purchaseOrderData.supplierAdd}" readonly="readonly"/></td>
				 	    <td style="padding-left:10px;">联系电话：</td>
						<td><input class="spinner" style="width:168px" value="${purchaseOrderData.phone}"  readonly="readonly"/></td>
					
				 	 </tr> 
					 <tr>
					    <td style="padding-left:10px;">传真：</td>
						 <td><input class="spinner" style="width:168px" value="${purchaseOrderData.fax}" readonly="readonly"/></td>
					   <td style="padding-left:10px;">经办人：</td>
				      <td><input class="spinner" style="width:168px"   value="${purchaseOrderData.operators}" readonly="readonly"/></td>
				    
					</tr> 
					<tr> 
				     <td style="padding-left:10px;">审核状态：</td>
					  <td><input  id="purchase_mgr_purchaseOrder_form_auditState" name="auditState" class="spinner" style="width:168px" value="${purchaseOrderData.auditState }" readonly="readonly"/></td>
				      <td style="padding-left:10px;">经办部门：</td>
					  <td><input class="spinner" style="width:168px" value="${purchaseOrderData.operatorDep}" readonly="readonly"/></td>
				    </tr> 
					 <tr>
					    <td style="padding-left:10px;">审核人：</td>
						<td><input name="auditor" class="spinner" style="width:168px" value='${purchaseOrderData.auditor}' readonly="readonly"/></td>
					    <td style="padding-left:10px;">审核时间：</td>
						<td><input name="auditDate" class="spinner" style="width:168px" value="<fmt:formatDate value='${purchaseOrderData.auditDate}'  pattern="yyyy-MM-dd HH:mm:ss"/>" readonly="readonly"/></td>
					</tr>  
				    <tr>
						<td style="padding-left:10px;">审核备注：</td>
						<td  colspan="3"><input name="auditRemark" class="spinner" style="width:425px" value='${purchaseOrderData.auditRemark}' readonly="readonly"/></td>
				   </tr> 
					<tr>
						<td style="padding-left:10px;">备 注：</td>
						<td colspan="3"> <textarea   name="remark" class="spinner" style="width:425px;" readonly="readonly" >${purchaseOrderData.remark}</textarea></td>
					</tr>
				</table>
		</fieldset>
    </div>
    <div title="详细信息" style="padding:15px">
    	<fieldset style="padding:10px;" class="spinner">
			<legend>详细信息</legend>  
			<table  class="detailtable">
					  <tr> 
				        <td style="padding-left:10px;">约定支付方式：</td>
						<td >
						    <input id="paymentTypeId" name="paymentTypeId" class="spinner" style="width:168px;" value="${purchaseOrderData.paymentTypeId}" readonly="readonly"/>
						</td>
				        <td style="padding-left:10px;">付款约定：</td>
						<td>
							<input id="paymentAgrId" name="paymentAgrId" class="spinner" style="width:168px" value="${purchaseOrderData.paymentAgrId }"  readonly="readonly"/>
						</td>
					</tr> 
					 <tr>
					    <td style="padding-left:10px;">交货方式：</td>
						<td ><input name="deliveryType" class="spinner" style="width:168px"  value='${purchaseOrderData.deliveryType}'  readonly="readonly"/></td>
					    <td style="padding-left:10px;">交货期限：</td>
						<td><input id="deliveryDadlines" name="deliveryDadlines" class="spinner" style="width:168px" value="<fmt:formatDate value="${purchaseOrderData.deliveryDadlines}" pattern="yyyy-MM-dd"/>"  readonly="readonly"/></td>
					 </tr>
					 <tr> 
				        <td style="padding-left:10px;">交货地址：</td>
						<td >
						    <input id="deliveryAdd" name="deliveryAdd" class="spinner" style="width:168px;" value="${purchaseOrderData.deliveryAdd}" readonly="readonly"/>
						</td>
				        <td style="padding-left:10px;">是否开发票：</td>
						<td>
							<input id="invoice" name="invoice" class="spinner" style="width:168px" value="${purchaseOrderData.invoice }"  readonly="readonly"/>
						</td>
					 </tr> 
					  <tr> 
				        <td style="padding-left:10px;">发票类别：</td>
						<td >
						    <input id="invoiceTypeId" name="invoiceTypeId" class="spinner" style="width:168px;" value="${purchaseOrderData.invoiceTypeId}" readonly="readonly"/>
						</td>
				        <td style="padding-left:10px;">开票状态：</td>
						<td>
							<input id="invState" name="invState" class="spinner" style="width:168px" value="${purchaseOrderData.invState }"  readonly="readonly"/>
						</td>
					 </tr> 
					  <tr> 
				        <td style="padding-left:10px;">总金额：</td>
						<td >
						    <input id="totalAmount" name="totalAmount" class="spinner" style="width:168px;"   value="<fmt:formatNumber value='${purchaseOrderData.totalAmount}' pattern="#,#00.00元"/>"readonly="readonly"/>
						</td>
				        <td style="padding-left:10px;">到货状态：</td>
						<td>
							<input id="arrState" name="arrState" class="spinner" style="width:168px" value="${purchaseOrderData.arrState }"  readonly="readonly"/>
						</td>
					 </tr>  
					  <tr>
					    <td style="padding-left:10px;">付款状态：</td>
						<td><input id="payState"  name="payState" class="spinner" style="width:168px"  value="${purchaseOrderData.payState}"  readonly="readonly"/></td>
					    <td style="padding-left:10px;">未到货金额：</td>
						<td><input name="notArrAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.notArrAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					</tr>
					
					<tr>
					    <td style="padding-left:10px;">已到货金额：</td>
						<td><input name="alrArrAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.alrArrAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					    <td style="padding-left:10px;">未付款金额：</td>
						<td><input name="notPayAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.notPayAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					 </tr>
					 <tr>
					 <td style="padding-left:10px;">已付款金额：</td>
						<td><input name="alrPayAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.alrPayAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					    <td style="padding-left:10px;">未开票金额：</td>
						<td><input name="notInvAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.notInvAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					 </tr>
					 <tr>
					    <td style="padding-left:10px;">已开票金额：</td>
						<td><input name="alrInvAmo" class="spinner" style="width:168px" value="<fmt:formatNumber value='${purchaseOrderData.alrInvAmo}' pattern="#,#00.00元"/>" readonly="readonly"/></td>
					   
					    <td style="padding-left:10px;">共享人：</td>
						<td >
						    <input id="sharedPeopleId" name="sharedPeopleId" class="spinner" style="width:168px;" value="${purchaseOrderData.sharedPeopleId}" readonly="readonly"/>
						</td>
					  </tr> 
					   <tr>   
				     <td style="padding-left:10px;">更新人：</td>
					 <td><input class="spinner" style="width:168px"   value="${purchaseOrderData.updater}" readonly="readonly"/></td>
				     <td style="padding-left:10px;">更新时间：</td>
					 <td><input class="spinner" style="width:168px"  value="<fmt:formatDate value="${purchaseOrderData.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"  readonly="readonly"/></td>
				    </tr>
					  <tr>
					      <td style="padding-left:10px;">附件：</td>
					      <td colspan="3"> <textarea   name="accessory" class="spinner" style="width:435px;" readonly="readonly" >${purchaseOrderData.accessory}</textarea></td>
				  	  </tr>  
			</table>
		</fieldset>
    </div> 
</form>
<script type="text/javascript"> 

$('#purchase_mgr_purchaseOrder_form').tabs({
	border:true,
	onSelect:function(){
		$("div").remove(".validatebox-tip");//解决关闭窗体偶尔出现验证条bug
	}
}); 

$('#purchase_mgr_purchaseOrder_form_auditState').val(renderGridValue('${purchaseOrderData.auditState}',fields.auditState)); 
$('#payState').val(renderGridValue('${purchaseOrderData.payState}',fields.payState));
$('#arrState').val(renderGridValue('${purchaseOrderData.arrState}',fields.arrState));
$('#invState').val(renderGridValue('${purchaseOrderData.invState}',fields.invState));
$('#invoiceTypeId').val(renderGridValue('${purchaseOrderData.invoiceTypeId}',fields.invoiceTypeId));
$('#invoice').val(renderGridValue('${purchaseOrderData.invoice}',fields.yesOrNo));
$('#orderState').val(renderGridValue('${purchaseOrderData.orderState}',fields.orderState));
$('#enabled').val(renderGridValue('${purchaseOrderData.enabled}',fields.status));
</script> 