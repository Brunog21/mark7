class Cadastro
        include Capybara::DSL
    def cadastrar(nome, email, senha)
        find('#register_name').set nome
        find('#register_email').set email
        find('#register_password').set senha
        find('.btn-accent').click
        sleep 5 
    end
end