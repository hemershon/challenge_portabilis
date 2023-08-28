# Sistema Desenvolvido para a Empresa Portabilis: Análise e Técnicas Utilizadas

Este documento descreve o sistema desenvolvido para a Empresa Portabilis, incluindo as técnicas e ferramentas utilizadas durante o processo de desenvolvimento.

## Detalhes do Sistema

- **Tecnologia**: Ruby on Rails
- **Versão do Ruby**: 3.2.2
- **Versão do Rails**: 7

## Gems Utilizadas

Para agilizar o desenvolvimento, utilizamos diversas gems que desempenharam papéis importantes no sistema:

1. **bootstrap_sb_admin_base_v2**: Essa gem foi fundamental para aprimorar o frontend do sistema. Utilizamos um template pré-pronto para acelerar o desenvolvimento e proporcionar uma experiência agradável ao usuário.

2. **Devise**: O Devise foi escolhido para gerenciar a autenticação de usuários, fornecendo uma camada de segurança sólida para permitir o login e o acesso controlado ao sistema.

3. **Pundit**: Adotamos o Pundit para definir permissões de usuários. Embora tenhamos considerado outra gem, o Cancancan, optamos pelo Pundit devido à sua flexibilidade e adequação às nossas necessidades específicas de controle de acesso.

4. **simple_form**: Utilizamos o Simple Form para aprimorar a usabilidade do sistema e acelerar a criação de formulários, economizando tempo e recursos.

5. **Kaminari**: Para simplificar a paginação de usuários, implementamos o Kaminari, tornando a navegação pelos registros mais eficiente.

6. **devise_token_auth**: Para autenticação via API, implementamos a gem Devise Token Auth. Isso permitiu uma autenticação segura dos usuários e a interação com o sistema por meio de APIs.

Além dessas gems essenciais, outras foram adicionadas para fornecer soluções adicionais.

## Usuários de Teste

Para facilitar a avaliação do sistema, foram criados dois tipos de usuários de teste:

**Administrador**
- **Login**: admin@admin.com
- **Senha**: 123456

**Usuário Comum**
- **Login**: user@teste.com
- **Senha**: 123456

## Inicialização do Sistema

Para iniciar o sistema, execute os seguintes comandos:

```bash
rails db:create db:migrate db:seed dev:setup
