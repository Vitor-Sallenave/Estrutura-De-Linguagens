-- Métodos map, filter e reduce

l1 = [1, 2, 3]
l2 = map (<3) l1
soma x y = x + y
l3 = foldr soma 0 l1
l4 = foldr (\x y -> show x ++ y) "" l1
l5 = foldr (++) "" (map show l1)
main = print l4