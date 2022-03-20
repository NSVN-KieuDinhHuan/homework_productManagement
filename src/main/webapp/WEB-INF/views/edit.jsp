<%--
  Created by IntelliJ IDEA.
  User: quan
  Date: 04/03/2022
  Time: 09:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
    <a href="/products">Danh sách sản phẩm</a>
    <div style="text-align: center;color: red;font-size: 20px">
        <c:if test="${message!=null}">
            <p class="alert alert-success">${message}</p>
        </c:if>

    </div>
    <h1>Cập nhật sản phẩm</h1>
    <form  method="post">
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="name" value="${product.name}" >
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá sản phẩm:</label>
            <input type="text" class="form-control" id="price" name="price" value="${product.price}" >
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Số lương :</label>
            <input type="text" class="form-control" id="quantity" name="quantity" value="${product.quantity}" >
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Màu săc :</label>
            <input type="text" class="form-control" id="color" name="color" value="${product.color}" >
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Mô tả sản phẩm:</label>
            <input type="text" class="form-control" id="description" name="description" value="${product.description}" >
        </div>

        <div class="mb-3">
            <label for="category" class="form-label">danh mục sản phẩm:</label>

            <select class="form-control" id="category" name="categoryId" value="2">
                <c:forEach var="category" items="${categories}">
                    <c:if test = "${category.id==product.categoryId}">
                        <option selected="selected" value="${category.id}">${category.name}</option>
                    </c:if>
                    <c:if test = "${category.id!=product.categoryId}">
                        <option value="${category.id}">${category.name}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a class="btn btn-primary float-end" href="/products">Back</a>
    </form>
        </div>
            <div class="col-md-2">
            </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
