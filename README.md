# project-httparty-cucumber-example

 ## Apresentação

Olá :wave: ! Esse é um projeto para exemplificar como iniciamos a criação de casos automatizados pelo backend utilizando a gem do RSPEC e do HTTPARTY. 
A ideia é a mesma do meu outro projeto <a href="https://github.com/hfernandes1/project-httparty-cucumber-example-gitub" target="_blank">(project-httparty-cucumber)</a>, porém esse, não irá conter a sintaxe Gherkin/cucumber. 


Utilizei uma API publica baseado em um CRUD para cadastrar usuários em uma empresa
O intuito aqui é utilizar a gem HTTParty e cucumber para realizar testes automáticos de REST APIS. 


 ## :camera_flash: Fotos do Projeto 
 
 
Cucumber             |  Steps/Casos de testes
:-------------------------:|:-------------------------:



## Passo a passo :foot:

Vamos começar com o passo a passo para você fazer o seu também ?

## 1 - Baixe o ruby:diamonds:


```
https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.9-1/rubyinstaller-devkit-2.6.9-1-x64.exe

```
A versão utilizada nesse modelo foi a 2.6.9-1


## 1.1 - Abra o Visual Studio code e crie um arquivo chamado "gemfile" :books:

```
source 'https://rubygems.org' 

gem 'bundle'
gem 'httparty'
gem 'rubocop'
gem 'rspec'
gem 'rspec'
gem 'faker'
gem 'mysql2'

```
Nesse passo estamos adicionando todas as bibliotecas necessárias para realizar a automação :)

## 2 - baixe a gem bundle :books:

```
bundle install

```
rodar o "bundle install" - que é uma gem de gerencimaneto de bibliotecas. 
 vai instalar as bibliotecas que eu selecionei na gemfile. 

exemplo: vou instalar a gem capybara, mas para ela funcionar ela depende de outras gems, então ela acaba adicionando estas. 


## 3 - dica do seu camarada	:bulb:

```
gem list
gem cleanup

```
gem list para verificar as gems instaladas e gem cleanup para tirar as velhas e deixar as gems novas. 

## 4 - criando as primeiras pastas :open_file_folder:

```
rspec --init

```
Irá baixar os diretórios necessários para você dar o start no projeto

## 5 - API utilizada :link:

```
http://dummy.restapiexample.com

```
Como é uma API modelo, pode ocorrer de retornar status 429 (many requests). Tente de novo e aguarde o status 200 :)


## 6 - configurando o .rspec para gerar um relatório html 📂:

```
--require spec_helper
--format documentation
--color
--format html
--out reports/super.html


```
Dentro do arquivo .rspec adicione essas informações, elas garantiram que depois de rodar os testes seja feito um report em html. 

## 7 - Configurando o rspec	:grinning:

```
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'

```
Adicione essas infos no começo do Rspec, para utilizar o HTTparty no projeto. 


## 8 - Bora começar a fazer um teste modelo com Rspec ?

8.1 - Primeira coisa a se fazer é criar um arquivo ".rb" 

8.2 - Vou criar uma pasta chamada "Examples" e depois os arquivos chamados "get.rb", "put.rb", "post.rb", "delete.rb" ( veja nas fotos do projeto acima )


## 9 - GET.rb

Vamos iniciar com o GET. 
O Describe é como se fosse o cenário do que você deseja testar, por exemplo, desejo realizar testes da feature "employess" do sistema. 
O It são como os casos de teste, nesse momento você será capaz levantar os cenários de testes, seguindo o exemplo acima, seria os casos de teste para a feature Employees. 

* Então começão com o Describe: 

describe 'Testes automatizados da Tela de Employees' do

end


* Agora inserimos os casos de teste - (IT) 


```
describe 'Testes automatizados da Tela de Test Result' do

  it 'testando o GET employess'
  
  end
  
 end

```

* Vamos adicionar o HTTParty para fazer a requisição

- O HTTparty por padrão é utilizado da seguinte forma: HTTparty.post('/authorization', headers:)


## License
open source project

## Project status
DONE :)
Qualquer sugestão sobre projetinhos desse tipo - Entre em contato
linkedin: https://www.linkedin.com/in/henrique-amaral-fernandes-794477121/
