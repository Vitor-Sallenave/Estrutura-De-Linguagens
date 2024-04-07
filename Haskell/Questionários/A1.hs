
lista = [1, 2, 3]

num = foldr(\x y -> x*10 + y) 0 lista

main = print num