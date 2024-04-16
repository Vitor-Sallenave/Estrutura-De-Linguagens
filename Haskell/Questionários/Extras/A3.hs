
lista :: [Int]
lista = [10, 20, 30]

indices :: [a] -> [(Int,a)]
indices xs = reverse(foldr (\x acc -> (length acc, x) : acc) [] (reverse xs))

main :: IO()
main = print (indices lista)