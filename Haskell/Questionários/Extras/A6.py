def divida(l):
    
    r = 0
    i = 0
    
    while i < len(l):
        emp = l[i][0]
        juros = l[i][1]
        
        r += emp 
        r *= (1 + juros/100)
        
        i += 1
        
    return r

print(f'{divida([(10,10), (9,20), (-10,0)])}')