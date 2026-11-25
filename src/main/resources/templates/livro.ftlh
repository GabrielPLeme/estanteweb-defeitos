<#include "cabecalho.ftlh">


<#if !livro??>
    <h1>LIVRO NÃO EXISTE</h1>
<#else>

    <h1>${livro.titulo}</h1>

    <ul>
        <li>Autor: ${livro.autor}</li>
        <li>Ano: ${livro.ano?c}</li>
        <li>Preço: R$ ${livro.preco?string("0.00")}</li>
    </ul>

    <#if usuarioLogado??>
        <p>
            <a href="/livros/${livro.id?c}/editar">Editar</a>
            <a href="/livros/${livro.id?c}/excluir">Excluir</a>
        </p>
    </#if>

</#if>


<p><a href="/livros/html">Voltar para o acervo</a></p>

</body>
</html>
