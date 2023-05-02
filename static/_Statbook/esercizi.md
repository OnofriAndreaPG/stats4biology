---
title: "Metodologia sperimentale per le scienze agrarie"
author: "Andrea Onofri e Dario Sacco"
date: "Update: v. 1.12 (Anno Accademico 2021-2022), compil. 2023-05-02"
#site: bookdown::bookdown_site
documentclass: book
citation_package: natbib
bibliography: [statBook.bib]
biblio-style: apalike
link-citations: yes
description: "Metodologia sperimentale per le scienze agrarie con applicazioni in R"
delete_merged_file: true
#always_allow_html: yes
---

# Premessa {-}

Placeholder


## Obiettivi {-}
## Organizzazione  {-}
## Software statistico {-}
## Gli autori {-}
## Ringraziamenti e scuse {-}

<!--chapter:end:index.Rmd-->


# Scienza e pseudo-scienza

Placeholder


## Scienza = dati
## Dati 'buoni' e 'cattivi'
## Dati 'buoni' e metodi 'buoni'
## Il principio di falsificazione
## Falsificare un risultato
## Elementi fondamentali del disegno sperimentale
### Controllo degli errori
### Replicazione
### Randomizzazione
### Esperimenti invalidi
#### Cattivo controllo degli errori
#### 'Confounding' e correlazione spuria
#### Pseudo-repliche e randomizzazione poco attenta
## Chi valuta se un esperimento è attendibile?
## Conclusioni
## Altre letture

<!--chapter:end:01-introBiometria.Rmd-->


# Progettare un esperimento

Placeholder


## Gli elementi della ricerca
## Ipotesi scientifica $\rightarrow$ obiettivo dell'esperimento
## Identificazione dei fattori sperimentali
### Esperimenti (multi-)fattoriali
### Controllo o testimone
## Le unità sperimentali
## Allocazione dei trattamenti
## Le variabili sperimentali
### Variabili nominali (categoriche)
### Variabili ordinali
### Variabili quantitative discrete
### Variabili quantitative continue
### Rilievi visivi e sensoriali
### Variabili di confondimento
## Esperimenti di campo
### Scegliere il campo
### Le unità sperimentali in campo
### Numero di repliche
### La mappa di campo
### Lay-out sperimentale
#### Disegni completamente randomizzati
#### Disegni a blocchi randomizzati
#### Disegni a quadrato latino
#### Disegni a split-plot
#### Disegni a strip-plot
## Altre letture

<!--chapter:end:02-ProgettoRicerca.Rmd-->


# Richiami di statistica descrittiva

Placeholder


## Descrizione di dati quantitativi
### Indicatori di tendenza centrale
### Indicatori di dispersione
### Incertezza delle misure derivate
### Relazioni tra variabili quantitative: correlazione
## Descrizione di dati qualitativi
### Distribuzioni di frequenze e classamento
### Statistiche descrittive per le distribuzioni di frequenze 
### Distribuzioni di frequenza bivariate: le tabelle di contingenze
### Connessione
## Statistiche descrittive con R
### Descrizione dei sottogruppi
### Distribuzioni di frequenze e classamento
### Connessione
## Altre letture

<!--chapter:end:03-StatisticaDescrittiva.Rmd-->


# Modelli statistici ed analisi dei dati

Placeholder


## Verità 'vera' e modelli deterministici
## Genesi deterministica delle osservazioni sperimentali
## Errore sperimentale e modelli stocastici
### Funzioni di probabilità
### Funzioni di densità
### La distribuzione normale (curva di Gauss)
## Modelli 'a due facce'
## E allora?
## Le simulazioni Monte Carlo
## Analisi dei dati e 'model fitting'
## Modelli stocastici non-normali
## Altre letture

<!--chapter:end:04-ModelliSperimentazione.Rmd-->


# Stime ed incertezza

Placeholder


## Esempio: una soluzione erbicida
### Analisi dei dati: stima dei parametri
### La 'sampling distribution'
### L'errore standard
## Stima per intervallo
## L'intervallo di confidenza
## Qual è il senso dell'intervallo di confidenza?
## Come presentare i risultati degli esperimenti
## Alcune precisazioni
### Campioni numerosi e non
### Popolazioni gaussiane e non 
## Analisi statistica dei dati: riassunto del percorso logico
## Da ricordare
## Per approfondire un po'...
## *Coverage* degli intervalli di confidenza
### Intervalli di confidenza per fenomeni non-normali
## Altre letture

<!--chapter:end:05-InferenzaStatistica.Rmd-->


# Decisioni ed incertezza

Placeholder


## Confronto tra due medie: il test t di Student
### L'ipotesi nulla e alternativa
### La statistica T
### Simulazione Monte Carlo
### Soluzione formale
### Interpretazione del P-level
### Tipologie alternative di test t di Student
## Confronto tra due proporzioni: il test $\chi^2$
### Simulazione Monte Carlo
### Soluzione formale
## Conclusioni e riepilogo
## Altre letture

<!--chapter:end:06-TestIpotesi.Rmd-->


# Modelli ANOVA ad una via

Placeholder


## Caso-studio: confronto tra erbicidi in vaso
## Descrizione del dataset
## Definizione di un modello lineare
## Parametrizzazione del modello
## Assunzioni di base
## Fitting del modello: metodo manuale
### Stima dei parametri
### Calcolo dei residui
### Stima di $\sigma$
## Scomposizione della varianza
## Test d'ipotesi
## Inferenza statistica
## Fitting del modello con R
## Medie marginali attese
## Per concludere ...
## Altre letture

<!--chapter:end:07-ANOVAunaVia.Rmd-->


# La verifica delle assunzioni di base

Placeholder


## Violazioni delle assunzioni di base
## Procedure diagnostiche
## Analisi grafica dei residui
### Grafico dei residui contro i valori attesi
### QQ-plot
## Test d'ipotesi
## Risultati contraddittori
## 'Terapia'
### Correzione/Rimozione degli outliers
### Correzione del modello
### Trasformazione della variabile indipendente
### Impiego di metodiche statistiche avanzate
### Trasformazioni stabilizzanti
## Esempio 1
## Esempio 2
## Altre letture

<!--chapter:end:08-AssunzioniBase.Rmd-->


# Contrasti e confronti multipli

Placeholder


## Esempio
## I contrasti
## I contrasti con R
## I confronti multipli a coppie (pairwise comparisons)
## Display a lettere
## Tassi di errore per confronto e per esperimento
## Aggiustamento per la molteplicità
## E le classiche procedure di confronto multiplo?
## Consigli pratici
## Altre letture

<!--chapter:end:09-ConfrontoMultiplo.Rmd-->


# Modelli ANOVA con fattori di blocco

Placeholder


## Caso-studio: confronto tra erbicidi in campo
## Definizione di un modello lineare
## Stima dei parametri
### Coefficienti del modello
### Stima di $\sigma$
## Scomposizione della varianza
## Adattamento del modello con R
## Disegni a quadrato latino
## Caso studio: confronto tra metodi costruttivi
## Definizione di un modello lineare

<!--chapter:end:10-MultiWayANOVAModels.Rmd-->


# La regressione lineare semplice

Placeholder


## Caso studio: effetto della concimazione azotata al frumento
## Analisi preliminari
## Definizione del modello lineare
## Stima dei parametri
## Valutazione della bontà del modello
### Valutazione grafica
### Errori standard dei parametri
### Test F per la mancanza d'adattamento
### Test F per la bontà di adattamento e coefficiente di determinazione
## Previsioni
## Altre letture

<!--chapter:end:11-LinearRegression.Rmd-->


# Modelli ANOVA a due vie con interazione

Placeholder


## Il concetto di ’interazione’
## Effetti incrociati: interazione tra lavorazioni e diserbo chimico
## Definizione del modello lineare
## Calcoli manuali
### Scomposizione della varianza
## Calcoli con R
### Model fitting
### Verifica delle assunzioni di base
### Scomposizione della varianza
### Medie marginali attese e confronti multipli con R
## Effetti innestati: valutazione di ibridi di mais
## Definizione del modello lineare
## Fitting del modello con R

<!--chapter:end:12-AnovaDueLivelli.Rmd-->


# Breve introduzione ai modelli misti

Placeholder


## Raggruppamenti tra parcelle
## Esperimenti a split-plot
### Definizione del modello lineare
### Model fitting con R
## Esperimenti a strip-plot
### Definizione del modello lineare
### Model fitting con R
## Altre letture

<!--chapter:end:13-SplitStrip.Rmd-->


# La regressione non-lineare

Placeholder


## Caso studio: degradazione di un erbicida nel terreno
## Scelta della funzione
## Stima dei parametri
### Linearizzazione della funzione
### Approssimazione della vera funzione tramite una polinomiale in X
### Minimi quadrati non-lineari
## La regressione non-lineare con R
## Verifica della bontà del modello
### Analisi grafica dei residui
### Test F per la mancanza di adattamento (approssimato)
### Errori standard dei parametri
### Coefficienti di determinazione
## Funzioni lineari e nonlineari dei parametri
## Previsioni		 
## Gestione delle situazioni 'patologiche'
### Trasformazione del modello
### Trasformazione dei dati
## Per approfondire un po'...
### Riparametrizzazione delle funzioni non-lineari
### Altre letture

<!--chapter:end:14-NonLineare.Rmd-->

# Esercizi

Le domande e gli esercizi che seguono sono organizzati per capitolo, in modo che possiate verificare, di volta in volta, se avete acquisito le competenze necessarie per passare al capitolo successivo.

## Introduzione alla biometria (Cap. 1)

### Domanda 1

Quali sono le caratteristiche fondamentali di un esperimento scientifico, perché possa essere ritenuto valido?

### Domanda 2

Illustrare brevemente il metodo scientifico 'galileiano'.

### Domanda 3

Illustrare brevemente la differenza tra errori casuali e sistematici. In presenza di quale dei due è possibile ottenere risultati scientifici validi?

### Domanda 4

Qual è la differenza tra repliche vere e pseudo-repliche?

### Domanda 5

Cosa è il confounding e come può rendere distorti i risultati di un esperimento scientifico?


## Disegno sperimentale (Cap. 2)

### Esercizio 1

Vi è stata affidata una prova sperimentale per la taratura agronomica di un nuovo diserbante appartenente al gruppo chimico delle solfoniluree (AGRISULFURON), utilizzabile alla dose presumibile di 20 g/ha, per il diserbo di post-emergenza del mais. Gli obiettivi della prova sono:

1.  Valutare se è opportuno un certo aggiustamento della dose (incremento/diminuzione)
2.  Valutare se è opportuna l'aggiunta di un bagnante non-ionico
3.  Valutare se è opportuno splittare la dose di 20 g/ha in due distribuzioni
4.  Valutare l'efficacia del nuovo diserbante con gli opportuni controlli (testimoni)

Coerentemente con questi obiettivi, scrivere un protocollo sperimentale sufficientemente dettagliato (una pagina) ed aggiungere la mappa di campo della prova

### Esercizio 2

Dovete progettare una prova sperimentale per valutare i possibili effetti dell'epoca di semina (autunnale oppure primaverile) su sette varietà di favino (che etichetteremo con le lettere da A a G). Progettare un esperimento di pieno campo, decidendo il numero di repliche ed il lay-out sperimentale. Redigere la mappa di campo ed allocare i trattamenti, in base al lay-out prescelto. Aggiungere alla mappa di campo tutti i dettagli necessari (dimensioni delle parcelle, localizzazione ed orientamento dell'esperimento).

### Esercizio 3

Illustrate il disegno sperimentale che adottereste per organizzare una prova sperimentale che metta a confronto quattro concimi azotati (urea, solfato ammonico, nitrato di calcio e nitrato di sodio) e un testimone non concimato su barbabietola da zucchero. Motivate opportunamente le vostre scelte.

### Esercizio 4

Descrivete lo schema sperimentale che adottereste per organizzare un esperimento di confronto tra quattro dosi di un diserbate per il frumento, utilizzato con e senza un coadiuvante. Motivate opportunamente le vostre scelte.

### Esercizio 5

Descrivete lo schema sperimentale che utilizzereste per organizzare una prova su pomodoro da industria, per la valutazione dell'effetto di tre livelli di concimazione azotata (0, 80 e 160 kg/ha) e tre tipologie di interventi irrigui (asciutto, basso volume irriguo, alto volume irriguo). Motivate opportunamente le vostre scelte.

---

## Statistica descrittiva (Cap. 3)

### Esercizio 1

Un'analisi chimica è stata eseguita i triplicato e i risultati sono stati i seguenti: 125, 169 and 142 ng/g. Calcolate a mano la media e tutti gli indicatori di variabilità che conoscete. In che modo può essere espressa l'incertezza della misura?

### Esercizio 2

Un ricercatore ha confrontato il rapporto tra maschi e femmine in una popolazione di insetti sottoposta a due trattamenti sperimentali diversi e si chiede se maschi e femmine manifestino una diversa sensibilità al trattamento in studio. Considerando la tabella sottostante, valutare il grado di dipendenza tra i due caratteri (sesso e sensibilità), in rapporto al valore minimo e massimo possibile per l'indicatore prescelto. Eseguire i calcoli manualmente.


|   | Male| Female|
|:--|----:|------:|
|A  |  275|    175|
|B  |  326|    297|

### Esercizio 3

Un ricercatore ha misurato l'altezza di quattro alberi ed il loro diametro (entrambi in metri). I risultati ottenuti sono i seguenti:


```r
Altezza <- c(2.3, 2.7, 3.1, 3.5)
Diametro <- c(0.46, 0.51, 0.59, 0.64)
```

Calcolare (a mano) il coefficiente di correlazione di Pearson e valutare la ampiezza della correlazione in base ai valori massimi e minimi ammissibili per questa statistica.

### Esercizio 4

Considerate il file EXCEL 'rimsulfuron.csv', che potete trovare in questo percorso: 'https://www.casaonofri.it/_datasets/students.csv'. In questo file sono riportati i risultati di un esperimento con 16 trattamenti e 4 repliche, nel quale sono stati posti a confronti diversi erbicidi e/o dosi per il diserbo nel mais. Calcolare le medie produttive ottenute con le diverse tesi sperimentali e riportarle su un grafico, includendo anche un'indicazione di variabilità. Verificare se la produzione è correlata con il ricoprimento (WeedCover) delle piante infestanti.

### Esercizio 5

Caricare il datasets 'students' disponibile al link: 'https://www.casaonofri.it/_datasets/students.csv'. In questo file potete trovare una database relativo alla valutazione degli studenti in alcune materie del primo anno di Agraria. Ogni record rappresenta un esame, con il relativo voto, la materia e la scuola di provenienza dello studente. Con un uso appropriato delle tabelle di contingenza e del chi quadro, valutare se il voto dipende dalla materia e dalla scuola di provenienza dello studente.

---

## Modelli statistici (Cap. 4)

### Esercizio 1

E' data una distribuzione normale con $\mu$ = 23 e $\sigma$ = 1. Calcolare la probabilità di estrarre individui:

1.  maggiori di 25
2.  minori di 21
3.  compresi tra 21 e 25

### Esercizio 2

E' data una distribuzione normale con $\mu$ = 156 e $\sigma$ = 13. Calcolare la probabilità di estrarre individui:

1.  maggiori di 170
2.  minori di 140
3.  compresi tra 140 e 170

### Esercizio 3

Un erbicida si degrada nel terreno seguendo una cinetica del primo ordine:

$$Y = 100 \, e^{-0.07 \, t}$$

dove Y è la concentrazione al tempo t. Dopo aver spruzzato questo erbicida, che probabilità abbiamo di osservare, dopo 50 giorni, una concentrazione che risulti erroneamente al disotto della soglia di tossicità per i mammiferi (2 ng/g)? Tenere conto che lo strumento di misura produce un coefficiente di variabilità del 20%



### Esercizio 4

Una sostanza xenobiotica si degrada nell'acqua a 20°C seguendo una cinetica del primo ordine:

$$Y = C_0 \, e^{-0.06 \, t}$$

dove Y è la concentrazione al tempo t. Simulare i risultati di un esperimento in cui, dopo la somministrazione di questa sostanza alla dose $C_0 = 63$ ng/mL, facciamo dodici prelievi settimanali e misuriamo la concentrazione del residuo. Considerare che (1) l'errore sperimentale è gaussiano e omoscedastico sul logaritmo della concentrazione, con media 0 e deviazione standard pari a 0.25; (2) l'esperimento è a randomizzazione completa con tre repliche.




### Esercizio 5

Una coltura produce in funzione della sua fittezza, secondo la seguente relazione:

$$ Y = 0.8 + 0.8 \, X - 0.07 \, X^2$$



Stabilire la fittezza necessaria per ottenere il massimo produttivo (graficamente o analiticamente). Valutare la probabilità di ottenere una produzione compresa tra 2.5 e 3 t/ha, seminando alla fittezza ottimale. Considerare che la variabilità stocastica è del 12%.



### Esercizio 6

La tossicità di un insetticida varia con la dose, secondo la legge log-logistica:

$$ Y = \frac{1}{1 + exp\left\{ -2 \, \left[log(X) - log(15)\right] \right\}}$$

dove Y è la proporzione di animali morti e X è la dose. Se trattiamo 150 insetti con una dose pari a 35 g, qual è la probabilità di trovare più di 120 morti? Considerare che la risposta è variabile da individuo ad individuo nella popolazione e questa variabilità può essere approssimata utilizzando una distribuzione gaussiana con una deviazione standard pari a 0.10.



### Esercizio 7

Simulare i risultati di un esperimento varietale, con sette varietà di frumento e quattro repliche. Considerare che il modello deterministico è un modello ANOVA, nel quale vengono definite le medie delle sette varietà (valori attesi). Decidere autonomamente sui parametri da impiegare per la simulazione (da $\mu_1$ a $\mu_7$ e $\sigma$)

### Esercizio 8

Considerando il testo dell'esercizio 5, simulare un esperimento in cui la coltura viene seminata a fittezze di 2, 4, 6, 8 piante per metro quadrato, con quattro repliche.


### Esercizio 9

Considerando il testo dell'esercizio 6, simulare un esperimento in cui l'insetticida viene utilizzato a cinque dosi crescenti (a vostra scelta), con quattro repliche.

---

## Stima dei parametri (Cap. 5)

### Esercizio 1

In un campo di frumento sono state campionate trenta aree di saggio di un metro quadrato ciascuna, sulle quali è stata determinata la produzione. La media delle trenta aree è stata di 6.2 t/ha, con una varianza pari a 0.9. Stimare la produzione dell'intero appezzamento.

### Esercizio 2

Siamo interessati a conoscere il contenuto medio di nitrati dei pozzi della media valle del Tevere. Per questo organizziamo un esperimento, durante il quale campioniamo 20 pozzi rappresentativi, riscontrando  le seguenti concentrazioni:

```
38.3 38.6 38.1 39.9 36.3 41.6 37.0 39.8 39.1     
35.0 38.1 37.4 38.3 34.8 40.4 39.3 37.0 38.7    
38.2 38.4    
```

Stimare la concentrazione media per l'intera valle del Tevere

### Esercizio 3

E'stata impostata una prova sperimentale per confrontare due varietà di mais, con uno schema sperimentale a blocchi randomizzati con tre repliche. La prima varietà ha mostrato produzioni di 14, 12, 15 e 13 t/ha, mentre la seconda varietà ha mostrato produzioni pari a 12, 11, 10.5 e 13 t/ha. Stimare le produzioni medie delle due varietà, nell'ambiente di studio.

### Esercizio 4

Un campione di 400 insetti a cui è stato somministrato un certo insetticida mostra che 136 di essi sono sopravvissuti. Determinare un intervallo di confidenza con grado di fiducia del 95% per la proporzione della popolazione insensibile al trattamento.

### Esercizio 5

È stata studiata la risposta produttiva del sorgo alla concimazione azotata. I dati ottenuti sono:

| Dose | Yield |
|:----:|:----:|
| 0   | 1.26 |
| 30  | 2.50 |
| 60  | 3.25 |
| 90  | 4.31 |
|120  | 5.50 |

Assumendo che la relazione sia lineare (retta), stimare la pendenza e l'intercetta della popolazione di riferimento, dalla quale è stato estratto il campione in studio. Utilizzare la funzione `lm(Yield ~ Dose)` ed estrarre gli errori standard con il metodo `summary()`.

---

## Inferenza (Cap. 6)

### Esercizio 1

Uno sperimentatore ha impostato un esperimento per verificare l'effetto di un fungicida (A) in confronto al testimone non trattato (B), in base al numero di colonie fungine sopravvissute. Il numero delle colonie trattate è di 200, mentre il numero di quelle non trattate è di 100. Le risposte (frequenze) sono come segue:

|     | Morte | Sopravvissute |
|-----|:-----:|:-------------:|
| A   |  180  |      20       |
| B   |  50   |      50       |

Stabilire se i risultati possono essere considerati significativamente diversi, per un livello di probabilità del 5%.

### Esercizio 2

Uno sperimentatore ha impostato un esperimento per confrontare due tesi sperimentali (A, B). I risultati sono i seguenti (in q/ha):

|  A   |  B   |
|:----:|:----:|
| 9.3  | 12.6 |
| 10.2 | 12.3 |
| 9.7  | 12.5 |

Stabilire se i risultati per le due tesi sperimentali possono essere considerati significativamente diversi, per un livello di probabilità del 5%.

### Esercizio 3

Uno sperimentatore ha impostato un esperimento per confrontare se l'effetto di un fungicida è significativo, in un disegno sperimentale con tre ripetizioni. Con ognuna delle due opzioni di trattamento i risultati produttivi sono i seguenti (in t/ha):

|  A  | NT  |
|:---:|:---:|
| 65  | 54  |
| 71  | 51  |
| 68  | 59  |

E'significativo l'effetto del trattamento fungicida sulla produzione, per un livello di probabilità del 5%?

### Esercizio 4

Immaginate di aver riscontrato che, in determinate condizioni ambientali, 60 olive su 75 sono attaccate da *Daucus olee* (mosca dell'olivo). Nelle stesse condizioni ambientali, diffondendo in campo un insetto predatore siamo riusciti a ridurre il numero di olive attaccate a 12 su 75. Si tratta di una oscillazione casuale del livello di attacco o possiamo concludere che l'insetto predatore è stato un mezzo efficace di lotta biologica alla mosca dell'olivo?

### Esercizio 5

In un ospedale, è stata misurata la concentrazione di colesterolo nel sangue di otto pazienti, prima e dopo un trattamento medico. Per ogni paziente, sono stati analizzati due campioni, ottenendo le seguenti concentrazioni:

| Paziente | Prima | Dopo  |
|---------:|------:|:-----:|
|        1 | 167.3 | 166.7 |
|        2 | 186.7 | 184.2 |
|        3 | 107.0 | 104.9 |
|        4 | 214.5 | 205.3 |
|        5 | 149.5 | 148.5 |
|        6 | 171.5 | 157.3 |
|        7 | 161.5 | 149.4 |
|        8 | 243.6 | 241.5 |

Si può concludere che il trattamento medico è stato efficace?

### Esercizio 6

I Q.I. di 16 studenti provenienti da un quartiere di una certa città sono risultati pari a:


```r
QI1 <- c(90.31, 112.63, 101.93, 121.47, 111.37, 100.37, 106.80,
         101.57, 113.25, 120.76,  88.58, 107.53, 102.62, 104.26,
         95.06, 104.88)
```

Gli studenti provenienti da un altro quartiere della stessa città hanno invece mostrato i seguenti Q.I.:


```r
QI2 <- c(90.66, 101.41, 104.61,  91.77, 107.06,  89.51,  87.91,
         92.31, 112.96,  90.33,  99.86,  88.99,  98.97,  97.92)
```

Esiste una differenza significativa tra i Q.I. nei due quartieri della città?

### Esercizio 7

Viene estratto un campione di rondelle da una macchina in perfette condizioni di funzionamento. Lo spessore delle rondelle misurate è:


```r
S1 <- c(0.0451, 0.0511, 0.0478, 0.0477, 0.0458, 0.0509, 0.0446,
        0.0516, 0.0458, 0.0490)
```

Dopo alcuni giorni, per determinare se la macchina sia ancora a punto, viene estratto un campione di 10 rondelle, il cui spessore medio risulta:


```r
S2 <- c(0.0502, 0.0528, 0.0492, 0.0556, 0.0501, 0.0500, 0.0498,
        0.0526, 0.0517, 0.0550)
```


Verificare se la macchina sia ancora ben tarata, oppure necessiti di revisione.

### Esercizio 8

Sono stati osservati 153 calciatori registrando la dominanza della mano e quella del piede, ottenendo la tabella riportata qui di seguito.


|         | piede.sx    | piede.dx    |
|:-------:|:----:|:----:|
| mano sx | 26  | 11 |
| mano dx | 21  | 95 |


Esiste dipendenza tra la dominanza della mano e del piede?

### Esercizio 9

Un agronomo ha organizzato un esperimento varietale, per confrontare tre varietà di frumento, cioè GUERCINO, ARNOVA e BOLOGNA. Per far questo ha individuato, in un campo uniforme dell'areale umbro, trenta parcelle da 18 m^2^ e ne ha selezionate dieci a caso, da coltivare con GUERCINO, altre dieci a caso sono state coltivate con ARNOVA e le ultime dieci sono state coltivate con BOLOGNA.

Al termine dell'esperimento, le produttività osservate erano le seguenti:


| guercino | arnova | bologna |
|:--------:|:------:|:-------:|
|   53.2   |  53.1  |  43.5   |
|   59.1   |  51.0  |  41.0   |
|   62.3   |  51.9  |  41.2   |
|   48.6   |  55.3  |  44.8   |
|   59.7   |  58.8  |  40.2   |
|   60.0   |  54.6  |  37.2   |
|   55.7   |  53.0  |  45.3   |
|   55.8   |  51.4  |  38.9   |
|   55.7   |  51.7  |  42.9   |
|   54.4   |  64.7  |  39.3   |

1. Descrivere i tre campioni, utilizzando opportunamente un indicatore di tendenza centrale ed un indicatore di variabilità
2. Inferire le medie delle tre popolazioni (cioè quelle che hanno generato i tre campioni), utilizzando opportunamente un intervallo di incertezza
3. Per ognuna delle tre coppie (guercino vs arnova, guercino vs bologna, arnova vs bologna), valutare la differenza tra le medie e il suo errore standard. Valutare la significatività della differenza tra le medie delle tre popolazioni, esplicitando l'ipotesi nulla e calcolando il livello di probabilità di errore nel rifiuto dell'ipotesi nulla.



### Esercizio 10

Un botanico ha valutato il numero di semi germinati per colza sottoposto a due diversi regimi termici dopo l'imbibizione (15 e 25°C). Per la temperatura più bassa, su 400 semi posti in prova, ne sono germinati 358. Alla temperatura più alta, su 380 semi in prova, ne sono germinati 286.

1. Descrivere i due campioni, in termini di proporzione di semi germinati
2. Inferire la proporzione di germinati nell'intera popolazione di semi da cui è stato estratto il nostro campione casuale di 780 semi. Utilizzare opportunamente un intervallo di incertezza, sapendo che la varianza di una proporzione è una quantità fissa, che si calcola come $p ( 1- p)$ (dove 'p' è la proporzione osservata.
3. Esiste una differenza significativa tra le proporzioni delle due popolazioni? Esplicitare l'ipotesi nulla e calcolare la probabilità di errore relativa al suo rifiuto.



### Esercizio 11

Un veterinario ha organizzato un esperimento per valutare l'effetto di una dieta innovativa, sulla pressione arteriosa sistolica di cavalli da corsa. Ha selezionato a caso 16 animali, ne ha misurato la pressione arteriosa a riposo ed ha ripetuto la stessa misurazione dopo sei mesi di questa dieta. I risultati ottenuti sono i seguenti:



Stabilire se la dieta è efficace, con una probabilità di errore P < 0.05.

---

## Modelli ANOVA ad una via (Cap. da 7 a 9)

Gli esercizi che seguono sono basati su una serie di dataset, disponibili in un file Excel, che può essere scaricato dal seguente link: [https://www.casaonofri.it/_datasets/EserciziTesto.xlsx](https://www.casaonofri.it/_datasets/EserciziTesto.xlsx). Ogni dataset è in un foglio a parte, il cui nome viene fornito nel testo di ciascun esercizio.

### Esercizio 1 

Un esperimento a randomizzazione completa relativo ad una prova varietale di frumento ha l'obiettivo di porre a confronto la produzione di 5 varietà. Le produzioni (in bushels per acre) osservate siano le seguenti:

| Variety |  1   |  2   |  3   |
|:-------:|:----:|:----:|:----:|
|    A    | 32.4 | 34.3 | 37.3 |
|    B    | 20.2 | 27.5 | 25.9 |
|    C    | 29.2 | 27.8 | 30.2 |
|    D    | 12.8 | 12.3 | 14.8 |
|    E    | 21.7 | 24.5 | 23.4 |

Eseguire l'ANOVA, presentare i risultati e commentarli (esempio tratto da Le Clerg *et al*., 1962)
[Sheet: 7.1]

### Esercizio 2

Colture di tessuto di pomodoro sono state allevate su capsule Petri trattate con una diversa concentrazione di zuccheri, utilizzando cinque repliche. La crescita colturale è riportata in tabella

| Control | Glucose | Fructose | Sucrose |
|:-------:|:-------:|:--------:|:-------:|
|   45    |   25    |    28    |   31    |
|   39    |   28    |    31    |   37    |
|   40    |   30    |    24    |   35    |
|   45    |   29    |    28    |   33    |
|   42    |   33    |    27    |   34    |

Calcolare le medie ed eseguire l'ANOVA. Eseguire i test di confronto multiplo. Commentare i risultati.
[Sheet: 7.2]

### Esercizio 3

E'stato impostato un test di durata su un impianto di riscaldamento, per verificare come la temperatura di esercizio influenza la durata del riscaldatore. Sono state testate 4 temperature, con sei repliche e, per ciascun riscaldatore, è stato rilevato il numero di ore prima della rottura. I risultati sono i seguenti:

| Temp. | Hours to failure |
|------:|-----------------:|
|  1520 |             1953 |
|  1520 |             2135 |
|  1520 |             2471 |
|  1520 |             4727 |
|  1520 |             6134 |
|  1520 |             6314 |
|  1620 |             1190 |
|  1620 |             1286 |
|  1620 |             1550 |
|  1620 |             2125 |
|  1620 |             2557 |
|  1620 |             2845 |
|  1660 |              651 |
|  1660 |              837 |
|  1660 |              848 |
|  1660 |             1038 |
|  1660 |             1361 |
|  1660 |             1543 |
|  1708 |              511 |
|  1708 |              651 |
|  1708 |              651 |
|  1708 |              652 |
|  1708 |              688 |
|  1708 |              729 |

Valutare se la temperatura di esercizio infleunza significativamente la durata del riscaldatore. Quale/i temperatura/e consentono la maggior durata?
[Sheet: 7.3]

### Esercizio 4

Un entomologo ha contato il numero di uova deposte da un lepidottero sulle foglie di tre varietà di tabacco, valutando 15 femmine per varietà. I risultati sono i seguenti:

| Female | Field | Resistant | USDA |
|-------:|------:|----------:|-----:|
|      1 |   211 |         0 |  448 |
|      2 |   276 |         9 |  906 |
|      3 |   415 |       143 |   28 |
|      4 |   787 |         1 |  277 |
|      5 |    18 |        26 |  634 |
|      6 |   118 |       127 |   48 |
|      7 |     1 |       161 |  369 |
|      8 |   151 |       294 |  137 |
|      9 |     0 |         0 |   29 |
|     10 |   253 |       348 |  522 |
|     11 |    61 |         0 |  319 |
|     12 |     0 |        14 |  242 |
|     13 |   275 |        21 |  261 |
|     14 |     0 |         0 |  566 |
|     15 |   153 |       218 |  734 |

Eseguite l'ANOVA. Quali sono le assunzioni necessarie per l'ANOVA? Sono rispettate? Vi sono outliers? Calcolate SEM e SED in modo attendibile.
[Sheet: 7.4]

---

## ANOVA a due vie (Cap. 10)

### Esercizio 1

E' stato impostanto un esperimento a blocchi randomizzati per confrontare sei tipi di irrigazione, in un aranceto della Spagna. I risultati sono i seguenti (in pounds per parcella):

|            Metodo |   1 |   2 |   3 |   4 |   5 |
|------------------:|----:|----:|----:|----:|----:|
|            Goccia | 438 | 413 | 375 | 127 | 320 |
|            Conche | 413 | 398 | 348 | 112 | 297 |
|        Aspersione | 346 | 334 | 281 |  43 | 231 |
| Aspersione+goccia | 335 | 321 | 267 |  33 | 219 |
|       Sommersione | 403 | 380 | 336 | 101 | 293 |

Eseguire l'ANOVA. Quali sono le assunzioni necessarie per l'ANOVA? Sono rispettate? Calcolate SEM e SED ed eseguite il confronto multiplo. Qual è il metodo di irrigazione migliore?
[Sheet: 10.1]

### Esercizio 2

E' stato impostato un esperimento di fertilizzazione secondo uno schema a blocchi randomizzati. I dati ottenuti sono i contenuti percentuali (moltiplicati per 100) in fosforo, in un campione di tessuti vegetali prelevato per parcella:

|           Trattamento |    1 |    2 |   3 |    4 |    5 |
|----------------------:|-----:|-----:|----:|-----:|-----:|
|      Non fertilizzato |  5.6 |  6.1 | 5.3 |  5.9 |  7.4 |
|               50 lb N |  7.3 |   NA | 7.7 |  7.7 |  7.0 |
|              100 lb N |  6.9 |    6 | 5.6 |  7.4 |  8.2 |
|  50 lb N + 75 lb P2O5 | 10.8 | 11.2 | 8.8 | 12.9 | 10.4 |
| 100 lb N + 75 lb P205 |  9.6 |  9.3 |  12 | 10.6 | 11.6 |

Eseguire l'ANOVA, considerando il dato mancante. Calcolare SEM e SED. Qual è il trattamento migliore? Aumentare il dosaggio di N senza P~2~ O~5~ è conveniente? E in presenza di P~2~ O~5~?
[Sheet: 10.2]

### Esercizio 3

È stato condotto un esperimento a quadrato latino per valutare l'effetto di quattro diversi metodi di fertilizzazione. Sono stati osservati i seguenti risultati:

| Fertiliser | Row | Column | Yield |
|-----------:|:---:|:------:|:-----:|
|          A |  1  |   1    |  104  |
|          B |  1  |   2    |  114  |
|          C |  1  |   3    |  90   |
|          D |  1  |   4    |  140  |
|          A |  2  |   4    |  134  |
|          B |  2  |   3    |  130  |
|          C |  2  |   1    |  144  |
|          D |  2  |   2    |  174  |
|          A |  3  |   3    |  146  |
|          B |  3  |   4    |  142  |
|          C |  3  |   2    |  152  |
|          D |  3  |   1    |  156  |
|          A |  4  |   2    |  147  |
|          B |  4  |   1    |  160  |
|          C |  4  |   4    |  160  |
|          D |  4  |   3    |  163  |

Analizzate i dati e commentate i risultati ottenuti
[Sheet: 10.2]

---

## Regressione (Cap. 11)

### Esercizio 1

È stato condotto uno studio per verificare l'effetto della concimazione azotata sulla lattuga, utilizzando uno schema a blocchi randomizzati. I risultat sono i seguenti:

| N level | B1  | B2  | B3  | B4  |
|:-------:|:---:|:---:|:---:|:---:|
|    0    | 124 | 114 | 109 | 124 |
|   50    | 134 | 120 | 114 | 134 |
|   100   | 146 | 132 | 122 | 146 |
|   150   | 157 | 150 | 140 | 163 |
|   200   | 163 | 156 | 156 | 171 |

Analizzare i dati e commentare i risultati
[Sheet: 11.1]

### Esercizio 2

Per valutare la soglia economica d'intervento, è necessario definire la relazione tra la densità di una pianta infestante e la perdita produttiva della coltura. Ipotizziamo che, nel range di densità osservato, il modello di competizione sia una retta. Per parametrizzare questo modello e verificarne la validità, è stato organizzato un esperimento a blocchi randomizzati, dove sono stati inclusi sette diversi livelli di infestazione di *Sinapis arvensis* ed è stata rilevata la produzione di acheni del girasole. I risultati sono:

| density | Rep y | ield   |
|:-------:|------:|:-------|
|    0    |     1 | 36.63  |
|   14    |     1 | 29.73  |
|   19    |     1 | 32.12  |
|   28    |     1 | 30.61  |
|   32    |     1 | 27.7   |
|   38    |     1 | 27.43  |
|   54    |     1 | 24.79  |
|    0    |     2 | 36.11  |
|   14    |     2 | 34.72  |
|   19    |     2 | 30.12  |
|   28    |     2 | 30.8   |
|   32    |     2 | 26.53  |
|   38    |     2 | 27.6   |
|   54    |     2 | 23.31  |
|    0    |     3 | 38.35  |
|   14    |     3 | 32.16  |
|   19    |     3 | 31.72  |
|   28    |     3 | 28.69  |
|   32    |     3 | 25.88  |
|   38    |     3 | 28.43  |
|   54    |     3 | 30.26  |
|    0    |     4 | 36.74  |
|   14    |     4 | 32.566 |
|   19    |     4 | 29.57  |
|   28    |     4 | 33.663 |
|   32    |     4 | 28.751 |
|   38    |     4 | 27.114 |
|   54    |     4 | 24.664 |

Eseguire l'ANOVA e verificare il rispetto delle assunzioni di base. E'corretto eseguire un test di confronto multiplo e perchè? Eseguire l'analisi di regressione lineare, verificando la bontà di adattamento del modello. Definire il modello parametrizzato. Stabilire la soglia d'intervento, ipotizzando il costo del prodotto e dell'intervento diserbante.
[Sheet: 11.2]

---

## ANOVA a due vie con interazione (Cap. 12 e 13)

### Esercizio 1

La biologia di *Sorghum halepense* da rizoma mostra che il peso dei rizomi raggiunge un minimo intorno alla quarta foglia. Di conseguenza, eseguire un trattamento in quest'epoca dovrebbe minimizzare le possibilità di ripresa degli individui trattati, portando anche ad un certo risanamento del terreno. Tuttavia, ci si attende che gli effetti siano maggiori quando le piante provengono da rizomi più piccoli, con un minor contenuto di sostanze di riserva. Per affrontare questi argomenti è stata organizzata una prova in vaso, secondo un disegno a randomizzazione completa con quattro repliche. I risultati sono i seguenti:

| Sizes ↓ / Timing → |  2-3  |  4-5  |  6-7  |  8-9  | 3-4/8-9 | Untreated |
|:-------------------|:-----:|:-----:|:-----:|:-----:|:-------:|:---------:|
| 2-nodes            | 34.03 | 0.10  | 30.91 | 33.21 |  2.89   |   41.63   |
|                    | 22.31 | 6.08  | 35.34 | 43.44 |  19.06  |   22.96   |
|                    | 21.70 | 3.73  | 24.23 | 44.06 |  0.10   |   52.14   |
|                    | 14.90 | 9.15  | 28.27 | 35.34 |  0.68   |   59.81   |
| 4-nodes            | 42.19 | 14.86 | 52.34 | 39.06 |  8.62   |   68.15   |
|                    | 51.06 | 36.03 | 43.17 | 61.59 |  0.05   |   42.75   |
|                    | 43.77 | 21.85 | 57.28 | 48.89 |  0.10   |   57.77   |
|                    | 31.74 | 8.71  | 29.71 | 49.14 |  9.65   |   44.85   |
| 6-nodes            | 20.84 | 11.37 | 55.00 | 41.77 |  9.80   |   43.20   |
|                    | 26.12 | 2.24  | 28.46 | 37.38 |  0.10   |   40.68   |
|                    | 35.24 | 14.17 | 21.81 | 39.55 |  1.42   |   34.11   |
|                    | 13.32 | 23.93 | 60.72 | 48.37 |  6.83   |   32.21   |

Eseguite l'ANOVA. Verificate il rispetto delle assunzioni parametriche di base e, se necessario, trasformate i dati. Preparate una tabella per le medie marginali e le medie di cella ed aggiungete i rispettivi errori standard (SEMs). Ha senso considerare le medie marginali? Impostate un test di confronto multiplo per gli effetti significativi, coerentemente con la risposta alla domanda precedente.
[Sheet: 12-13.1]

### Esercizio 2

Un agronomo ha organizzato un confronto varietale in favino, considerando due epoche di semina: autunnale e primaverile. E' stato utilizzato un disegno a blocchi randomizzati e a parcella suddivisa, con le epoche di semina nelle parcelle principali e le varietà nelle sub-parcelle. I risultati sono i seguenti:

| Sowing Time |  Genotype |  1   |  2   |  3   |  4   |
|:------------|----------:|:----:|:----:|:----:|:----:|
| Autum       |    Chiaro | 4.36 | 4.00 | 4.23 | 3.83 |
|             | Collameno | 3.01 | 3.32 | 3.27 | 3.40 |
|             | Palombino | 3.85 | 3.85 | 3.68 | 3.98 |
|             |     Scuro | 4.97 | 3.98 | 4.39 | 4.14 |
|             |   Sicania | 4.38 | 4.01 | 3.94 | 2.99 |
|             |   Vesuvio | 3.94 | 4.47 | 3.93 | 4.21 |
| Spring      |    Chiaro | 2.76 | 2.64 | 2.25 | 2.38 |
|             | Collameno | 2.50 | 1.79 | 1.57 | 1.77 |
|             | Palombino | 2.24 | 2.21 | 2.50 | 2.05 |
|             |     Scuro | 3.45 | 2.94 | 3.12 | 2.69 |
|             |   Sicania | 3.24 | 3.60 | 3.16 | 3.08 |
|             |   Vesuvio | 2.34 | 2.44 | 1.71 | 2.00 |

Eseguite l'ANOVA. Verificate il rispetto delle assunzioni parametriche di base e, se necessario, trasformate i dati. Preparate una tabella per le medie marginali e le medie di cella ed aggiungete i rispettivi errori standard (SEMs). Ha senso considerare le medie marginali? Impostate un test di confronto multiplo per gli effetti significativi, coerentemente con la risposta alla domanda precedente.
[Sheet: 12-13.2]

### Esercizio 3

Gli erbicidi mostrano sempre un certo grado di persistenza nel terreno. Di conseguenza, se la coltura fallisce subito dopo il diserbo, la scelta delle colture di sostituzione può essere condizionata dal diserbo già eseguito. Per questo motivo, è stato impostato un esperimento di pieno campo volto a valutare se tre erbicidi del mais (rimsulfuron, imazethapyr and primisulfuron) erano in grado di danneggiare quattro colture (soia, girasole, rapa e sorgo) seminate 20 giorni dopo il trattamento. Gli erbicidi sono stati distribuiti su terreno nudo, seguendo un disegno a blocchi randomizzati, su parcelle di elevate dimensioni. Per ogni blocco, la semina è stata eseguita su strisce trasversali, perpendicolari ai trattamenti eseguiti (schema a strip-plot). I risultati sono i seguenti:

| Herbidicide   | Block | sorghum | rape | soyabean | sunflower |
|:--------------|:-----:|:-------:|:----:|:--------:|:---------:|
| Untreated     |   1   |   180   | 157  |   199    |    201    |
|               |   2   |   236   | 111  |   257    |    358    |
|               |   3   |   287   | 217  |   346    |    435    |
|               |   4   |   350   | 170  |   211    |    327    |
| Imazethapyr   |   1   |   47    |  10  |   193    |    51     |
|               |   2   |   43    |  1   |   113    |     4     |
|               |   3   |    0    |  20  |   187    |    13     |
|               |   4   |    3    |  21  |   122    |    15     |
| primisulfuron |   1   |   271   |  8   |   335    |    379    |
|               |   2   |   182   |  0   |   201    |    201    |
|               |   3   |   283   |  22  |   206    |    307    |
|               |   4   |   147   |  24  |   240    |    337    |
| rimsulfuron   |   1   |   403   | 238  |   226    |    290    |
|               |   2   |   227   | 169  |   195    |    494    |
|               |   3   |   400   | 364  |   257    |    397    |
|               |   4   |   171   | 134  |   137    |    180    |

Eseguite l'ANOVA. Verificate il rispetto delle assunzioni parametriche di base e, se necessario, trasformate i dati. Preparate una tabella per le medie marginali e le medie di cella ed aggiungete i rispettivi errori standard (SEMs). Ha senso considerare le medie marginali? Impostate un test di confronto multiplo per gli effetti significativi, coerentemente con la risposta alla domanda precedente.
[Sheet: 12-13.3]

### Esercizio 4

E' stato condotto un esperimento parcellare per valutare l'interazione tra il momento dell'applicazione dell'azoto al terreno (early, optimum, late) e due livelli di un inibitore della nitrificazione (none, 5 lb/acre). L'inibitore ritarda la nitrificazione e riduce le perdite per lisciviazione profonda. L'azoto è stato somministrato in forma marcata ($^{15}$N) e i dati raccolti riguardano la percentuale di azoto assorbito dalla pianta.

| Genotype | Block | Early | Med  | Late |
|:---------|:-----:|:-----:|:----:|:----:|
| A        |   1   | 21.4  | 50.8 | 53.2 |
|          |   2   | 11.3  | 42.7 | 44.8 |
|          |   3   | 34.9  | 61.8 | 57.8 |
| B        |   1   | 54.8  | 56.9 | 57.7 |
|          |   2   | 47.9  | 46.8 | 54.0 |
|          |   3   | 40.1  | 57.9 | 62.0 |

Analizzare i dati e commentare i risultati
[Sheet: 12-13.4]

### Esercizio 5

E' stato organizzato un esperimento per valutare l'effetto della temperatura di lavaggio sulla riduzione di lunghezza di alcuni tessuti. I risultati sono espressi in percentuale di riduzione e sono stati ottenuti in un disegno sperimentale a randomizzazione completa, con quattro tessuti e altrettante temperature.

| Fabric | 210 °F | 215 °F | 220 °F | 225 °F |
|:------:|:------:|:------:|:------:|:------:|
|   A    |  1.8   |  2.0   |  4.6   |  7.5   |
|        |  2.1   |  2.1   |  5.0   |  7.9   |
|   B    |  2.2   |  4.2   |  5.4   |  9.8   |
|        |  2.4   |  4.0   |  5.6   |  9.2   |
|   C    |  2.8   |  4.4   |  8.7   |  13.2  |
|        |  3.2   |  4.8   |  8.4   |  13.0  |
|   D    |  3.2   |  3.3   |  5.7   |  10.9  |
|        |  3.6   |  3.5   |  5.8   |  11.1  |

Analizzare i dati e commentare i risultati
[Sheet: 12-13.5]

### Esercizio 6

Un processo di sintesi chimica prevede due reazioni, la prima richiede un alcool e la seconda richiede una base. Viene impostato un esperimento fattoriale 3 x 2, con tre alcools e due basi, con uno schema sperimentale completamente randomizzato a quattro repliche. Quali sono le vostre raccomandazioni per la prima e la seconda reazione, sulla base dei risultati dell'esperimento. La variabile rilevata mostra la produzione percentuale del processo.

| Base | Alcohol 1 | Alcohol 2 | Alcohol 3 |
|:----:|:---------:|:---------:|:---------:|
|  A   |   91.3    |   89.9    |   89.3    |
|      |   88.1    |   89.5    |   87.6    |
|      |   90.7    |   91.4    |   90.4    |
|      |   91.4    |   88.3    |   90.3    |
|  B   |   87.3    |   89.4    |   92.3    |
|      |   91.5    |   93.1    |   90.7    |
|      |   91.5    |   88.3    |   90.6    |
|      |   94.7    |   91.5    |   89.8    |

Analizzare i dati e commentare i risultati
[Sheet: 12-13.6]

---

## Regressione non-lineare (Cap. 14)

### Esercizio 1

Due campioni di terreno sono stati trattati con due erbicidi diversi e sono stati posti in cella climatica alle medesime condizioni di temperatura ed umidità. In tempi diversi dopo l'inizio dell'esperimento sono state prelevate aliquote di ciascun terreno e ne è stata determinata la concentrazione residua di erbicida. I risultati ottenuti sono i seguenti:

| Time | Herbicide A | Herbicide B |
|:----:|:-----------:|:-----------:|
|  0   |   100.00    |   100.00    |
|  10  |    50.00    |    60.00    |
|  20  |    25.00    |    40.00    |
|  30  |    15.00    |    23.00    |
|  40  |    7.00     |    19.00    |
|  50  |    3.50     |    11.00    |
|  60  |    2.00     |    5.10     |
|  70  |    1.00     |    3.00     |

Ipotizzando che la degradazione dei due erbicidi segue una cinetica del primo ordine, parametrizzare la relativa equazione e determinare la semivita dei due erbicidi. Quale sostanza degrada più velocemente?
[Sheet: 14.1]

### Esercizio 2

Un popolazione microbica in condizioni non-limitanti di substrato cresce seguendo una cinetica del primo ordine. Un esperimento da i seguenti risultati:

| Time | Cells |
|:----:|:-----:|
|  0   |   2   |
|  10  |   3   |
|  20  |   5   |
|  30  |   9   |
|  40  |  17   |
|  50  |  39   |
|  60  |  94   |
|  70  |  201  |

Parametrizzare un modello esponenziale e calcolarne la bontà di adattamento.
[Sheet: 14.2]

### Esercizio 3

E' stato organizzato un esperimento per valutare il tasso di assorbimento radicale di azoto da parte di *Lemna minor* allevata in coltura idroponica. I risultati medi ottenuti sono i seguenti:

|  conc  |  rate  |
|:------:|:------:|
|  2.86  | 14.58  |
|  5.00  | 24.74  |
|  7.52  | 31.34  |
| 22.10  | 72.97  |
| 27.77  | 77.50  |
| 39.20  | 96.09  |
| 45.48  | 96.97  |
| 203.78 | 108.88 |

Parametrizzare il modello iperbolico di Michaelis-Menten:

$$y = \frac{a x} {b + x}$$

Valutarne la bontà di adattamento.
[Sheet: 14.3]

### Esercizio 4

E' stato organizzato un esperimento di competizione per valutare l'effetto di densità crescenti di *Ammi majus* sulla produttività del girasole. I risultati ottenuti sono i seguenti:

| Weed density | Yield |
|:------------:|:-----:|
|      0       | 3.52  |
|      23      | 2.89  |
|      31      | 2.76  |
|      39      | 2.75  |
|      61      | 2.48  |

Parametrizzare l'iperbole di Cousens:

$$Y_W  = Y_{WF} \left( 1 - \frac{i \cdot x}{100\left( 1 + \frac{i \cdot x}{a} \right)} \right)$$

Valutarne la bontà di adattamento. Determinare la soglia economica di intervento.
[Sheet: 14.4]

### Esercizio 5

Uno degli aspetti fondamentali degli studi relativi alla diversità degli ambienti è la valutazione delle curve area-specie. E' stato considerato un aranceto siciliano, del quale è stata valutata con un apposito campionamento 'innestato' la curva area-specie.

| Area | numSpecie |
|:----:|:---------:|
|  1   |     4     |
|  2   |     5     |
|  4   |     7     |
|  8   |     8     |
|  16  |    10     |
|  32  |    14     |
|  64  |    19     |
| 128  |    22     |
| 256  |    22     |

Parametrizzare una curva 'di potenza' (power curve):

$$a \cdot x^b$$

Valutarne la bontà di adattamento. Determinare l'area minima di campionamento.
[Sheet: 14.5]

### Esercizio 6

Si ritiene che la crescita di una coltura possa essere descritta accuratamente con un'equazione di Gompertz. Si ritiene inoltre che la presenza delle piante infestanti possa modificare la crescita della coltura, alterando i valori dei parametri del modello anzidetto. Per questo motivo viene organizzato un esperimento a randomizzazione completa con tre repliche, 6 tempi di prelievo (DAE) e 2 stati di infestazione (infestato e libero). In ogni tempo di prelievo, le tre repliche vengono raccolte e viene determinato il peso della coltura. I risultati ottenuti sono i seguenti:

| DAE | Infested | Weed Free |
|:---:|:--------:|:---------:|
| 21  |   0.06   |   0.07    |
| 21  |   0.06   |   0.07    |
| 21  |   0.11   |   0.07    |
| 27  |   0.20   |   0.34    |
| 27  |   0.20   |   0.40    |
| 27  |   0.21   |   0.25    |
| 38  |   2.13   |   2.32    |
| 38  |   3.03   |   1.72    |
| 38  |   1.27   |   1.22    |
| 49  |   6.13   |   11.78   |
| 49  |   5.76   |   13.62   |
| 49  |   7.78   |   12.15   |
| 65  |  17.05   |   33.11   |
| 65  |  22.48   |   24.96   |
| 65  |  12.66   |   34.66   |
| 186 |  21.51   |   38.83   |
| 186 |  26.26   |   27.84   |
| 186 |  27.68   |   37.72   |

Parametrizzare il modello di Gompertz:

$$a \cdot exp(-b \cdot exp(-c \cdot x))$$

e verificarne la bontà di adattamento nelle due situazioni. Quali parametri del modello di Gompertz sono maggiormente influenzati dalle piante infestanti? Abbiamo elementi per ritenere che la crescita segua un'equazione di Gompertz piuttosto che una logistica simmetrica?
[Sheet: 14.6]

### Esercizio 7

Piante di *Tripleuspermum inodorum* in vaso sono state trattate con erbicida sulfonilureico (tribenuron-methyl) a dosi crescenti. Tre settimano deopo il trattamento è stato registrato il peso delle piante sopravvissute, ottenendo i risulti riportati nella tabella seguente:

| Dose (g a.i. ha$^{-1}$) | Fresh weight (g pot $^{-1}$) |
|:-----------------------:|:----------------------------:|
|            0            |            115.83            |
|            0            |            102.90            |
|            0            |            114.35            |
|          0.25           |            91.60             |
|          0.25           |            103.23            |
|          0.25           |            133.97            |
|           0.5           |            98.66             |
|           0.5           |            92.51             |
|           0.5           |            124.19            |
|            1            |            93.92             |
|            1            |            49.21             |
|            1            |            49.24             |
|            2            |            21.85             |
|            2            |            23.77             |
|            2            |            22.46             |

Si ipotizza che la relazione dose-effetto possa essere descritta con un modello log-logistico:

$$c + \frac{d - c}{1 + exp(b ( log (x) - log (a))}$$

Parametrizzare questo modello e verificarne la bontà d'adattamento.
[Sheet: 14.7]

<!--chapter:end:15-Esercizi.Rmd-->


# Appendice 1: breve introduzione ad R

Placeholder


## Cosa è R? {-}
## Oggetti e assegnazioni {-}
### Costanti e vettori {-}
### Matrici {-}
### Dataframe {-}
### Quale oggetto sto utilizzando? {-}
## Operazioni ed operatori {-}
## Funzioni ed argomenti {-}
## Consigli per l'immissione di dati sperimentali {-}
### Immissione di numeri progressivi {-}
### Immissione dei codici delle tesi e dei blocchi {-}
### Immissione dei valori e creazione del datframe {-}
### Leggere e salvare dati esterni {-}
## Alcune operazioni comuni sul dataset {-}
### Selezionare un subset di dati {-}
### Ordinare un vettore o un dataframe {-}
## Workspace {-}
## Script o programmi {-}
## Interrogazione di oggetti {-}
## Altre funzioni matriciali {-}
## Cenni sulle funzionalità grafiche in R {-}
## Altre letture {-}

<!--chapter:end:17-IntroduzioneR.Rmd-->

