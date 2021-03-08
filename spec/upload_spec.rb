
describe 'Upload', :upload do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.png'
    end

    it 'Upload com arquivo de Texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'

        puts 'Upload de arquivo Executado'
    end

    it 'Upload de Imagem ' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'

        puts 'Upload de imagem Executado'
    end

  

    after(:each) do
        sleep 3
    end

end
