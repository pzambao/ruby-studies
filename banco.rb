banco = {}
clientes = [] 
  
  loop do
    puts "===== Banco TotalIP ====="
    puts "\nEscolha uma das opções:\n"
    options = [
      "1- Cadastrar",
      "2- Saldo",
      "3- Saque",
      "4- Deposito",
      "5- Tranferencia",
      "6- Sair"
    ]
    puts options.join("\n")
  
    puts "\nDigite o numero opção:"
    case gets.chomp.to_i
    when 1
      puts "\nDigite o seu CPF:"
      cpf = gets.chomp.to_i
      clientes << cpf
      puts "\nCrie uma senha:"
      senha = gets.chomp
      clientes << senha
        loop do
          puts "\nDeseja depositar algum valor em sua conta?"
          puts "1 - Sim\n2 - Não"
          case gets.chomp.to_i
            when 1
              puts "Digite o valor a ser depositado:"
              saldo = gets.chomp.to_f
              clientes << saldo
              puts "\nConta criada com sucesso!\n"
              break
            when 2
              saldo = 0
              clientes << saldo
              puts "\nConta criada com sucesso!\n"
              break
            else
              puts "\nopção inválida"
            end
        end
      banco[cpf] = clientes
      puts "\n#{banco}"

    when 2
      puts "Digite seu cpf"
      cpfsaldo = gets.chomp.to_i
      if banco.include? cpfsaldo
        puts 
      end      


    when 6
      break
  end
end