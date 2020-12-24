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
                           	 Product List
                           	 <button id='regBtn' type="button" class="btn btn-xs pull-right">Register New Product</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#번호</th>
                                        <th>제품명</th>
                                        <th>종류</th>
                                        <th>제조사</th>
                                        <th>가격</th>
			<th>판매가격</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${list}" var="product">
                                    <tr class="odd gradeX">
                                        <td><c:out value="${product.pid}"/></td>
                                        <td>
                                        <a href='/product/get?pid=<c:out value="${product.pid}"/>'>
                                        <c:out value="${product.pname}"/>
                                        </a>
                                        </td>
                                        <td><c:out value="${product.psort}"/></td>
                                        <td><c:out value="${product.manufacture}"/></td>
                                        <td><c:out value="${product.price}"/></td>
                                        <td><c:out value="${product.saleprice}"/></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            
                            <!-- Modal 추가 -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                        </div>
                                        <div class="modal-body">처리가 완료되었습니다!!</div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->

<script type="text/javascript">
$(document).ready(
		function(){
			var result = '<c:out value="${result}"/>';
			checkModal(result);
			/* 뒤로 가기가 되면 모달창을 뛰우지 않도록 */
			history.replaceState({}, null, null);
			function checkModal(result){
				if(result===''|| history.state){
					return;
				}
				if(parseInt(result) > 0) {
					$(".modal-body").html(
					"상품 " + parseInt(result) +" 번이 등록되었습니다.");
				}
				$("#myModal").modal("show");
			}
			
			
			/**등록버튼 선택시 등록 화면으로 분기 */
			$("#regBtn").on("click", function(){
				self.location="/product/register";
			});
		});

</script>            
            
<%@ include file="../includes/footer.jsp" %>
    