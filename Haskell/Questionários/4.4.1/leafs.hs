data Arvore a = Galho (Arvore a) a (Arvore a) | Folha deriving Show

folhas :: Arvore a -> Int
folhas Folha = 1
folhas (Galho esq _ dir) = folhas esq + folhas dir

ex1 :: Arvore Bool
ex1 = Galho (Galho (Galho Folha False Folha) True Folha) True (Galho (Galho Folha False (Galho Folha False Folha)) True Folha)

ex2 :: Arvore [Int]
ex2 = Galho (Galho (Galho Folha [7] Folha) [3, 4] (Galho Folha [8, 9] Folha)) [1, 2] (Galho (Galho Folha [5] (Galho Folha [6] Folha)) [10, 11] Folha)

main :: IO ()
main = do
  print $ folhas ex1
  print $ folhas ex2
