banco = {}
conta = [] 
  
  loop do
    puts "\n===== Banco TotalIP ====="
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
      puts "\nCrie uma senha:"
      senha = gets.chomp
      banco[cpf] = [senha]
        loop do
          puts "\nDeseja depositar algum valor em sua conta?"
          puts "1 - Sim\n2 - Não"

          case gets.chomp.to_i
            when 1
              puts "Digite o valor a ser depositado:"
              saldo = gets.chomp.to_f
              banco[cpf] << saldo
              puts "\nConta criada com sucesso!\n"
              break
            when 2
              banco[cpf] << 0
              puts "\nConta criada com sucesso!\n"
              break
            else
              puts "\nopção inválida\n"
            end

        end
#   puts "\n#{banco}"

    when 2
      puts "\nDigite seu CPF"
      cpf_saldo = gets.chomp.to_i
      puts "\nDigite sua senha"
      senhasaldo = gets.chomp
      if banco.include?(cpf_saldo) and banco[cpf_saldo].include?(senhasaldo)
        puts "\nSeu saldo é: R$#{banco[cpf_saldo][1]}\n"
      else
        puts "\nCPF e/ou senha inválidos.\n"
      end  
     
    when 3
      puts "\nDigite seu CPF"
      cpf_saldo = gets.chomp.to_i
      puts "\nDigite sua senha"
      senhasaldo = gets.chomp
      if banco.include?(cpf_saldo) and banco[cpf_saldo].include?(senhasaldo)
        puts "\nDigite o valor a ser sacado"
        saque = gets.chomp.to_i
        if saque < banco[cpf_saldo][1]
          puts "\nSeu novo saldo é: R$#{banco[cpf_saldo][1] = banco[cpf_saldo][1] - saque}\n"
        else
          puts "\nValor indisponível em sua conta!\n"
        end
      else
        puts "\nCPF e/ou senha inválidos.\n"
      end

    when 4
      puts "\nDigite seu CPF"
      cpf_saldo = gets.chomp.to_i
      if banco.include?(cpf_saldo)
        puts "\nDigite o valor a ser depositado"
        deposito = gets.chomp.to_i
        banco[cpf_saldo][1] = banco[cpf_saldo][1] + deposito
        puts "\nDepósito de #{deposito} realizado com sucesso!\n"
      else
        puts "\nCPF não encontrado no sistema\n"
      end

    when 5
      puts "\nDigite seu CPF"
      cpf_saldo = gets.chomp.to_i
      puts "\nDigite sua senha"
      senhasaldo = gets.chomp
      if banco.include?(cpf_saldo) and banco[cpf_saldo].include?(senhasaldo)
        puts "\nDigite o CPF da conta destino"
        cpftransf = gets.chomp.to_i 
        if banco.include?(cpftransf)
          puts "\nDigite o valor a ser transferido:"
          transf = gets.chomp.to_i
            if transf < banco[cpf_saldo][1]
              banco[cpftransf][1] = banco[cpftransf][1] + transf
              puts "\nTransferência realizada com sucesso!"
              puts "\nSeu novo saldo é: R$#{banco[cpf_saldo][1] = banco[cpf_saldo][1] - transf}\n"
            else
              puts "\nValor indiponível em sua conta!\n"
            end
        end
      else
        puts "\nCPF e/ou senha inválidos.\n"  
      end
    
    when 6
      break
    end
 
end