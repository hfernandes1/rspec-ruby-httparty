describe 'Testes automatizados da Tela de Employees ' do

  

    it 'Testando o GET employess' do

    
        @get = Dev.get('/employees', headers: $header )

        puts "Response Code: " + @get.code.to_s 
        expect(@get.code).to eql (200)
        
    end

end
