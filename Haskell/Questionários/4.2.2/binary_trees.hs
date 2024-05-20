data Arvore a = Galho (Arvore a) a (Arvore a) | Folha 

-- 1.

ex1 :: Arvore Bool
ex1 = Galho (Galho (Galho Folha False Folha) True Folha) True (Galho (Galho Folha False (Galho Folha False Folha)) True Folha)


-- 2.

ex2 :: Arvore [Int]
ex2 = Galho (Galho (Galho Folha [7] Folha) [3, 4] (Galho Folha [8, 9] Folha)) [1, 2] (Galho (Galho Folha [5] (Galho Folha [6] Folha)) [10, 11] Folha)