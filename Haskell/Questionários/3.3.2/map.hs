-- 1. Análise das notas de alunos

-- Médias finais dos alunos
-- nota >= 7 (Aprovado)
-- 5 <= nota < 7 (Em recuperação) 
-- nota < 5 (reprovado)
notas = [7.8, 9.0, 10.0, 2.8, 4.7, 5.0, 5.3]
analisaNota nota
  | nota >= 7.0 = "Aprovado"
  | nota >= 5 = "Em recuperacao"
  | otherwise = "Reprovado"

resultados = map analisaNota notas

-- 2. Produtos corrigidos com a inflação

precos = [10, 20, 30, 40, 50]
i = 0.2
precosCorrigidos = map(\x -> x*(1+i)) precos

main = print (resultados, precosCorrigidos)