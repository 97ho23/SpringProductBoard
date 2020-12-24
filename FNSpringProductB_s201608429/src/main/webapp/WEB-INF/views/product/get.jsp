<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Product Management </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           	Product Detail
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                                        <div class="form-group">
                                            <label>Pid</label>
                                            <input class="form-control" name='pid'
                                            value='<c:out value="${product.pid}"/>' readonly="readonly">                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Pname</label>
                                            <input class="form-control" name='pname'
                                            value='<c:out value="${product.pname}"/>' readonly="readonly">                                            
                                        </div>
                                       <div class="form-group">
                                            <label>Psort</label>
                                            <input class="form-control" name='psort'
                                            value='<c:out value="${product.psort}"/>'  readonly="readonly">                                             
                                        </div>
                                        <div class="form-group">
                                            <label>Manufacture</label>
                                            <input class="form-control" name='manufacture'
                                            value='<c:out value="${product.manufacture}"/>'  readonly="readonly">                                                 
                                        </div>
                                      <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" class="form-control" name='price'
                                            value='<c:out value="${product.price}"/>'  readonly="readonly">                                         
                                        </div>
                                      <div class="form-group">
                                            <label>SalePrice</label>
                                            <input type="text" class="form-control" name='saleprice'
                                            value='<c:out value="${product.saleprice}"/>' readonly="readonly">                                             
                                        </div>
                                        <div class="form-group">
                                            <label>Info </label>
                                            <textarea class="form-control" rows="3" name='info'
                                             readonly="readonly"><c:out value="${product.info}"/>
                                            </textarea>
                                        </div>                                                                                
                                       
                                       <button data-oper='modify' class="btn btn-default">Modify</button>
                                       <button data-oper='list' class="btn btn-info">List</button>
                                       
                                       <form id="operForm" action="/product/modify" mehtod="get">
                                       		<input type="hidden" id='pid' name='pid'
                                       		value='<c:out value="${product.pid}"/>'>
                                       </form>                                                         
                         </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<script type="text/javascript">
$(document).ready(
	function() {
		var operForm = $("#operForm"); 
		$("button[data-oper='modify']").on("click", function(e){
			operForm.attr("action","/product/modify").submit();
	});
      
  	$("button[data-oper='list']").on("click", function(e){
			operForm.find("#bno").remove();
			operForm.attr("action","/product/list");
    		operForm.submit();
	});  
});
</script>    
<%@ include file="../includes/footer.jsp" %>
    