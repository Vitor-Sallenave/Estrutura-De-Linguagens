-- Definindo o tipo Personagem
data Personagem =
 Guerreiro {nome :: String, idade :: Int, altura :: Float, forca :: Int, vida :: Int}
 | Mago {nome :: String, idade :: Int, altura :: Float, poder :: String, vida :: Int}
 | Sacerdote {nome :: String, idade :: Int, altura :: Float, religiao :: String, vida :: Int} deriving (Show)

-- Ações do Guerreiro
atacar :: Personagem -> String
atacar (Guerreiro {nome = n, forca = f}) = n ++ " ataca com forca " ++ show f ++ "."

-- Ações do Mago
atacar (Mago {nome = n, poder = p}) = n ++ " lanca um feitico que " ++ p ++ "."
atacar (Sacerdote {nome = n}) = n ++ " nao e capaz de atacar!"

-- Ações do Sacerdote (Perceba que ele não ataca, mas deixa seus aliados mais fortes) 
rezar :: Personagem -> String
rezar (Sacerdote {nome = n}) = n ++ " esta rezando para aumentar a vida de seus aliados."
rezar (Guerreiro {nome = n}) = n ++ " nao e capaz de rezar!"
rezar (Mago {nome = n}) = n ++ " nao e capaz de rezar!"

-- Guerreiro
p1 :: Personagem
p1 = Guerreiro "Anibal" 25 1.85 100 200

-- Mago
p2 :: Personagem
p2 = Mago "Dumbdlore" 70 1.90 "congela o tempo" 300

-- Sacerdote
p3 :: Personagem
p3 = Sacerdote "Abilio" 64 1.75 "Catolica" 150

-- Aplicando os métodos
main = do
    putStrLn $ atacar p1
    putStrLn $ atacar p2
    putStrLn $ atacar p3
    putStrLn $ rezar p1
    putStrLn $ rezar p2
    putStrLn $ rezar p3