<%@page import="cadastroee.model.Produto;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados do Produto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body class="container">
        <h1>Dados do Produto</h1>
        <form class="form" action="ServletProdutoFC" method="post">
            <%
                Produto p = (Produto)request.getAttribute("produto");
                String acao = (p == null) ? "incluir" : "alterar";
                if(acao.equals("alterar")){
            %>
            <input type="hidden" name="id" value="<%=p.getId()%>"/>
            <%}%>
            <input type="hidden" name="acao" value="<%=acao%>"/>
            <div class="mb-3">
                <label class="form-label" for ="nome">Nome:</label>
                <input class="form-control" type="text" name="nome" value='<%=(p!=null)?p.getNome():""%>'/>
            </div>
            <div class="mb-3">
                <label class="form-label" for ="quantidade">Quantidade:</label>
                <input class="form-control" type="text" name="quantidade" value='<%=(p!=null)?p.getQuantidade():""%>'/>
            </div>
            <div class="mb-3">
                <label class="form-label" for ="precovenda">Preço de Venda:</label>
                <input class="form-control" type="text" name="precovenda" value='<%=(p!=null)?p.getPrecoVenda():""%>'>
            </div>
            <input class="btn btn-primary" type="submit" value="Adicionar Produto"/>    
        </form>
    </body>
</html>
