def fmap(f, l):
    for i in range(len(l)):
        l[i] = f(l[i])
        
    return l
    
    
def f(e):
    return e*10    
    
    
lista = [1, 2, 3, 4, 5, 6, 7]

# Vamos multiplicar todos os números da lista por 10
fmap(f, lista)
print(lista)