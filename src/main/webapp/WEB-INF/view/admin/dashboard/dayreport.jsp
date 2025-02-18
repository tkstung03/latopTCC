<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/4.1.0/apexcharts.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">THỐNG KÊ NGÀY ${date} </h1>
                <script src="https://jsuites.net/v5/jsuites.js"></script>
                <link rel="stylesheet" href="https://jsuites.net/v5/jsuites.css" type="text/css" />

                <input id='calendar' style="width: 150px;border-radius: 10px; padding: 10px;border: 1px solid #ccc; font-size: 16px;"/>
                <div id='log'></div>

                <script>

                    // Enable the year and month picker
                    jSuites.calendar(document.getElementById('calendar'), {
                        type: 'calendar',
                        format: 'DD-MM-YYYY',
                        validRange: [ '2024-02-01', '2025-12-31' ],
                        placeholder: 'Chọn ngày',
                        onchange: function(instance, value) {
                            document.getElementById('log').innerText = 'New value is: ' + value;
                            const dateOnly = value.substring(0, 10);
                            console.log(dateOnly);
                            const url = `/admin/day/` + dateOnly;
                            window.location.href = url;
                        }
                    });
                </script>
                <ol class="breadcrumb mb-4">

                </ol>
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card mb-4">
                            <div class="card-body font-weight-bold2 d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-uppercase">Doanh thu</div>
                                    <div class="font-weight-bold">${totalRevenue}</div>
                                </div>
                                <span class="material-symbols-outlined text-success icon-large">payments</span>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between bg-success">
                                <a class="small text-white stretched-link" href="#">Chi tiết</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card mb-4">
                            <div class="card-body font-weight-bold2 d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-uppercase">Khách hàng mới</div>
                                    <div class="font-weight-bold">${totalCustomer}</div>
                                </div>
                                <span class="material-symbols-outlined text-primary icon-large">group</span>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between bg-primary">
                                <a class="small text-white stretched-link" href="#">Chi tiết</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card mb-4">
                            <div class="card-body font-weight-bold2 d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-uppercase">Đơn hàng</div>
                                    <div class="font-weight-bold">${totalBill}</div>
                                </div>
                                <span class="material-symbols-outlined text-warning icon-large">receipt_long</span>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between bg-warning">
                                <a class="small text-white stretched-link" href="#">Chi tiết</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card mb-4">
                            <div class="card-body font-weight-bold2 d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="text-uppercase">Sản phẩm mới</div>
                                    <div class="font-weight-bold">${totalProduct}</div>
                                </div>
                                <span class="material-symbols-outlined text-danger icon-large">inventory_2</span>
                            </div>
                            <div class="card-footer d-flex align-items-center justify-content-between bg-danger">
                                <a class="small text-white stretched-link" href="#">Chi tiết</a>
                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-bar me-1"></i>
                                Thị phần các nhãn hàng
                            </div>
                            <div class="card-body">
                                <div id="pie-chart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Top sản phẩm
                            </div>
                            <div class="card-body">
                                <table id="datatabledate">
                                    <thead>
                                    <tr>
                                        <th>Mã sản phẩm</th>
                                        <th>Tên</th>
                                        <th>Nhà sản xuất</th>
                                        <th>Giá</th>
                                        <th>Doanh số</th>
                                    </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <h1>Xuất PDF</h1>
                    <button onclick="downloadPdfDay('${date}')">Tải xuống</button>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
<script src="/js/monthpicker.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>



<script>
    // Parse data passed from the server
    const pieChartDataC = {
        series: [],
        labels: []
    };

    // Format data for ApexCharts
    <c:forEach var="datapie" items="${pieChartData}">
    console.log(${datapie.marketShare});
    pieChartDataC.series.push(${datapie.marketShare});
    console.log("${datapie.name}");
    pieChartDataC.labels.push("${datapie.name}");
    </c:forEach>;

    // Render the pie chart
    const options2 = {
        chart: {
            type: 'pie',
            height: 358
        },
        series: pieChartDataC.series,
        labels: pieChartDataC.labels,
    };

    const chart2 = new ApexCharts(document.querySelector("#pie-chart"), options2);
    chart2.render();
</script>

<script>
    let dataTableDate; // Global variable to hold the DataTable instance

    async function loadDataDate(date, orderBy = 'DESC') {
        try {
            const response = await fetch(`/admin/day/top-products?date=`+date+`&orderBy=` + orderBy);
            const data = await response.json();

            console.log(data);
            const products = data;

            const tableBody = document.querySelector("#datatabledate tbody");
            tableBody.innerHTML = ""; // Clear existing rows

            // Populate the table
            products.forEach(product => {
                const row = tableBody.insertRow(); // Create a new row

                // Add cells to the row
                const cellId = row.insertCell(0);
                const cellName = row.insertCell(1);
                const cellCategory = row.insertCell(2);
                const cellPrice = row.insertCell(3);
                const cellSales = row.insertCell(4);

                // Fill the cells with data
                cellId.textContent = product.productId;
                cellName.textContent = product.name;
                cellCategory.textContent = product.categoryName;
                cellPrice.textContent = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(product.price);
                cellSales.textContent = product.totalSales;
            });

            // Initialize or refresh Simple-DataTables
            if (dataTableDate) {
                // If already initialized, refresh it
                dataTableDate.refresh();
            } else {
                // Initialize the DataTable
                dataTableMonthDate = new simpleDatatables.DataTable("#datatabledate", {
                    labels: {
                        placeholder: "Tìm kiếm...", // Custom placeholder text
                        perPage: "Số lượng hiển thị trên một trang", // Customize "entries per page"
                        info: "Hiển thị {start} đến {end} trong tổng số {rows} mục"
                    }
                });
            }
        } catch (error) {
            console.error("Error loading data:", error);
        }
    }

    // Load default data on page load
    document.addEventListener("DOMContentLoaded", () => {
        loadDataDate('${date}',"DESC");
    });
</script>
<script>
    async function downloadPdfDay(date) {
        try {
            const urlday = '/admin/day/export/' + date;
            const response = await fetch(urlday, {
                method: 'GET',
                headers: {
                    'Accept': 'application/pdf'
                }
            });

            if (!response.ok) {
                throw new Error('Failed to download PDF');
            }

            // Convert the response to a Blob
            const blob = await response.blob();

            // Create a temporary URL for the Blob
            const url = window.URL.createObjectURL(blob);

            // Create a temporary link element
            const a = document.createElement('a');
            a.href = url;
            a.download = 'products.pdf'; // Set the filename
            document.body.appendChild(a);
            a.click(); // Trigger the download
            a.remove(); // Remove the link from the DOM

            // Revoke the temporary URL
            window.URL.revokeObjectURL(url);
        } catch (error) {
            console.error('Error downloading the PDF:', error);
            alert('Failed to download the PDF.');
        }
    }
</script>



</body>

</html>