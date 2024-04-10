type Viagem = (String, String, Int)

-- Origem -> Destino -> Distância em km

viagens :: [Viagem]
viagens = [("Rio de Janeiro", "Roraima", 2300),
           ("Roraima", "Santa Catarina", 2500),
           ("Santa Catarina", "Rio Grande do Sul", 700),
           ("Rio Grande do Sul", "Mato Grosso do Sul", 700),
           ("Rio de Janeiro", "Santa Catarina", 1300),
           ("Santa Catarina", "Roraima", 2300)]

-- a. Contabilizando o número de viagens curtas feitas pela empresa

-- Acessando a distancia nas tuplas
third :: (a, b, c) -> c
third (_, _, x) = x

-- Construindo a função de classificação
classificaDistancia :: (String, String, Int) -> String
classificaDistancia d
 | third d > 2000 = "Longa"
 | third d  > 1000 = "Media" 
 | otherwise = "Curta"

viagensClassificadas :: [String]
viagensClassificadas = map classificaDistancia viagens

viagensCurtas :: Int
viagensCurtas = length viagensClassificadas

-- b. filter  

-- Encontramos um problema mecânico em uma aeronave que está projetada para percorrer um trajeto de 700 km. 
-- Precisamos fitrar as viagens para podermos sinalizar a equipe técnica da nossa empresa em quais voos este problema pode estar e corrigí-lo antes da decolagem.

viagensRJ :: [Viagem]
viagensRJ = filter (\x -> third x == 700) viagens

-- c. fold

-- Precisamos descobrir qual é a maior distância registrada entre as viagens para um registro diário.

maxDist v1 v2 = max v1 (third v2)

viagemMax :: Int
viagemMax = foldl maxDist 0 viagens

-- Exibindo os resultados
main :: IO ()
main = print (viagensClassificadas, viagensRJ, viagemMax)