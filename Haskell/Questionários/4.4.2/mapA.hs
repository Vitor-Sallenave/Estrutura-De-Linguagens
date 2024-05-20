data Arvore a = Galho (Arvore a) a (Arvore a) | Folha deriving Show

mapA :: (a -> b) -> Arvore a -> Arvore b
mapA _ Folha = Folha
mapA f (Galho esq a dir) = Galho (mapA f esq) (f a) (mapA f dir)

f :: Int -> Int
f x = x+10

arv :: Arvore Int
arv = Galho (Galho (Galho Folha 7 Folha) 3 (Galho Folha 8 Folha)) 1 (Galho (Galho Folha 5 (Galho Folha 6 Folha)) 10 Folha)

main :: IO ()
main = print (mapA f arv)