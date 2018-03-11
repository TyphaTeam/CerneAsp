<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>FPDF</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>FPDF</h1>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>fpdf.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                	<li>FPDF v1.7</li>
                </ul>
            </li>
        </ul>
        <p>Atenção: Para consultar a documentação complementar <a href="../assets/lib/fpdf/1.7/manual/index.htm">clique aqui!</a></p>
		<h2>Exemplo 1</h2>
        <%
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "botao4"
			objBotao.icone = "glyphicon glyphicon-print"
			objBotao.adicionarAcaoJavascript "click", "function(){" & _
						" window.open('fpdfExemplo1.asp', '_self'); " &_
						"}"
			objBotao.tooltipTitulo = "javascript"
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
            Set pdf = CreateJsObject("FPDF")
            pdf.CreatePDF "L","mm","A4"	
            pdf.SetPath("../assets/lib/fpdf/1.7/")
            pdf.Open()
            pdf.AddPage()
            
            pdf.Image "C:/inetpub/wwwroot/sissupri/cerne/2.0.0/assets/img/logo.jpg",10,10,20
            
            pdf.ln 10
            
            pdf.SetFont "Arial","B",10
            
            pdf.Cell 27,7, "Título",1,0
            pdf.Cell 250,7, "Texto",1,1
            
            pdf.SetFont "Arial","",10
            
            pdf.Cell 27,7, "Lorem Ipsum",1,0
            pdf.Cell 250,7, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",1,1
            
            pdf.Cell 27,7, "Lorem Ipsum",1,0
            pdf.Cell 250,7, "Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Integer molestie ultrices lacinia. Mauris pulvinar risus sit amet pulvinar interdum. ",1,1
            
            pdf.Close()
            pdf.Output()
		</code>
        </pre>
		<h2>Exemplo 2 <small>Salvar PDF no banco de dados</small></h2>
        <br><br>
        <pre>
            <code>
                Set pdf = CreateJsObject("FPDF")
                pdf.CreatePDF "L","mm","A4"	
                pdf.SetPath("../assets/lib/fpdf/1.7/")
                pdf.Open()
                pdf.AddPage()
                
                pdf.Image "C:/inetpub/wwwroot/sissupri/cerne/2.0.0/assets/img/logo.jpg",10,10,20
                
                pdf.ln 10
                
                pdf.SetFont "Arial","B",10
                
                pdf.Cell 27,7, "Título",1,0
                pdf.Cell 250,7, "Texto",1,1
                
                pdf.SetFont "Arial","",10
                
                pdf.Cell 27,7, "Lorem Ipsum",1,0
                pdf.Cell 250,7, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",1,1
                
                pdf.Cell 27,7, "Lorem Ipsum",1,0
                pdf.Cell 250,7, "Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Integer molestie ultrices lacinia. Mauris pulvinar risus sit amet pulvinar interdum. ",1,1
                pdf.Close()
                pdfBinario = Utilitarios_transformarStringEmBytes(pdf.getBuffer())
                
                set oConexao = new SQL
                strSQL = "insert into [pdf] (arquivo) values (?);"
                oConexao.executar strSQL,array(pdfBinario) 
                oConexao.fecharConexao()
                set oConexao =  nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>Exibir PDF do banco de dados</small></h2>
        <br><br>
        <pre>
            <code>
                id = request("id")
                set oConexao = new SQL
                strSQL = "select arquivo from [pdf] where id = ?;"
                set rs = oConexao.selecionar(strSQL,array(id))
                pdfBinario = rs(0)
                oConexao.fecharConexao()
                set oConexao =  nothing
                
                Response.Buffer = True
                Response.ContentType = "Application/pdf"
                Response.BinaryWrite pdfBinario
            </code>
        </pre>
        </div>
    </body>
</html>