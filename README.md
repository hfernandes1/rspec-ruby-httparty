# project-httparty-cucumber-example

 ## Apresentação

Olá :wave: ! Esse é um projeto para exemplificar como iniciamos a criação de casos automatizados pelo backend utilizando a gem do RSPEC e do HTTPARTY. 
A ideia é a mesma do meu outro projeto <a href="https://github.com/hfernandes1/project-httparty-cucumber-example-gitub" target="_blank">(project-httparty-cucumber)</a>, porém esse, não irá conter a sintaxe Gherkin/cucumber. 


Utilizei uma API publica baseado em um CRUD para cadastrar usuários em uma empresa
O intuito aqui é utilizar a gem HTTParty e cucumber para realizar testes automáticos de REST APIS. 


## Passo a passo :foot:

Vamos começar com o passo a passo para você fazer o seu também ?

## 1 - Baixe o ruby:diamonds:


```
https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.9-1/rubyinstaller-devkit-2.6.9-1-x64.exe

```
A versão utilizada nesse modelo foi a 2.6.9-1


## 2 - Abra o Visual Studio code e crie um arquivo chamado "gemfile" :books:

Gemfile             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186686870-192f3db1-02ec-4d99-a4b5-744fc5ee6977.png)



Nesse passo estamos adicionando todas as bibliotecas necessárias para realizar a automação :)

## 3 - Baixe a gem bundle :books:

```
bundle install

```
rodar o "bundle install" - que é uma gem de gerencimaneto de bibliotecas. 
 vai instalar as bibliotecas que eu selecionei na gemfile. 

exemplo: vou instalar a gem capybara, mas para ela funcionar ela depende de outras gems, então ela acaba adicionando estas. 


## 4 - Dica do seu camarada	:bulb:

```
gem list
gem cleanup

```
gem list para verificar as gems instaladas e gem cleanup para tirar as velhas e deixar as gems novas. 

## 5 - Criando as primeiras pastas :open_file_folder:

```
rspec --init

```
Irá baixar os diretórios necessários para você dar o start no projeto

## 6 - API utilizada :link:

```
http://dummy.restapiexample.com

```
Como é uma API modelo, pode ocorrer de retornar status 429 (many requests). Tente de novo e aguarde o status 200 :)


## 7 - configurando o .rspec para gerar um relatório html 📂:

.Rspec             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186725066-3de09ddc-2dea-4812-b038-f978c58c4093.png)

Dentro do arquivo .rspec adicione essas informações, elas garantiram que depois de rodar os testes seja feito um report em html.
como este:

![image](https://user-images.githubusercontent.com/67130771/186725383-21e57d21-9943-4064-8a27-f123f30e2307.png)


## 8 - Configurando o spec helper	:grinning:

.Rspec             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186687963-2f490395-fc96-48a8-ae73-abd9473d2c4a.png)


Adicione essas infos no começo do Rspec, para utilizar o HTTparty no projeto. 


## 9 - Bora começar a fazer um teste modelo com Rspec ?

8.1 - Primeira coisa a se fazer é criar um arquivo ".rb" 

8.2 - Vou criar uma pasta chamada "Examples" e depois os arquivos chamados "get.rb", "put.rb", "post.rb", "delete.rb" ( veja nas fotos do projeto acima )

Folder Example             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186688196-1626f079-e243-4176-b500-38e337ad0f90.png)


## 10 - GET.rb

Vamos iniciar com o GET. 
O Describe é como se fosse o cenário do que você deseja testar, por exemplo, desejo realizar testes da feature "employess" do sistema. 
O It são como os casos de teste, nesse momento você será capaz levantar os cenários de testes.

* Então começando com o Describe: 

```
describe 'Testes automatizados da Tela de Employees' do

end
```

* Agora inserimos os casos de teste - (IT) 


```
describe 'Testes automatizados da Tela de Test Result' do

  it 'testando o GET employess'
  
  end
  
 end

```

* Vamos adicionar o HTTParty para fazer a requisição

- O HTTparty por padrão é utilizado: 

```
 HTTParty.get('http://dummy.restapiexample.com/api/v1/employees', :headers => {'Content-Type': 'application/json'})
```

- Afim de descobrir se o response code é 200, podemos utiltizar o comando expect, dessa forma:

```
expect(@get.code).to eql (200)
```

Enfim, o código completo ficaria: 


.GET.rb             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186688394-2b4e7852-3de9-42d8-8718-0981cc67e81b.png)



## Comando para executar o código 

``` 
rspec ".\spec\Examples\get.rb"
```

O comando para executar o código é rspec + caminho dos diretórios


## 11 - Vamos melhorar esse código ?

O código já está funcional, porém, podemos fazer algumas melhorias para deixá-lo mais dinâmico. 

O primeiro step seria criar arquivo com Base_uri para passar somente o endpoint que desejamos testar, ao invés de passar a URL inteira. 

* Vamos criar uma pasta services e dentro da mesma vamos criar um arquivo chamado "contato_service.rb"

Após isso vamos criar um módulo e inserir a base_uri, dessa forma: 
 
 
Irá ficar da seguinte maneira: 

contato_service.rb             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186715788-b13d2194-34a8-419c-a618-d8cf35b11879.png)

`"Base_uri" este que vai substituir essa url, e no teste, você apenas irá precisar escrever o endpoint que deseja testar.`

`Um módulo é uma coleção de métodos, constantes e variáveis de uma classe. Os módulos são definidos como uma classe, mas com a palavra-chave do módulo e não com a palavra-chave da classe.`

`O método include pega todos os métodos de outro módulo e os inclui no módulo atual.`

Feito isso, precisos adicionar um require para o arquivo spec helper. O require basicamente irá rodar este arquivo toda vez que o teste for executado. 

Assim, vamos adicionar estes steps no GET, antes de rodar o código. 

Folder Example             | 
:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186718214-b21564bb-3735-4925-927e-6bf9830c368b.png)


## Printando mensagens

Para printar as informações do response code, ou alguma mensagem específica, vamos usar o comando `puts "mensagem"`. 

Então nosso código para o GET ficará: 

![image](https://user-images.githubusercontent.com/67130771/186719431-8d092741-676b-4e52-9db7-6dd6743425db.png)


## Criando uma classe header

Vamos criar um header global, para não precisar passar o mesmo header em todo o teste. 

Para isso, mesmo passo anterior que fizemos com o contato_service.rb - `vamos criar um arquivo header, também na pasta services, e colocar um require_relative './services/header.rb' no spec_helper. `


spec_helper                |       Gemfile             | 
:-------------------------:|:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186724448-7ac5adcb-6001-4fdd-a256-d71632977d74.png) | ![image](https://user-images.githubusercontent.com/67130771/186724513-c147e411-7544-4c5f-acce-820c79e1766f.png)


Portanto, o código final será:

![image](https://user-images.githubusercontent.com/67130771/186724610-28aaf4fc-33ee-4121-af28-e4d119d992a7.png)


## Utilize o modelo  

Deixo abaixo todas as fotos dos demais arquivos, como delete, post e put. Veja também o tutorial do rspec com cucumber. Abraços. 

Bom estudos !


GET                |       POST             | 
:-------------------------:|:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186724610-28aaf4fc-33ee-4121-af28-e4d119d992a7.png)) | ![image](https://user-images.githubusercontent.com/67130771/186752253-6656c441-870f-43a4-972e-5cbe723badd0.png)

PUT                |       DELETE             | 
:-------------------------:|:-------------------------:|
![image](https://user-images.githubusercontent.com/67130771/186752307-b9588d7e-bba1-4dfb-b158-9653b70d6f3e.png)| ![image](https://user-images.githubusercontent.com/67130771/186752188-ce07e9b1-c0c5-44ae-9de9-f965da309cbe.png)


## Project status
DONE :)
Qualquer sugestão sobre projetinhos desse tipo - Entre em contato
linkedin: https://www.linkedin.com/in/henrique-amaral-fernandes-794477121/
