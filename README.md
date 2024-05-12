# Modelagem de Banco de Dados
## Descrição
### Descrição
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Proposta de um modelo de banco de dados para o projeto em grupo com a Parceiros Voltuntários. Base de dados relacional construída utilizando o "SQL Designer"(https://github.com/ondras/wwwsqldesigner).

## Diagrama
### Descrição Tabelas
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qsdasdasdasdasdasdasfsegsdfsadfasda
<div align="center">
<sub>Tabela 22 - Tabela de bancos de dados </sub>
</div>

| tabela                        | descrição                                                                                                                                                                                                                                                                   |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| users                         | Essa tabela armazena os dados sobre os usuários. inclui informações como nome, email, senha, cidade, estado, imagem de perfil, descrição do perfil e tipo de usuário. Cada registro nesta tabela representa um usuário individual. |
| type_users                    | Essa tabela define o tipo de usuário. Possibilidades incluem: voluntário e organização não governamental (ONG). Cada registro nesta tabela identifica o tipo de usuário ao qual um determinado id da tabela "users" pertence.      |
| actions                       | Lista de tipos de ações voluntárias disponíveis na plataforma. Cada registro representa um tipo de atividade específica que os usuários podem ter interesse em realizar. |
| feed_and_community            | Tabela que guarda posts e seus respectivos dados. Informações como: conteúdo da postagem, data, imagem, e titulo do post.   |
| type_posts                    | Especifica se posts da tabela "feed_and_community" são publicações gerais ou de ações sociais/voluntárias.      |
| news_feed_actions             | ´(Específica o que são posts de ações sociais/voluntárias da tabela "feed_and_community". Permite a filtração de posts gerais e de ações. |
| connections            |       |
| news_feed_connections             |       |
<div align="center">
<sup>Fonte: Material produzido pelos autores (2024)</sup>
</div>

### Sobre Conexões
users : feed_and_community (1:N)
<br>
users : connections (
<br>
users : typer_users
<br>
connections : news_feed_connections
<br>
feed_and_community : news_feed_connections
<br>
feed_and_community : news_feed_actions
<br>
feed_and_community : type_posts
<br>
news_feed_actions : actions



### Diagrama 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qsdasdasdasdasdasdasfsegsdfsadfasda
<div align="center" width="100%">
<img src = "assets/DiagramaBase.png " alt="Diagrama da Base de Dados">
<sup>Figura 1: Diagrama da Base de Dados, Fonte: Material produzido pelos autores (2024)</sup>
</div>


