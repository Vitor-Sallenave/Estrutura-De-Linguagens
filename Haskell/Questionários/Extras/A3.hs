lista :: [Int]
lista = [10, 20, 30]

indices :: [a] -> [(Int,a)]
indices l = reverse(foldr (\x acc -> (length acc, x) : acc) [] (reverse l))

main :: IO()
main = print (indices lista)