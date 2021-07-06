# Guia do projecto Repetidor Neutec

Este documento visa guiar e documentar o projecto Repetidor Neutec.

## Enquadramento

O projecto surge de um contacto informal do Costa (**CT1EYN**) comigo
(**CT1ENQ**), cujo objectivo inicial seria documentar a parte de controlo que o
Costa (**CT4QC**) fez no repetidor de UHF de Guimarães para posteriormente as 
aplicar num repetidor de origem da Neutec que não cumpria os requisitos legais.

Quando referimos o Costa (**CT4QC**), também devemos incluir o Armindo
(**CT1AND**) e outros que eventualmente tenham participado no esforço de munir a
ARM (Associação de Rádioamadores do Minho) de um conjunto de repetidores de
"construção caseira".

Como não privei nem tive grande contacto com os membros da ARM desse período,
além de ter estado ausente da região por vários anos, acabo por desconhecer a
história dos bastidores técnicos da associação. Entretanto, infelizmente, quem 
detinha o conhecimento acabou por falecer (sk).

### Um pouco de história

Através de um documento anexo ao repetidor de Guimarães conseguimos apurar a
data de Setembro 1998 pelo que terá sido por essa altura que o repetidor estaria
pronto para ser instalado. Este repetidor era um rádio Neutec SM-1630U (UHF)
modificado para servir como repetidor. O emissor e receptor funcionam em
simultâneo e essa modificação não foi documentada, nem na altura, nem agora.
Também foi introduzida alguma electrónica para controlo de transmissão, 
identificação em morse com intervalo de 10 minutos entre outros.
Posteriormente, teve nova intervenção para cumprir os novos requisitos de
identificação de voz. Estas adições são o alvo da nossa documentação.

Inicialmente o indicativo do repetidor era **CT0UGM** na frequência de 
**439.100 MHz**, RU88, e com a alteração da legislação, passou a ter o
indicativo **CQ0UGMR**, RU728, até aos dias de hoje.

### O início do projecto

Volvidos estes anos todos e havendo no legado da ARM, um repetidor de origem da
Neutec (SM-1645HS) para os 2m (VHF), operacional mas sem tom de protecção e sem 
identificação, fazia todo o sentido perceber o que foi feito no repetidor de 
Guimarães e replicar, dentro das diferenças existentes, algo similar para dotar
a ARM de um repetidor que pudesse servir de substituto ou mesmo para uma nova
instalação. 

Havendo essa necessidade e com a pandemia que nos afectou desde 2019 até à
actualidade (estamos em 2021) houve um novo fôlego na comunidade de 
rádioaamadores e o Costa (**CT1EYN**) lançou o desafio que foi aceite.

Infelizmente só tivemos acesso ao repetidor Neutec já na fase final do projecto
pelo que haveria lugar a algumas melhorias adicionais, ainda assim, foi obtido
um bom resultado e estamos em testes finais faltando apenas os testes de campo
na montanha da Santa Marta, no local do repetidor.

## Requisitos

Legalmente, em Portugal, um repetidor para o serviço de amador deve cumprir um
conjunto de requisitos. Do ponto de vista de controlo, são os seguintes:

- Tempo de retransmissão - Timeout Timer: Max 3 min (180s)
- Tempo de penalização - Retrigger/Penalty: 5 seg.
- Intervalo de identificação - ID Interval: Max 10 min (600s)

Requisito adicional, será o de evitar que a identificação ocorra quando alguém
está a utilizar o repetidor evitando assim que duas vozes concorram pela atenção
. Além disso deve contemplar a utilização do microfone de mão, no próprio
repetidor e evitar que não haja identificação durante um período de bloqueio
("timeout"). Este requisito levanta uma questão em particular, a da
obrigatoriedade de se identificar de 10 em 10 minutos. No entanto, a lei deve,
na minha opinião, ser entendida ao invés de uma interpretação cega. Assim; 
do ponto de vista da nossa actividade, faz todo o sentido, identificar o
repetidor, intervaladamente, para que eventuais escutas,quando não haja 
actividade no repetidor, consigam identificar o mesmo.
Se a identificação ocorrer em simultâneo com um QSO, em nada será benéfico, 
tanto é que este requisito se coloca. Do ponto de vista informativo, a presença
de um QSO implica a identificação dos intervinientes que por sua vez identifica
indirectamente o repetidor que por sua vez aguardará de forma incessante, a
possibilidade de se identificar, se é que podemos dizê-lo desta forma. Se a 
identificação ocorre no primeiro instante em que está livre ou se após uma
análise mais ou menos cuidada, o resultado obtido, será sempre no intuito de
seguir a lei mas salvaguardando a "qualidade" de um qso.

## Primeira análise

O primeiro passo do projecto foi efectuar engenharia reversa nos circuitos de
controlo construídos pelo Costa (**CT4QC**) por forma a desenhar um esquema e
posterior compreensão dos passos dados na altura. 

O repetidor de Guimarães foi construído com montagem de superfície utilizando
componentes THT, com PCB cortados "à mão" e placas de furos genéricas. Além
disso, estão divididos em dois "conjuntos" que para simplicidade passaremos a
designar por:

- Placa de cima
- Placa de baixo

Esta designação tem em consideração o posicionamente dos circuitos na montagem
original que foi mantida.

### Placa de baixo

Na placa de baixo temos vários blocos:

- Detecção de sub-tom
- Controlo de PTT
- Temporização de cauda
- Temporização de retransmissão

### Placa de cima

Na placa de cima temos os blocos referentes à identificação:

- microcontrolador
 - temporizador de 10min.
 - verificação de tom e ou PTT
 - disparo da identificação Voz/Morse
- controlo de PTT da identificação
- gerador de sinal áudio de Morse

## Organização do projecto

Após esta breve explicação, convém descrever a organização da documentação
relativa ao projecto. 

O projecto é na realidade um conjunto de projectos:

- Desenho dos esquemas do repetidor original
- Novo projecto de repetidor baseado no anterior, inclui PCBs e novo *firmware*
- Adaptação do desenho original, no repetidor de Guimarães com as alterações
realizadas ao esquema inicial.
- Vários (documentos, *datasheets*, imagens, etc)

## Descrição detalhada

Segue uma descrição, mais detalhada, das várias pastas deste projecto.

### [CT1ENQ_CT1EYN](./CT1ENQ_CT1EYN/)

As novas placas, esquemas e firmware.

- [Placa de baixo](./CT1ENQ_CT1EYN/bottom)
- [Placa de cima](./CT1ENQ_CT1EYN/top)
- [Novo firmware e código fonte (AT89C2051)](./CT1ENQ_CT1EYN/firmware)

### [CT4QC](./CT4QC)

O esquema original das adições que foram feitas ao SM-1630U para o dotar de
controlo de repetidor (baseado no repetidor de UHF de Guimarães). Também inclui
os esquemas das alterações que foram feitas ao original e uma "imagem" do
código original (binário). O firmware para esta modificação está anexa ao
novo *firmware* do repetidor.

- [Esquema de baixo](./CT4QC/original/bottom)
- [Esquema de cima](./CT4QC/original/top)
- [Esquema das novas modificações (cima)](./CT4QC/mod/)
- [*Firmware* original do AT89C2051](./CT4QC/original/firmware)

#### [Tools](./tools)

Programas auxiliares para cálculo de valores no temporizador e detector de tom.
Contém tabelas de valores em pdf.

#### [Doc](./doc/)
  
Conjunto de documentos reunidos durante o desenrolar do projecto, uns mais
relevantes do que outros (Datasheets, Papers, Pdfs, etc).

**Esta pasta não deverá estar presente nos repositórios públicos**.

#### [Images](./images/)

Imagens relacionadas com o projecto.

**Esta pasta não deverá estar presente nos repositórios públicos**.

#### [Sound](./sound/)

Ficheiros de áudio, utilizados no projecto (identificação).

## Software, *Frameworks* e outras informações

O trabalho foi projectado na sua totalidade num sistema Linux (Fedora 34) no
entanto existem as mesmas ferramentas ou equivalentes para o sistema Windows.

No desenho de esquemas e placas de circuito impresso, foi utilizado o
software gratuito, [KiCad 5.1.10-1](https://www.kicad.org).

O firmware foi desenvolvido em linguagem C e foi utilizado o compilador **sdcc**
, [Small Devices C Compiler](http://sdcc.sourceforge.net/) (v4.0.0) juntamente
com **Makefiles**.

Para programar o microcontrolador AT89C2051, utilizamos o programador
[TL866II Plus](http://www.autoelectric.cn/en/tl866_main.html) e o programa
[**minipro** (linux)](https://gitlab.com/DavidGriffith/minipro/).

## Notas finais

Os projectos devem ter documentos descritivos dentro de cada pasta, sempre que
se justificar.

Também convém indicar que o projecto de firmare (código fonte), quando num
contexto de repositório público, terá o seu repositório próprio. Já os esquemas
e restantes ficheiros estarão a acompanhar este documento. Num contexto interno
à ARM ou da comunidade de rádioamadores local, os ficheiros estarão todos 
agregados, num formato de compressão comum.
