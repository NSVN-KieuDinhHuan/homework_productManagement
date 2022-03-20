<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        tr,th,td{
            text-align: center;
        }
    </style>
</head>
<body>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
        　　　　<section class="content">
            　　　<div class="container-fluid">
                <h1>Danh sách sản phẩm</h1>
                <a  style="margin-bottom: 20px" class="btn btn-primary float-end" href="/add">Tạo mới sản phẩm</a>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Màu Sắc</th>
                        <th scope="col">Mô tả sản phẩm</th>
                        <th scope="col"> danh mục</th>
                        <th colspan="2"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="product" varStatus="loop" items="${products}">
                        <tr>
                            <td>${loop.count}</td>
                            <td><a href="/view/${product.id}">${product.name}</a></td>
                            <td>${product.price}</td>
                            <td>${product.quantity}</td>
                            <td>${product.color}</td>
                            <td>${product.description}</td>
                            <td>${product.categoryId}</td>
                            <td>
                                <a class="btn btn-info" href="/edit/${product.id}">
                                    <i class="fa fa-edge-legacy"> edit</i>
                                </a>
                            </td>
                            <td><a class="btn btn-danger" href="/delete/${product.id}"><i class="fa fa-trash-o"> delete</i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.container-fluid -->
     　　　　   </section>
        <!-- /.content -->
            <div class="col-md-1"></div>
        </div>
        </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
