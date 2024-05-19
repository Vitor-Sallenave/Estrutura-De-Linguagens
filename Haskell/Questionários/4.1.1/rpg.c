#include <stdio.h>

// Definindo o enum para representar as classes
typedef enum {
    Guerreiro,
    Mago,
    Sacerdote
} Classe;

// Características compartilhadas
typedef struct {
    char nome[50];
    int idade;
    float altura;
    int vida;
} AtributosComuns;

// Características específicas
typedef union {
    int forca;       
    char poder[50]; 
    char religiao[50];
} AtributosEspecificos;

typedef struct {
    Classe classe;
    AtributosComuns comum;
    AtributosEspecificos especifico;
} Personagem;

void atacar(Personagem);
void rezar(Personagem);


int main() {
    Personagem p1 = { Guerreiro, { "Anibal", 25, 1.85, 200 }, { .forca = 100 } };
    Personagem p2 = { Mago, { "Dumbdlore", 70, 1.90, 300 }, { .poder = "congela o tempo" } };
    Personagem p3 = { Sacerdote, { "Abilio", 64, 1.75, 150 }, { .religiao = "Catolica" } };
    
    atacar(p1); atacar(p2); atacar(p3);
    rezar(p1); rezar(p2); rezar(p3);
    
    return 0;
}


void atacar(Personagem personagem) {
    switch (personagem.classe) {
        case Guerreiro:
            printf("%s ataca com forca %d.\n", personagem.comum.nome, personagem.especifico.forca);
            break;
        case Mago:
            printf("%s lanca um feitico que %s.\n", personagem.comum.nome, personagem.especifico.poder);
            break;
        case Sacerdote:
            printf("%s nao e capaz de atacar!\n", personagem.comum.nome);
            break;
    }
}

void rezar(Personagem personagem) {
    switch (personagem.classe) {
        case Sacerdote:
            printf("%s esta rezando para aumentar a vida de seus aliados.\n", personagem.comum.nome);
            break;
        default:
            printf("%s nao e capaz de rezar!\n", personagem.comum.nome);
            break;
    }
}