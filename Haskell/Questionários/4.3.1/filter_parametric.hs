data Lista a = No a (Lista a) | Vazio
 deriving Show

filterp :: (a -> Bool) -> Lista a -> Lista a

filterp _ Vazio = Vazio
filterp f (No elem l')
    | f elem = No elem (filterp  f  l')
    | otherwise = filterp f l'

l :: Lista Int
l = No 1 (No 2 (No 3 (No 4 Vazio)))

f :: Int -> Bool
f x = x > 2

main :: IO()
main = print (filterp f l)