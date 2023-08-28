# Sistema Desenvolvido para a Empresa Portabilis: Análise e Técnicas Utilizadas

Este documento descreve o sistema desenvolvido para a Empresa Portabilis, incluindo as técnicas e ferramentas utilizadas em seu desenvolvimento.

## Visão Geral do Sistema

O sistema foi construído utilizando o framework Ruby on Rails, com as seguintes versões de software:

- **Ruby**: 3.2.2
- **Ruby on Rails**: 7

## Gems Utilizadas

Para acelerar o desenvolvimento e aprimorar a funcionalidade do sistema, foram incorporadas diversas gems. Aqui estão algumas das principais:

1. **bootstrap_sb_admin_base_v2**: Esta gem foi fundamental para a melhoria do frontend do sistema. Utilizamos um template pré-pronto para agilizar o desenvolvimento e proporcionar ao sistema uma aparência agradável.

2. **Devise**: O Devise foi escolhido para gerenciar a autenticação de usuários. Ele oferece uma camada de segurança robusta, permitindo que os usuários façam login e acessem o sistema de forma segura e controlada.

3. **Pundit**: Para controlar as permissões dos usuários, optamos pelo uso do Pundit. Embora tenhamos considerado o CancanCan, o Pundit se destacou por sua flexibilidade e capacidade de atender às nossas necessidades específicas de controle de acesso.

4. **simple_form**: Utilizamos o Simple Form para simplificar a criação de formulários e melhorar a usabilidade do sistema. Isso nos permitiu criar formulários de maneira mais eficiente.

5. **Kaminari**: Para paginar os registros de usuários de forma simples e eficaz, integramos o Kaminari ao sistema.

6. **devise_token_auth**: Para autenticação via API, implementamos a gem Devise Token Auth. Isso possibilitou a autenticação segura dos usuários, bem como a interação com o sistema por meio de APIs.

Além dessas gems essenciais, outras foram adicionadas para lidar com possíveis desafios futuros.

## Usuários de Teste

Para facilitar a avaliação do sistema, foram criados dois tipos de usuários de teste:

**Administrador**
- **Login**: admin@admin.com
- **Senha**: 123456

**Usuário Comum**
- **Login**: user@teste.com
- **Senha**: 123456
