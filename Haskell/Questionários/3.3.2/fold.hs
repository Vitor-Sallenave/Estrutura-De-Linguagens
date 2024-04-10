
lista = [1, 2, 3, 4]

 calculaMedia l = foldr(\x (soma, cont) -> (soma + x, cont + 1)) (0, 0) l 

 main = print (calculaMedia lista)