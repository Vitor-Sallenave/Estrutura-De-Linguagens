-- 1. Seleção dos alunos aprovados em uma turma

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

main = print resultados