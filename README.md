
# Instruções

Execute o comando ``bundle install`` para instalar as gems caso seja necessário

Em seguda, use o comando ``rails s`` para inicializar o servidor e acesse pelo endereço http://localhost:3000/


## Base de dados e explicações complementares
- [Fonte de dados (pegar em formato CSV)]
(https://dadosabertos.camara.leg.br/swagger/api.html#staticfile)
- [Explicação dos campos do arquivo CSV]
(https://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/explicacoes-sobre-o-formato-dos-arquivos-xml)
- Considerar para fins de cálculos de despesa, o campo `vlrLiquido`. Esse é o valor que de fato foi debitado da cota do candidato;
- Dica para pegar a foto do político: **http://www.camara.leg.br/internet/deputado/bandep/{ideCadastro}.jpg**

<!--
## Requisitos Obrigatórios
- Possibilitar o upload do arquivo;
- Organizar os dados extraidos do arquivo em tabelas no banco de dados;
- Listagem dos deputados do seu estado;
- Mostrar o somatório dos seus gastos;
- Listar as despesas, mostrando a data(`datEmissao`), estabelecimento(`txtFornecedor`), valor(`vlrLiquido`), e link para a nota(`urlDocumento`);
- Destacar a maior despesa do candidato;
-->