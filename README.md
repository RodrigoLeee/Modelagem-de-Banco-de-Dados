# Modelagem de Banco de Dados
## Descrição
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Proposta de um modelo de banco de dados para o projeto em grupo com a Parceiros Voltuntários. Base de dados relacional construída utilizando o "SQL Designer"(https://github.com/ondras/wwwsqldesigner).

## Objetivo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Construir uma proposta para um modelo de banco de dados relacional, para um MVP (Minimum Viable Product), de uma plataforma VTM que armazena dados de usuários e postagens. Também permite filtrar e pesquisar por "publicações em geral" ou "ações" no feed. Além disso, a plataforma possui a funcionalidade de "amizades/conexões", que permite que o usuário veja postagens no seu feed de pessoas que estão conectadas como amigos. 

## Diagrama
### Descrição Tabelas
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tabela que possui descrições sobre as funcionalidades das tabelas do banco de dados relacional
<div align="center">
<sub>Tabela 22 - Tabela de bancos de dados </sub>
</div>

| Tabela                        | Descrição                                                                                                                                                                                                                                                                   |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| users                         | Essa tabela armazena os dados sobre os usuários. Inclui informações como nome, email, senha, cidade, estado, imagem de perfil, descrição do perfil e tipo de usuário. Cada registro nesta tabela representa um usuário individual. |
| type_users                    | Essa tabela define o tipo de usuário. Possibilidades incluem: Voluntário e Organização Não Governamental (ONG). Cada registro nesta tabela identifica o tipo de usuário ao qual um determinado id da tabela "users" pertence.      |
| actions                       | Lista de tipos de ações voluntárias disponíveis na plataforma. Cada registro representa um tipo de atividade específica que os usuários podem ter interesse em realizar. |
| feed_and_community            | Tabela que guarda posts e seus respectivos dados. Informações como: conteúdo da postagem, data, imagem, e titulo do post.   |
| type_posts                    | Especifica se posts da tabela "feed_and_community" são publicações gerais ou de ações sociais/voluntárias.      |
| news_feed_actions             | Especifica o que são posts de ações sociais/voluntárias da tabela "feed_and_community". Permite a filtração entre posts gerais ou de ações. |
| connections            | Guarda as 'conexões' que o 'user' possui com outros usuários. Uma forma de amizade na plataforma.|
| news_feed_connections             | Especifica posts feitos por outros usuário que o 'user' possui amizade, permitindo que seja mostrado posts feitos por 'conexões' na plataforma.|
<div align="center">
<sup>Fonte: Material produzido pelos autores (2024)</sup>
</div>

### Sobre Conexões
users : feed_and_community (1:N)
<br>
users : connections (1:N)
<br>
users : type_users (1:1)
<br>
connections : news_feed_connections (1:N)
<br>
feed_and_community : news_feed_connections (1:N)
<br>
feed_and_community : news_feed_actions (1:N)
<br>
feed_and_community : type_posts (1:1)
<br>
news_feed_actions : actions (1:1)



### Diagrama 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qsdasdasdasdasdasdasfsegsdfsadfasda
<div align="center" width="100%">
<img src = "assets/DiagramaBase.png " alt="Diagrama da Base de Dados">
<sup>Figura 1: Diagrama da Base de Dados, Fonte: Material produzido pelos autores (2024)</sup>
</div>


