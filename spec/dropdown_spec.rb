

describe 'Dropdown - Caixa de opções', :dropdown do

    it 'Item específico do combo box' do
      visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
  
      select('Loki', from: 'dropdown')
      sleep 3
      puts 'Dropdown 1 Ok'
    end
  
    it 'item específico com o find' do
      visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
  
      drop = find('.avenger-list')
      drop.find('option', text: 'Scott Lang').select_option
      sleep 3
      puts 'Dropdown 2 Ok'
    end
  
    it 'seleciona qualquer item', :sample do
      visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
  
      drop = find('.avenger-list')
      drop.all('option').sample.select_option
      puts 'Dropdown 3 Ok'

    end

    
end