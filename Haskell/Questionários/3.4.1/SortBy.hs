import Data.List (sortBy)
import Data.Ord (comparing)

data Candidato = Candidato { nome :: String
                     , idade :: Int
                     , nota :: Float
                     } deriving (Show)

-- Ordena as pessoas primeiro por Nota e depois por Idade: critério de seleção de um vestibular, por exemplo
comparaCandidato :: Candidato -> Candidato -> Ordering
comparaCandidato can1 can2 =
    case compare (nota can2) (nota can1) of
        EQ -> compare (idade can2) (idade can1)
        other -> other

candidatos :: [Candidato]
candidatos = [Candidato "Vitor" 25 754
         , Candidato "Gabriel" 30 645
         , Candidato "Arthur" 20 378
         , Candidato "Rodrigo" 25 645
         , Candidato "Lucas" 20 543]

-- Ordenando os candidatos
candidatosOrdenado :: [Candidato]
candidatosOrdenado = sortBy comparaCandidato candidatos

main = print candidatosOrdenado
