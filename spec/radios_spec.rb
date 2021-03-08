
describe 'Botões de Radio' , :radios do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Seleção por ID' do
        choose('cap')
        puts 'Seleção de radio 1 Ok'
    end

    it 'Seleção por find e css selector' do 
        find('input[value=guardians]').click
        puts 'Seleção de radio 2 Ok'
    end

    after(:each) do
        sleep 3
    end
    
end
