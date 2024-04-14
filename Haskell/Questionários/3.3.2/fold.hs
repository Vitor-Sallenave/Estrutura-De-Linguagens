-- 1. Descobrindo a menor transação feita por um cliente de banco durante vários dias


-- (Dia, valor)
transacoes :: [(Int, Int)]
transacoes = [(10, 200), (2, 900), (3, 400), (4, 500)]

-- limite de transação diária
limite :: Int
limite = 1000

minTrans :: Int
minTrans = foldl (\acc (m, t) -> min acc t) limite transacoes

-- 2. Um dado é jogada para cima 5 vezes. Vamos descobrir a frequência com que um número aparece.

jogadas :: [Int]
jogadas = [4, 2, 6, 6, 1]

contarNum :: Int -> [Int] -> Int
contarNum num jog = foldl (\acc y -> if y == num then acc + 1 else acc) 0 jog

freqNum :: Int
freqNum = contarNum 6 jogadas

main :: IO ()
main = print freqNum