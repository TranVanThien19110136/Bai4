<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>
<body>
	<div class="background-ex3-1">
		<div class="container-ex3-1">

			<h1>Your cart</h1>

			<table>
				<tr>
					<th>Quantity</th>
					<th>Description</th>
					<th>Price</th>
					<th>Amount</th>
					<th></th>
				</tr>
				<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<c:forEach var="item" items="${cart.items}">
					<tr>
						<td>
							<form action="" method="post">
								<input type="hidden" name="productCode"
									value="<c:out value='${item.product.code}'/>"> <input
									type="text" name="quantity"
									value="<c:out value='${item.quantity}'/>" id="quantity">
								<input class="btn-begin-ex3-1" type="submit" value="Update">
							</form>
						</td>
						<td><c:out value='${item.product.description}' /></td>
						<td>${item.product.priceCurrencyFormat}</td>
						<td>${item.totalCurrencyFormat}</td>
						<td>
							<form action="" method="post">
								<input type="hidden" name="productCode"
									value="<c:out value='${item.product.code}'/>"> <input
									type="hidden" name="quantity" value="0"> <input
									class="btn-begin-ex3-1" type="submit" value="Remove Item">
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>

			<p>
				<b>To change the quantity</b>, enter the new quantity and click on
				the Update button.
			</p>

			<form action="" method="post">
				<input type="hidden" name="action" value="shop"> <input
					class="btn-end-ex3-1" type="submit" value="Continue Shopping">
			</form>

			<form action="" method="post">
				<input type="hidden" name="action" value="checkout"> <input
					class="btn-end-ex3-1 btn-end1-ex3" type="submit" value="Checkout">
			</form>

			<a class="return-home"
				href="https://shopgroup7.herokuapp.com/index#features-sec">
				<button class="btn-end-ex3-1 btn-end2-ex3">Return List of
					Exercises</button>
			</a>
		</div>
	</div>

</body>
</html>