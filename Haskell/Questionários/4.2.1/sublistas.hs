data Lista a = No a (Lista a) | Vazio

l :: Lista [Int]
l = No [1, 2] (No [3, 4] (No [5, 6] Vazio))

lprim :: [[Int]]
lprim = [[1, 2], [3, 4], [5, 6]]