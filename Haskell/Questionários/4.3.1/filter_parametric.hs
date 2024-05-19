data Lista a = No a (Lista a) | Vazio

filter :: (a → Bool) → Lista a → Lista a

filter f l = case l of
    Vazio -> Vazio
    No elem  l' -> case (f elem) of
        true -> No (elem) (filter  f  l')
        false -> Vazio

l :: Lista Int
l = No 1 (No 2 (No 3 (No 4 Vazio)))

f x = x > 2

main = print (filter f l)