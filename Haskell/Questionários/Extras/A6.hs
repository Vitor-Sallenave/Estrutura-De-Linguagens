divida :: [(Int,Int)] -> Int
divida l = foldl f 0 l where
        f acc r = (fst r + acc) * (1 + snd r / 100)

emprestimos :: [(Int, Int)]
emprestimos = [(10,10), (9,20), (-10,0)]

main :: IO ()
main = print (divida emprestimos)