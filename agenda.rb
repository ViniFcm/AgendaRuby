
@agenda = [{nome: "Diego", telefone: "99999-9999"},
            {nome: "João", telefone: "88888-8888"}]

def todos_contatos
    puts "--------------------------------------------------"
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "--------------------------------------------------"
end

def adicionar_contato
    print "Digite o nome do contato: "
    nome = gets.chomp
    print "Digite o telefone do contato: "
    telefone = gets.chomp
    @agenda << {nome: nome, telefone: telefone}
    puts "Contato adicionado com sucesso!"
end



loop do


    puts "1. Contatos"
    puts "2. Adicionar Contatos"
    puts "3. Ver Contatos"
    puts "4. Editar Contatos"
    puts "5. Remover Contatos"
    puts "0. Sair"

    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "Saindo..."
        break
    when codigo == 1
        puts "Contatos"
        todos_contatos
    when codigo == 2
        puts "Adicionar Contatos"
        adicionar_contato
    end
    

end
