
  describe 'Testes automatizados para o DELETE Employees ' do
    
    it 'Testes para deletar um usuario' do

        @get_id = Dev.get('/employees',headers: $header)
        @id = @get_id['data'][0]['id']
        @result = Dev.delete("/delete/#{@id}",headers: $header)
        puts @result
        puts @result.code
        puts @result.msg
        expect(@result.code).to eql (200)
        expect(@result.msg).to eql 'OK'
        expect(@result["status"]).to eql 'success'
        expect(@result["message"]).to eql "Successfully! Record has been deleted"
  end
end