
describe 'Caixas de seleção', :checkbox do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'Marcando uma opção' do
        check('thor')
        puts 'Seleção de checkboxes 1 Ok'
    end

    it 'Desmarcando uma opção' do
        uncheck('antman')
        puts 'Seleção de checkboxes 2 Ok'
    end

    it 'Marcando com find set true' do
        find('input[value=cap]').set(true)
        puts 'Seleção de checkboxes 3 Ok'
    end

    it 'Desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    puts 'Seleção de checkboxes 4 Ok'
    end

    after(:each) do
        sleep 3
    end
end