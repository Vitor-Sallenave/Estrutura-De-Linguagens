
med_bim:: [Int] -> [Int]
med_bim l = l' where
     (l', _, _) = foldr f ([], -99, 0) l where
        f nota (r, ant, i) = 
            if i `mod` 2 == 1 then
                (((nota + ant) `div` 2):r, -99, i+1)
            else 
                (r, nota, i+1)

lista :: [Int]
lista = [40, 30, 20, 10]

main :: IO ()
main = print (med_bim lista)