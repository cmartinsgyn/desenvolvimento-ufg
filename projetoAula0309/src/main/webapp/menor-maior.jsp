<html>
<head>
<title>Menor/Maior</title>
</head>
<body>
	<h1>Menor/Maior</h1>
	<form>
		Idade: <input type="text" name="idade">
		<button>Calcular</button>
	</form>
<%
//Scriptlet.
String idadeStr = request.getParameter("idade");
//Se idadeStr for nula retorna "0" senão retorna a idade convertida.
int idade = idadeStr == null ? 0 : Integer.parseInt(idadeStr);
if (idade == 0) {
  %><b>Informe a idade.</b><%
} else if (idade >= 18) {
  %><b><%=idade%> é de uma pessoa MAIOR de idade.</b><%
} else {
  %><b><%=idade%> é de uma pessoa MENOR de idade.</b><%
}
%>
</body>
</html>
