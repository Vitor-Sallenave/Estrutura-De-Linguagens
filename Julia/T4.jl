# Definindo um tipo abstrato para identificar figuras geométricas
abstract type FigGeometrica end

# Tipos de figuras possíveis
struct Circulo <: FigGeometrica
    raio::Real
end

struct Retangulo <: FigGeometrica
    largura::Real
    comprimento::Real
end

struct Triangulo <: FigGeometrica
    base::Real
    altura::Real
end

struct Quadrado <: FigGeometrica
    lado::Real
end

# Áreas de acordo com cada figura
area(fig::Circulo) = π*fig.raio^2
area(fig::Retangulo) = fig.largura * fig.comprimento
area(fig::Triangulo) = (fig.base * fig.altura)/2
area(fig::Quadrado) = fig.lado^2

c = Circulo(10)
ret = Retangulo(10, 10)
tri = Triangulo(10, 5)
quad = Quadrado(10)

println(""" Áreas:

Circulo = $(area(c))
Retangulo = $(area(ret))
Triangulo = $(area(tri))
Quadrado = $(area(quad))
""")