
tamanho :: ([param] -> Int)
tamanho l = 
    case l of
        [] -> 0
        head:resto -> 1 + tamanho resto

a :: [Int]
a = [1, 2, 3]
main = print (tamanho a, tamanho [], tamanho [1])