require 'cpf_cnpj'

def check_cpf(cpf_number)
  CPF.valid?(cpf_number) ? 'O cpf informado é valido' : 'O cpf informado é invalido'
end

cpf = nil

loop do
  print "\nDigite o cpf (apenas números) que você quer validas: "
  cpf = gets.chomp.to_s

  break if cpf.empty? || cpf.nil? || cpf == '0'

  puts check_cpf(cpf)
end
