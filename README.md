# README

Este projeto foi criado em ruby on rails, um ecommerce com crud de produtos e usuários

# Configurando o sistema
Para configurar o sistema no seu computador você precisa do ruby, node e yarn configurado no seu computador.

Para ruby eu costumo usar o asdf como gerenciador de ruby e node. Mas você pode isntalar o gerenciador que estiver mais familiarizado.

Ruby: 3.1.2
Rails 7.0.2
Node: 16+
Yarn: 1.22+
Libvips: https://installati.one/ubuntu/20.04/libvips-dev/

Siga os passos abaixo para configurar o sistema no seu computador.
1. Instalar todas as dependências assets: `yarn install`
2. Instalar todas as dependências do rails (gems): `bundle install`
3. Configure o arquivo `database.yml` que está na pasta config com seu usuário e senha.
4. Com o banco de dados configurado gere os bancos: `rails db:create`
5. Agora execute as migrações: `rails db:migrate`
6. Fim

# Iniciando o projeto
Agora com tudo configurado, basta executa `bin/dev`
