-- 1. Corte de notas e seleção de candidatos em um processo seletivo

notas = [701, 343, 762,
        580, 900, 694,
        568, 789, 873]
corte = 760
selecao = length (filter (> corte) notas)
main = print selecao -- número de aprovados