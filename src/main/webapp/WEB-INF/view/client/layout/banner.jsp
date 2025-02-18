<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Hero Start -->
<div class="container-fluid py-5 mb-5 hero-header">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-md-12 col-lg-5">
                <h4 class="mb-3 text-secondary">100% Sản Phẩm Chính Hãng</h4>
                <h1 class="mb-5 display-3 text-primary">Hàng cao cấp<br/> Rẻ vô địch</h1>
            </div>
            <div class="col-md-12 col-lg-7">
                <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active ">
                            <img src="/client/img/banner1.webp"
                                 class="img-fluid  bg-secondary rounded" alt="First slide">

                        </div>
                        <div class="carousel-item ">
                            <img src="/client/img/banner2.webp" class="img-fluid  rounded"
                                 alt="Second slide">

                        </div>
                        <div class="carousel-item ">
                            <img src="/client/img/banner3.webp" class="img-fluid  rounded"
                                 alt="Second slide">

                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselId"
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