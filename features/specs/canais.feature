#language: pt

@canais
Funcionalidade: Validar busca de canais
  Eu com futuro QA da sky
  Desejo validar a busca de canais

  Esquema do Cenario: Valida busca de canais
    Dado que estou na sessao programacao
    Quando busco '<canal>'
    Entao valido que o '<canal>' aparece
    Exemplos:
      | canal    |
      | TBS      |
      | GLOBO    |
      | GLOOB HD |
      | BAND     |