-- 1. Corte de notas e seleção de candidatos em um processo seletivo

notas :: [Integer]
notas = [701, 343, 762,
        580, 900, 694,
        568, 789, 873]
corte = 760

selecao :: [Integer]
selecao = filter (> corte) notas

-- 2. Filtrando um formulário de pesquisa

-- Formato do formulário
data Formulario = Formulario { nome :: String, idade :: Int, sexo :: Char } deriving (Show)

-- Função para filtrar respostas de pesquisa por sexo feminino
filtraMasc :: [Formulario] -> [Formulario]
filtraMasc forms = filter (\pessoa -> sexo pessoa == 'M') forms

respostas :: [Formulario]
respostas = [Formulario "Marcia" 29 'F', Formulario "Joao" 33 'M', Formulario "Ana" 22 'F', Formulario "Gilberto" 20 'M']

respostasM :: [Formulario]
respostasM = filtraMasc respostas

main :: IO ()
main = print (selecao, filtraMasc respostas)