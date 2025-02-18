<%@ page import="java.util.Date" %>
<%@ page import="com.gr25.thinkpro.utils.DateUtils" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="DACN - Dự án laptopshop" />
    <meta name="author" content="DACN" />
    <title>ADMIN</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Quản lý đơn hàng</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Đơn hàng</li>
                </ol>
                <div class="mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="d-flex">
                                <h3>Bảng đơn hàng</h3>
                            </div>

                            <hr />
                            <c:if test="${ empty orders}">
                                <tr>
                                    <td colspan="6">
                                        Không có đơn hàng nào
                                    </td>
                                </tr>
                            </c:if>
                            <c:if test="${ not empty orders}">


                            <table class=" table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>Mã đơn</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày đặt hàng</th>
                                    <th>Người nhận</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${orders}">
                                    <tr>
                                        <th>${order.billId}</th>
                                        <td>
                                            <fmt:formatNumber type="number"
                                                              value="${order.total}" /> đ
                                        </td>
                                        <td>

                                            <fmt:formatDate value="${order.getCreatedAt()}" pattern="yyyy-MM-dd HH:mm:ss" />
                                        </td>
                                        <td>${order.receiverName}</td>
                                        <td>
                                            <c:if test="${order.status == 'PENDING'}">
                                               Đang giao hàng
                                            </c:if>
                                            <c:if test="${order.status == 'WAITING'}">
                                                Chờ xác nhận
                                            </c:if>
                                            <c:if test="${order.status == 'CONFIRMED'}">
                                                Đã xác nhận
                                            </c:if>
                                            <c:if test="${order.status == 'COMPLETED'}">
                                                Giao hàng thành công
                                            </c:if>
                                            <c:if test="${order.status == 'CANCELLED'}">
                                                Đã hủy
                                            </c:if>
                                            <c:if test="${order.status == 'REJECTED'}">
                                                Từ chối
                                            </c:if>
                                        </td>
                                        <td>
                                            <a href="/admin/order/${order.billId}"
                                               class="btn btn-success">Chi tiết</a>

                                        </td>
                                    </tr>

                                </c:forEach>

                                </tbody>
                            </table>
                            <c:if test="${totalPages > 0}">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item">
                                        <a class="${1 eq currentPage ? 'disabled page-link' : 'page-link'}"
                                           href="/admin/order?page=${currentPage - 1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                        <li class="page-item">
                                            <a class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
                                               href="/admin/order?page=${loop.index + 1}">
                                                    ${loop.index + 1}
                                            </a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="${totalPages eq currentPage ? 'disabled page-link' : 'page-link'}"
                                           href="/admin/order?page=${currentPage + 1}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            </c:if>
                            </c:if>
                        </div>

                    </div>

                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>

</body>

</html>