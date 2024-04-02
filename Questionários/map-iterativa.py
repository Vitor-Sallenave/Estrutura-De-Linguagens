def fmap(f, l):
    lcopy = list()
    
    for num in l:
        lcopy.append(num*10)
        
    return lcopy
    
    
def f(e):
    return e*10    
    
    
lista = [1, 2, 3, 4, 5, 6, 7]

# Vamos multiplicar todos os números da lista por 10
print(fmap(f, lista))