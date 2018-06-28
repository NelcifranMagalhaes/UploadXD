
# README

> Salva um txt especifico no banco de dados
> (formato especifico encontrado em spec/fixtures/dados.txt)  
> Você envia um arquivo e os dados dentro dele são salvo no banco de dados
> O arquivo fica relacionado com os dados salvos, ou seja se você deletar 
> o arquivo, todos os dados relacionados à aquele arquivo serão deletados do banco também

## Setup project:

## Ruby version
	2.1.10
## Rails Version
	4.2.6	

## Download ou clone este projeto
	> Depois rode os comandos:
```sh
- bundle install
- rake db:create
- rake db:migrate
- rake db:migrate RAILS_ENV=test #apenas para rodar os testes
- rails s
```
