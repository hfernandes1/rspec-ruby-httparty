

describe 'Testes automatizados para o PUT Employees ' do
    
    it 'Testes para atualizar um novo usuario' do

	@get_id = Dev.get('/employees',headers: $header)
	@id = @get_id['data'][0]['id']
	
	body = {
		"employee_name": "Henrique_Amaral",
		"employee_salary": "10000",
		"employee_age": "30",
		"profile_image": "",
	}.to_json
	
	@result = Dev.put("/update/#{@id}",headers: $header, body: body)
	puts @result
	puts @result.code
	puts @result.msg
	expect(@result.code).to eql (200)
	expect(@result.msg).to eql 'OK'
	expect(@result["status"]).to eql 'success'
	expect(@result["message"]).to eql "Successfully! Record has been updated."
  end
end