# T2 - Programa básico em Julia

#= Esse código apresenta uma biblioteca bem simples - onde podemos realizar 3 operações básicas sobre seu acervo, como adicionar ou excluir livros e também alugá-los =#

# Introduz o usuário
intro(name) = println("\nSeja bem-vindo(a) $name!")

# Mostra o acervo de livros existente
function show_books(lib)
    println("\nLivros disponíveis:\n")
    for book = keys(lib)
        println("--> $book")
    end
end

# Livros iniciais
biblioteca = Dict("Livro 1" => 0, "Livro 2" => 0)
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