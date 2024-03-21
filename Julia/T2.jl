#= T2 - Esse código apresenta uma biblioteca bem simples - onde podemos realizar 3 operações básicas sobre seu acervo, como adicionar ou excluir livros e também alugá-los =#

# Função para introduzir o usuário
intro = name -> println("\nSeja bem-vindo(a) $name!")

# Função para mostrar o acervo de livros existente
function show_books(lib)
    println("\nLivros disponíveis:\n")
    for book = keys(lib)
        println("--> $book")
    end
end

# Função para adicionar novos livros
# Obs.: ela modifica o conteúdo da biblioteca ("!")
function add_book!(lib, book_name)
    lib[book_name] = 0 # Disponível
end

# Função para excluir livros
function pop_book!(lib, book_name)
    if book_name in keys(lib)
        pop!(lib, book_name)
    else
        # Livro inexistente
        println("ERRO!")
end

# Função para alugar um livro
function rent_book!(lib, book_name)
    if lib[book_name] == 0
        lib[book_name] = 1 # Indisponível
    else
        # Livro já alugado
        println("ERRO!")
end

# Livros iniciais 
biblioteca = Dict("Turma da Monica" => 0,
 "Percy Jackson" => 0)

global continuar = true
while continuar == true
    # Mostrando o acervo de livros para o usuário
    show_books(biblioteca)

    # Perguntando ao usuário qual ação será realizada
    println("""\nVocê deseja alugar, adicionar ou excluir um livro?

    1 - Alugar
    2 - Adicionar
    3 - Excluir""")
    
    # Lendo a resposta do usuário
    r = parse(Int64, readline())

    # Verificando se o usuário deseja continuar
    # Obs.: a biblioteca será atualizada
    println("Quer continuar? [S/N]")
    r = readline()
    if r == "N" | r == "n"
        global continuar = false
        println("\nO programa foi encerrado!")
    end
end