<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Product Management  </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Product Modify
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form role="form" action="/product/modify" method="post">
                                        <div class="form-group">
                                            <label>Pid</label>
                                            <input class="form-control" name='pid'
                                            value='<c:out value="${product.pid}"/>' readonly="readonly">                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Pname</label>
                                            <input class="form-control" name='pname'
                                            value='<c:out value="${product.pname}"/>' >                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Psort</label>
                                            <input class="form-control" name='psort'
                                            value='<c:out value="${product.psort}"/>' >                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Manufacture</label>
                                            <input class="form-control" name='manufacture'
                                            value='<c:out value="${product.manufacture}"/>' >                                            
                                        </div>
                                       <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" class="form-control" name='price'
                                            value='<c:out value="${product.price}"/>' >                                            
                                        </div>
                                       <div class="form-group">
                                            <label>SalePrice</label>
                                            <input type="text" class="form-control" name='saleprice'
                                            value='<c:out value="${product.saleprice}"/>' >                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Info </label>
                                            <textarea class="form-control" rows="3" 
                                            name='info'><c:out value="${product.info}"/>
                                            </textarea>
                                        </div>                                                                               
                                        <div class="form-group">
                                            <label>RegDate</label>
                                            <input class="form-control" name='regDate' 
                                            value='<fmt:formatDate pattern="yyyy/MM/dd" 
                                            value="${product.regdate}"/>' readonly="readonly">
                                        </div> 
                                        <div class="form-group">
                                            <label>UdateDate</label>
                                            <input class="form-control" name='updateDate' 
                                            value='<fmt:formatDate pattern="yyyy/MM/dd" 
                                            value="${product.updatedate}"/>' readonly="readonly">
                                        </div>
                                       <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
                                       <button type="submit" data-oper='remove' class="btn btn-danger">remove</button>
                                       <button type="submit" data-oper='list' class="btn btn-info">List</button> 
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
$(document).ready(function() {
	var formObj = $("form");
	 $('button').on("click", function(e){
		e.preventDefault(); 
	    var operation = $(this).data("oper");
	    console.log(operation);

	    if(operation === 'remove'){
	      formObj.attr("action", "/product/remove");
	    }
	    else if(operation === 'list')
	    {
	      //move to list
		  self.location="/product/list";
	      return;
	    }	    
	    formObj.submit(); //수정
	 });
});
</script>
<%@ include file="../includes/footer.jsp" %>
    