
describe 'Testes automatizados para o POST Employees ' do
    
    it 'Testes para cadastrar um novo usuario' do
        body = {
            "employee_name": "Henrique_Amaral",
            "employee_salary": "10000", 
            "employee_age": "30",
            "profile_image": "",
        }.to_json
	
        @result = Dev.post('/create',headers: $header, body: body)
        puts @result 																			                         
        puts "Response Code: " + @result.code.to_s  
        puts @result.code
        puts @result.msg
        expect(@result.code).to eql (200)
        expect(@result.msg).to eql 'OK'
        expect(@result["status"]).to eql 'success'
        expect(@result["message"]).to eql "Successfully! Record has been added."
    end
end                                                                            
																				 
