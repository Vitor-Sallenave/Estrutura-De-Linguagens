
lista::[Int]
lista = [1, 2, 3]

lista_to_num::[Int] -> Int
lista_to_num l = read (foldr (\x acc -> show x ++ acc ) "" l)

main :: IO ()
main = print (lista_to_num lista)