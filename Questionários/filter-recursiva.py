def ffilter(f, l):
    if not l:
        # retorna uma lista vazia
        return list()
    if f(l[0]):
        return [l[0]] + ffilter(f, l[1:])
    else:
        return ffilter(f, l[1:])
    

def f(e):
    return e % 2 == 0
        
      
lista = [1, 2, 3, 4, 5, 6, 7]

# Iremos filtrar os números pares
print(ffilter(f, lista))