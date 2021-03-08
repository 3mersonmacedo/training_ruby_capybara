describe 'Mouse hovers', :hovers do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/hovers'
      sleep 1
    end
  
    it 'Blade' do
    
      card = find('img[alt*=Blade]')
      card.hover
      expect(page).to have_content 'Nome: Blade'
      puts 'Hovers 1 ok'
    end
  
    it 'Pantera Negra' do
      card = find('img[alt^=Pantera]')
      card.hover
      expect(page).to have_content 'Nome: Pantera Negra'
      puts 'Hovers 2 ok'
    end
  
    it 'Pantera Negra' do
      card = find('img[alt$=Aranha]')
      card.hover
      expect(page).to have_content 'Nome: Homem Aranha'
      puts 'Hovers 3 ok'
    end
  
    after(:each) do
      sleep 0.5
    end
  end
  