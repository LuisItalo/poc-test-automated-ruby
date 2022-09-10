Quando("cadastro meu usuario") do
    user.load
    user.preencher_usuario
    sleep(3)
end
  
Entao("verifico se usuario foi cadastrado") do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
    have_text('Usuário Criado com sucesso')
end