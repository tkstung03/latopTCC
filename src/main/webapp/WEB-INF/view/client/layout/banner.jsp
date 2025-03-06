<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Hero Start -->
<div class="container-fluid py-4 mb-5 hero-header">
    <div class="container py-3">
        <div class="row g-5 align-items-center">
            <div class="col-md-12 col-lg-4">
                <h4 class="mb-2 text-primary">100% Sản Phẩm Chính Hãng</h4>
                <h1 class="mb-2 display-6 text-danger"><i>HÀNG CAO CẤP<br/> RẺ VÔ ĐỊCH!!!</i></h1>
            </div>
            <div class="col-md-12 col-lg-8">
                <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active" onclick="window.location.href='http://localhost:8080/product/14';" style="cursor: pointer;">
                                <img src="/client/img/1.jpg" class="img-fluid bg-secondary rounded"
                                    alt="First slide">
                        </div>

                        <div class="carousel-item " onclick="window.location.href='http://localhost:8080/product/13';" style="cursor: pointer;">
                            <img src="/client/img/3.jpg" class="img-fluid  rounded"
                                 alt="Second slide">

                        </div>
                        <div class="carousel-item" onclick="window.location.href='http://localhost:8080/product/8';" style="cursor: pointer;">
                            <img src="/client/img/4.jpg" class="img-fluid  rounded"
                                 alt="Second slide">

                        </div>
                        <div class="carousel-item " onclick="window.location.href='http://localhost:8080/product/8';" style="cursor: pointer;">
                            <img src="/client/img/5.jpg" class="img-fluid  rounded"
                                 alt="Second slide">

                        </div>
                        <div class="carousel-item " onclick="window.location.href='http://localhost:8080/product/16';" style="cursor: pointer;">
                             <img src="/client/img/6.jpg" class="img-fluid  rounded"
                                  alt="Second slide">

                        </div>
                        <div class="carousel-item " onclick="window.location.href='http://localhost:8080/product/17';" style="cursor: pointer;">
                             <img src="/client/img/7.jpg" class="img-fluid  rounded"
                                  alt="Second slide">

                        </div>

                    </div>
                    <button class="carousel-control-prev bg-dark" type="button" data-bs-target="#carouselId"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next bg-dark" type="button" data-bs-target="#carouselId"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero End -->