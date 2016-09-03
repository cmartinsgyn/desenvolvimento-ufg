<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@ include file="metodos-jsp.jsp" %>

<head>
<title>Cálculo de IMC</title>
</head>
<body>
	<h1>Cálculo de IMC</h1>
	<form>
		Peso: <input type="text" name="peso" value="${param.peso}"><br>
		Altura: <input type="text" name="altura" value="${param.altura}"><br>
		Sexo: <input type="text" name="sexo" value="${param.sexo}"><br>
		<button>Calcular</button>
	</form>
<%
//Scriptlet.
String pesoStr = request.getParameter("peso");
float peso = pesoStr == null || pesoStr.isEmpty() ? 0 : Float.parseFloat(pesoStr);
String alturaStr = request.getParameter("altura");
float altura = alturaStr == null || alturaStr.isEmpty()? 0 : Float.parseFloat(alturaStr);
String sexo = request.getParameter("sexo");
if (sexo == null) {
  %><b>Informe o sexo.</b><%
} else {
  %><b><%=resultadoImc(calcularImc(peso, altura), sexo)%></b><%
}
%>
</body>
</html>