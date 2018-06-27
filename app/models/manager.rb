class Manager < ActiveRecord::Base
	mount_uploader :file_txt, FileTxtUploader


	def self.importa_arquivo_bd(arquivo)
		arquivo.gsub!(/\r\n?/, "\n")
		lista_cheia = [] #lista que contem o arquivo sem os tabs

		arquivo.each_line do |line|
		  #lista = line.split(/\t+/)
		  lista_cheia.push(line.split(/\t+/)) #percorre as linhas e tira os tabs
		end
		lista_cheia.delete_at(0) #deletei a primeira linha do arquivo que tem os campos(Comprador,descrição,Preço Uniário,Quantidade,Endereço,Fornecedor)
		count = 0 #contador para saber onde comeca e termina um usuario
		lista_pra_inserir = [] #lista que contem cada usuario em um lista com todos seus dados
		lista_cheia.each do |ls|
			lista_individual = []  #lista para inserir na lista_pra_inserir,essa contem um usuarios especifico
		  	for i in 0..lista_cheia.size+1
				lista_individual.push(ls[i])
		  	end
		  	lista_pra_inserir.push(lista_individual)
			count = count +1
		end
		lista_pra_inserir.each do |novo|
			
			Relatory.create(buyer: novo[0],description: novo[1],price: novo[2],quantity: novo[3],address: novo[4],owner: novo[5])
		end 
		
	end




end
