-- 1. Produtos corrigidos com a inflação

precos = [10, 20, 30, 40, 50]
i = 0.2
precosCorrigidos = map(\x -> x*(1+i)) precos
main = print precosCorrigidos