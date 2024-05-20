data Lista a = No a (Lista a) | Vazio deriving Show

data Arvore a = Galho (Arvore a) a (Arvore a) | Folha deriving Show

concatl :: Lista a -> Lista a -> Lista a
concatl Vazio l2 = l2
concatl (No elem l1) l2 = No elem (concatl l1 l2)

lista :: Arvore a -> Lista a
lista Folha = Vazio
lista (Galho esq elem dir) = concatl (lista esq) (No elem (lista dir))

arv :: Arvore Int
arv = Galho (Galho (Galho Folha 7 Folha) 3 (Galho Folha 8 Folha)) 1 (Galho (Galho Folha 5 (Galho Folha 6 Folha)) 10 Folha)

main :: IO ()
main = print (lista arv)