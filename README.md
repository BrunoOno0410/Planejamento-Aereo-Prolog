# Planejamento-Aereo-Prolog
###### Projeto sobre disponibilidade de voos simulados.

### FUNÇÕES:

### 1) Verifica se é possível ir de uma cidade a outra, através de um vôo direto (sem escalas), em determinado dia, hora e companhia.
EXEMPLO:

?- voo_direto(frankfurt, roma, klm, qua, Horário).

Horário = 14:10;

False

### 2) Verifica se existe vôos entre duas cidades, num determinado dia da semana. A consulta retorna o dia da semana, o horário de saída, o horário de chegada e a companhia.
EXEMPLO:

?- filtra_voo_dia_semana(frankfurt, roma, qua, HorarioSaida, HorarioChegada, Companhia).

Dia: qua

Horario: 14:10 ate 18:35

Companhia: klm

**Companhia = klm,
HorarioChegada = 18:35,
HorarioSaida = 14:10**. 

false

### 3) Função retorna lista de voos entre duas cidades **X** e **Y**
EXEMPLO:

?- roteiro(frankfurt, roma, ListaRota).

ListaRota = [[[em16]], [[km16]], [[tp16]]]

### Desenvolvido no primeiro semestre de 2021, na matéria de Paradigmas da Programação, na linguagem PROLOG.

#### Feito por: Bruno.
