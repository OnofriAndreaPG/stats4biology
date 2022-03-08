---
title: "Metodologia statistica per le scienze agrarie"
author: "Andrea Onofri e Dario Sacco"
date: "Update: v. 0.511, compil. 2019-10-25"
#site: bookdown::bookdown_site
documentclass: book
citation_package: natbib
bibliography: [statBook.bib]
biblio-style: apalike
link-citations: yes
description: "Appunti dai corsi S.I.A."
delete_merged_file: true
---

# Introduzione {-}

Placeholder


## Organizzazione del testo {-}
## Gli autori {-}
## Pre-requisiti {-}

<!--chapter:end:index.Rmd-->


# Scienza e pseudo-scienza

Placeholder


## Introduzione
### Cosa è quindi una prova scientifica?
##  Esperimenti buoni e cattivi!
### L'errore sperimentale
### Il campionamento
## Scienza = metodo
## Chi valuta se un esperimento è attendibile?
## Il metodo sperimentale
## Metodi sperimentali validi ed invalidi
### Primo esperimento
### Secondo esperimento
### Terzo esperimento
### Quarto esperimento: quello buono
## Incertezza residua
## Il ruolo della statistica
## Conclusioni

<!--chapter:end:01-introBiometry.Rmd-->


# Esperimenti validi ed invalidi

Placeholder


## Definizioni
## Elementi fondamentali del disegno sperimentale
### Primo elemento: controllo degli errori
#### Campionamento rappresentativo
#### Omogeneità
#### Rigore
#### Evitare le 'intrusioni demoniache'
### Secondo elemento: replicazione
### Terzo elemento: randomizzazione
#### Gradienti e blocking
#### E se ricercatori/soggetti sono influenzabili?
### Esperimenti non validi
#### Cattivo controllo degli errori
#### 'Confounding' e correlazione spuria
#### Pseudo-repliche e randomizzazione poco attenta
## Conclusione
## Per approfondimenti

<!--chapter:end:02-IntroExpMethods.Rmd-->


# Progettare un esperimento

Placeholder


## Ipotesi scientifica $\rightarrow$ obiettivo dell'esperimento
## Identificazione dei fattori sperimentali
### Esperimenti (multi)fattoriali
### Aggiungere un controllo?
### Fattori sperimentali di trattamento e di blocco
## Identificazione delle unità sperimentali
### Cornice di campionamento
### Scelta delle unità sperimentali
### Unità sperimentali in campo: le parcelle
## Allocazione dei trattamenti e disegno sperimentale
### Disegni completamente randomizzati
### Disegni a blocchi randomizzati
### Disegni a quadrato latino
## Scelta delle variabili da rilevare
### Variabili nominali (categoriche)
### Variabili ordinali
### Variabili quantitative discrete
### Variabili quantitative continue
### Rilievi visivi e sensoriali
### Variabili di confondimento
## Impianto delle prove
## Scrivere un progetto/report di ricerca: semplici indicazioni

<!--chapter:end:03-ResProject.Rmd-->


# Modelli matematici a 'due facce'

Placeholder


## Verità 'vera' e modelli deterministici
## Qualche esempio di modello deterministico
## Genesi deterministica delle osservazioni sperimentali
## Errore sperimentale e modelli stocastici
### Funzioni di probabilità
### Funzioni di densità
## La distribuzione normale (curva di Gauss)
## Modelli 'a due facce'
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
### Esercizio 7
## Altri modelli stocastici di interesse per lo sperimentatore
## E allora?
## Le simulazioni Monte Carlo
## Analisi dei dati e 'model fitting'

<!--chapter:end:04-ModelliSperimentazione.Rmd-->


# Esperimenti, stime ed incertezza

Placeholder


## L'analisi dei dati: gli 'ingredienti' fondamentali
## Esempio: una soluzione erbicida
### Il modello dei dati
### Analisi dei dati: stima dei parametri
### La 'sampling distribution'
### L'errore standard
## Riepilogo 1: Caratterizzare l'incertezza di un esperimento
## L'intervallo di confidenza
## Qual è il senso dell'intervallo di confidenza?
## Come presentare i risultati degli esperimenti
## Alcune precisazioni
### Campioni numerosi e non
### Popolazioni gaussiane e non 
## Analisi statistica dei dati: riassunto del percorso logico
## Da ricordare
## Esercizi

<!--chapter:end:06-InferenzaStatistica.Rmd-->


# Breve introduzione al test d'ipotesi

Placeholder


## Confronto tra una media osservata e una media teorica
### Simulazione Monte Carlo
### Soluzione formale
### Interpretazione del P-level
## Confronto tra due medie: il test t di Student
## Confronto tra due proporzioni: il test $\chi^2$
## Conclusioni
## Riepilogo
## Esercizi

<!--chapter:end:07-TestIpotesi.Rmd-->


# Modelli ANOVA ad una via

Placeholder


## La situazione sperimentale
## Descrizione del dataset
## Assunzioni di base
## Stima dei parametri
### Modello 'nullo'
### Modello 'completo'
### Stima per intervallo
### Stime derivate
## Test d'ipotesi
## Per concludere ...
## Per approfondimenti

<!--chapter:end:09-oneWayANOVA.Rmd-->

# La verifica delle assunzioni di base

Nel momento in cui eseguiamo test d’ipotesi nell’ambito di un modello lineare, assumiamo implicitamente che i dati rispondano ai seguenti requisiti:

1.  il modello è corretto;
2.  la risposta osservata è una funzione del modello più o meno l’errore sperimentale;
3.  l’ errore sperimentale è indipendente dal modello;
4.  gli errori sono normalmente distribuiti, con media zero e varianze omogenee;
5.  gli errori rilevati in esperimenti ripetuti sono tra loro indipendenti.
6.  non ci sono osservazioni aberranti;

Il rispetto di alcune di queste assunzioni di base è garantito dal disegno sperimentale, con il quale si cerca di evitare ogni possibile confusione tra effetti deterministici ed errore sperimentale e con il quale si fa in modo che le osservazioni siano indipendenti tra di loro. Eventuali vincoli alla randomizzazione introdotti in fase di disegno (es. blocking) vengono gestiti con l'adozione di un modello ANOVA che ne riconosca l'esistenza (vderemo, ad esempio, l'ANOVA a blocchi randomizzati).

Ci sono tuttavia alcune assunzioni di base che possono essere verificate solo *a posteriori*, cioè dopo aver effettuato la stima dei parametri. Queste assunzioni riguardano la struttura dei residui, che debbono essere normalmente distribuiti, omoscedastici e non debbono contenere valori aberranti. Ovviamente, per ottenere i residui, devo prima procedere al fitting del modello valotare individuare i valori attesi e quantificare il loro scostamento rispetto alle osservazioni.

Il rispetto delle assunzioni di base è importante, perché ogni deviazione può inficiare la validità dei test d’ipotesi e delle inferenze in genere, modificando il livello di significatività.

## Procedure diagnostiche

Per diagnosticare eventuali patologie dei dati, possiamo utilizzare diverse procedure, così classificate:

1. metodi grafici
2. metodi formali, tramite test d'ipotesi


## Analisi grafica dei residui

La gran parte dei pre-requisiti fondamentali di un dataset riguardano la struttura dei residui e, di conseguenza, l’ispezione grafica di questi ultimi, eventualmente accompagnata da semplici strumenti algebrici, possono permetterci di evidenziare la gran parte delle ’patologie’ di cui soffrono i dati sperimentali. Si può affermare che l’ispezione dei residui è uno strumento diagnostico fondamentale il cui impiego dovrebbe rientrare tra le metodiche di routine per ogni elaborazione statistica dei dati.

Ricordo che i residui sono gli scostamenti tra i valori osservati e quelli attesi sulla base del modello in studio; hanno sempre media 0, mentre la deviazione standard cambia di volta in volta.

### Grafico dei residui contro i valori attesi

Il metodo grafico più utilizzato per l'analisi dei residui consiste nel plottare i residui verso i valori attesi. Se non vi sono problemi, i punti nel grafico dovrebbero essere distribuiti in modo assolutamente casuale, come in figura \@ref(fig:figName101).


<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName101-1.png" alt="Grafico dei residui verso gli attesi: non è visibile nessuna deviazione rispetto agli assunti di base dei modelli lineari" width="85%" />
<p class="caption">(\#fig:figName101)Grafico dei residui verso gli attesi: non è visibile nessuna deviazione rispetto agli assunti di base dei modelli lineari</p>
</div>

Le osservazioni aberranti (*outliers*) sono chiaramente indicate nel grafico dei residui come punti isolati rispetto agli altri (Figura \@ref(fig:figName102)).

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName102-1.png" alt="Grafico dei residui verso gli attesi: presenza di un dato aberrante" width="85%" />
<p class="caption">(\#fig:figName102)Grafico dei residui verso gli attesi: presenza di un dato aberrante</p>
</div>

L’eterogeneità delle varianze è invece indicata da residui che si allargano o si stringono procedendo verso i margini del grafico (Figura \@ref(fig:figName103)), facendo emergere una sorta di proporzionalità tra media e varianza.

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName103-1.png" alt="Grafico dei residui verso gli attesi: esempio di eteroscedasticità" width="85%" />
<p class="caption">(\#fig:figName103)Grafico dei residui verso gli attesi: esempio di eteroscedasticità</p>
</div>

A volte la relazione causa effetto non è lineare o, comunque, il modello devia sistematicamente dai dati osservati. Di conseguenza, i residui mostrano un evidente pattern legato al segno. Ad esempio, nella figura \@ref(fig:figName104) i residui sono tendenzialmente negativi per bassi valori attesi e positivi per alti valori.

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName104-1.png" alt="Grafico dei residui verso gli attesi: esempio di lack of fit (nonlinearità)" width="85%" />
<p class="caption">(\#fig:figName104)Grafico dei residui verso gli attesi: esempio di lack of fit (nonlinearità)</p>
</div>

### QQ-plot

Il grafico dei residui verso i valori attesi non è in grado di evidenziare problemi di non-normalità. A questo fine, risulta molto utile un QQ-plot (quantile-quantile plot), nel quale i residui *standardizzati* vengono plottati contro i rispettivi percentili di una distribuzione normale standardizzata. Se la distribuzione dei dati è effettivamente normale, le due grandezze (i percentili nel campione e i percentili di una distribuzione normale standardizzata) dovrebbero essere largamente coincidenti; ad esempio, se la distribuzione è normale i residui negativi dovrebbero essere più o meno ugualmente numerosi di quelli positivi e non ci dovrebbero essere residui troppo alti in valore asoluto, soprattutto se il dataset è piccolo (infatti i valori estremi sono rari e dovrebbero comparire di rado). Se questo è vero, il QQ-plot dovrebbe essere costituito da punti che giacciono lungo la bisettrice del primo e del terzo quadrante (\@ref(fig:figName105))

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName105-1.png" alt="QQ-plot per un dataset normalmente distribuito" width="85%" />
<p class="caption">(\#fig:figName105)QQ-plot per un dataset normalmente distribuito</p>
</div>

Le deviazioni più diffuse dalla normalità sono relative alla simmetria (skewness) e alla curtosi della popolazione. In particolare, può capitare che i residui abbiano asimmetria positiva (right-skewed: la media è maggiore della mediana), così che quelli negativi sono più numerosi di quelli positivi, ma questi ultimi sono mediamente di più elevato valore assoluto. Ad esempio, una distribuzione log-normale centrata è right-skewed ed, estraendo da questa una serie di valori, il QQ-plot si presenta come in figura \@ref(fig:figName106).

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName106-1.png" alt="QQ-plot per un dataset con asimmetria positiva (right-skewed)" width="85%" />
<p class="caption">(\#fig:figName106)QQ-plot per un dataset con asimmetria positiva (right-skewed)</p>
</div>


Al contrario, in una distribuzione left-skewed (asimmetria negativa), la media è minore della mediana e, di conseguenza, i residui positivi sono più numerosi, ma di valore assoluto più basso che non nella distribuzione normale corrispondente. Ad esempio, una distribuzione beta, in certe condizioni ( traslazione, alto $a$ e basso $b$), è left-skewed e i valori campionati presentano un QQ-plot con un andamento tipico (\@ref(fig:figName107)):

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName107-1.png" alt="QQ-plot per un dataset con asimmetria negativa (left-skewed)" width="85%" />
<p class="caption">(\#fig:figName107)QQ-plot per un dataset con asimmetria negativa (left-skewed)</p>
</div>

Per quanto riguarda la curtosi, è necessario osservare le code della distribuzione: se queste sono più alte di una distribuzione normale parliamo di distribuzione platicurtica, mentre se sono più basse parliamo di distribuzione leptocurtica. Ad esempio, una distribuzione di t di Student con pochi gradi di libertà è platicurtica ed il QQ-plot mostra l'andamento indicato in figura \@ref(fig:figName108).

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName108-1.png" alt="QQ-plot per un dataset con distribuzione platicurtica" width="85%" />
<p class="caption">(\#fig:figName108)QQ-plot per un dataset con distribuzione platicurtica</p>
</div>

Al contrario, una distribuzione uniforme in un intervallo ristretto è tipicamente leptocurtica e presenta un QQ-plot come quello riportato in figura \@ref(fig:figName109).


<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName109-1.png" alt="QQ-plot per un dataset con distribuzione leptocurtica" width="85%" />
<p class="caption">(\#fig:figName109)QQ-plot per un dataset con distribuzione leptocurtica</p>
</div>


## Strumenti diagnostici formali

La valutazioni precedentemente esposte sono di tipo grafico e sono considerate sufficientemente robuste per la maggior parte delle situazioni. Tuttavia, esistono anche test statistici che consentono di saggiare l’ipotesi nulla di ’assenza di deviazioni’. Con questi test, basta guardare il ’p-value’: se questo è inferiore a 0.05 l’ipotesi nulla deve essere rifiutata e può essere necessario intraprendere azioni correttive.

Per l'omogeneità delle varianze veniva utilizzato il test di Bartlett, che, tuttavia, è oggi caduto in disuso, data la sua sensibilità alla non-normalità dei residui, quasi sempre presente, insieme all'eteroscedasticità. Oggi si preferisce utilizzare il test di Levene, che consiste nel sottoporre ad ANOVA i residui in valore assoluto, al posto dei dati osservati. Per ogni trattamento, i residui hanno media zero, ma se vengono presi in valore assoluto, hanno medie più alte quando la loro varianza è alta. Per esempio, possiamo prendere due campioni centrati, con media zero a varianza rispettivamente pari a 1 e 4:


```r
A <- c(-1, 0, 1); B <- c(-4, 0, 4)
mean(A); mean(B)
```

```
## [1] 0
```

```
## [1] 0
```

```r
var(A); var(B)
```

```
## [1] 1
```

```
## [1] 16
```
Se prendiamo i valori assoluti, la media del primo campione è 2/3, mentra la media del secondo campione è 8/3. Se questa differenza è significativa, essa produce il rifiuto dell'ipotesi nulla nel test F di ANOVA e conferma l'eterogeneità delle varianze. Il test di Levene, in R, si può eseguire con la funzione 'leveneTest()' nel package 'car'.


```r
res <- c(A, B)
tratt <- rep(c("A", "B"), each = 3)
model <- lm(res ~ factor(tratt))
anova(model)
```

```
## Analysis of Variance Table
## 
## Response: res
##               Df Sum Sq Mean Sq F value Pr(>F)
## factor(tratt)  1      0     0.0       0      1
## Residuals      4     34     8.5
```

```r
car::leveneTest(res ~ factor(tratt), center=mean)
```

```
## Levene's Test for Homogeneity of Variance (center = mean)
##       Df F value Pr(>F)
## group  1  2.1176 0.2193
##        4
```

Il test di Levene può anche essere effettuato considerando gli scarti rispetto alla mediana (invece che alla media), in modo da ottenere un test più robusto nei confronti degli outliers.

Per quanto riguarda le deviazioni dalla normalità, può essere
utilizzato il test di Shapiro-Wilks. Per esempio, nel caso di un dataset ottenuto da una distribuzione uniforme (quindi non-normale), il test di Shapiro porta ai risultati sotto indicati.



```r
shapiro.test(runif(100, min = -2, max = 2))
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  runif(100, min = -2, max = 2)
## W = 0.94547, p-value = 0.0004227
```

## Risultati contraddittori

La valutazione degli assunti di base è un passo fondamentale nell’analisi dei dati sperimentali è non deve mai essere dimenticata. Tuttavia, l'esperienza insegna che, nella pratica, è molto facile incontrare situazioni dubbie, nelle quali i risultati ottenuti con le diverse tecniche diagnostiche appaiono contraddittori e difficili da interpretare. Come comportarsi in questi casi? A mio parere bisogna sempre ricordare che la ’verità vera’ ci sfugge e, di conseguenza, tutte le valutazioni debbono essere sempre condotte con il massimo ’buon senso’.

Un aspetto importante da considerare è la tipologia del dato: conteggi e proporzioni difficilmente sono normalmente distribuiti ed omoscedastici e, con questi dati, la prudenza non è mai troppa, quando si tratta di impiegare modelli che fanno questi assunti. Allo stesso modo, è necessaria una grande prudenza quando si analizzano variabili quantitative dove la differenza tra le diverse tesi è molto grande, orientativamente più di un ordine di grandezza. Con questi dati, l'assunzione di omogeneità delle varianze è quasi sempre violata.


## 'Terapia'

Se le procedure diagnostiche hanno evidenziato deviazioni rispetto agli assunti di base, è necessario valutare se e come intraprendere azioni correttive. Ovviamente,  la 'terapia' cambia al cambiare della 'patologia'.

### Correzione/Rimozione degli outliers

In presenza di outliers, la 'terapia' più opportuna è, banalmente, quella di rimuoverli, ottenendo così un dataset 'sbilanciato' (diverso numero di repliche per trattamento). Oggigiorno, trattare un dataset sbilanciato non costituisce un problema, ovviamente se si utilizzano le metodiche di analisi opportune. Qualche anno fa, al contrario, si cercava di evitare lo sbilanciamento a tutti i costi, utilizzando tecniche di imputing per l'immissione di valori ’ragionevoli’ in sostituzione di quelli mancanti/aberranti. Alcuni indicazioni sono date nel capitolo finale di questo libro.

Vorrei porre l'attenzione sul fatto che i dati aberranti sono dati molto 'influenziali', nel senso che possono influenzare in modo molto marcato il risultato dell’analisi. Pertanto, se è sbagliato correggerli arbitrariamente, senza aver prima accertato che siano effettivamente frutto di errore, è altrettanto sbagliato lasciarli nel dataset. Ovviamente, la correzione non può che riguardare una larga minoranza dei dati sperimentali raccolti (uno o due dati), altrimenti si dovrà necessariamente pensare di ripetere l’esperimento.


### Correzione del modello

Abbiamo visto che il modello impiegato potrebbe non essere adatto a descrivere il dataset (mancanza di adattamento). Gli effetti potrebbero non essere addittivi, ma moltiplicativi, oppure potrebbero essere non-lineari. Potrebbero essere presenti asintoti che il nostro modello non è in grado di descrivere, oppure la crescita/decrescita osservata potrebbero essere più lente/veloci di quanto la nostra funzione sia in grado di modellizzare. Per tutti questi casi, ovviamente, la strategia più consigliabile è quella di utilizzare un diverso modello, capace di descrivere meglio le osservazioni sperimentali.

### Trasformazione della variabile indipendente

A volte la variabile dipendente non è qualitativa, bensì quantitativa. Vedremo meglio questo aspetto nei prossimi capitoli, quando parleremo di regressione. Tuttavia, anticipiamo che, quando la variabile indipendente è quantitativa, essa può essere sottoposta ad opportuna trasformazione. Ad esempio, se i dati mostrano un andamento esponenziale, la trasformazione della variabile indipendente in logaritmo può portare al sensibile miglioramento del fitting con un'equazione lineare.

### Impiego di metodiche statistiche avanzate

In presenza di deviazioni sistematiche rispetto agli assunti di base, la cosa più logica sarebbe quella di chiedersi perché il dataset è non-normale e/o eteroscedastico ed incorporare queste informazioni nel modello. Ad esempio, un conteggio potrebbe seguire la distribuzione di Poisson, oppure una serie di proporzioni potrebbero seguire la distribuzione binomiale. In questi casi sarebbe opportuno utilizzare modelli lineari generalizzati (GLiM), basati non sulla distribuzione normale, ma su altre distribuzioni, più adatte per il fenomeno in studio. Allo stesso modo, l'eterogeneità delle varianze può essere incorporata nel modello, utilizzando tecniche dei minimi quadrati generalizzati (GLS). In altri casi, quando non si riescono a rispettare le assunzioni di base dei modelli, si può ricorrere a metodiche statistiche che ne fanno di menoe che, pertanto, sono dette metodiche 'non-parametriche'.

In quest libro, non tratteremo né GLiM, né i GLs, né le metodiche non parametriche. Per quello che riguarda GLiM e GLS, si tratta di metodiche che richiedono un corso di livello più avanzato; per quanto riguarda le metodiche non-parametriche, di esse non parleremo, per una questione di preferenze personali: a mio modo di vedere, utilizzare metodiche non-parametriche è come rinuciare in partenza a comprendere le basi biologiche del fenomeno e le intrinseche relazioni causa-effetto che sussistono nella realtà.

### Trasformazioni stabilizzanti

Una strategia empirica, ma molto seguita in pratica e caratterizzata da un'efficacia non disprezzabile, è quella di ricorrere alle trasformazioni correttive. Con questa tecnica, si va a cercare una metrica sulla quale le assunzioni di base dell’ANOVA siano rispettate e si esegue l’elaborazione dei dati trasformati invece che di quelli non trasformati.

Per i conteggi e per l’eterogeneità delle varianze di variabili continue, si consiglia la trasformazione in radice quadrata o in logaritmo, scegliendo in base a quella che consente la miglior distribuzione dei residui. Per le proporzioni, taluni consigliano la trasformazione nell’arcoseno della radice del valore, che è implementata nel package 'aomisc', nella funzione 'angularTransform()'. Questa funzione rivceve come input un valore percentuale e resituisce l'arcoseno della radice quadrata della proporzione corrispondente.


```r
aomisc::angularTransform(c(26, 47, 25, 28, 24))
```

```
## [1] 30.65730 43.28009 30.00000 31.94806 29.33387
```

Per evitare di schegliere la trasformazione 'al buio', si può impiegare la procedura suggerita da Box e Cox (1964), basata su una 'famiglia di trasformazioni', definita come segue:

$$ W = \left\{ \begin{array}{ll}
\frac{Y^\lambda}{\lambda - 1} & \quad \textrm{if} \,\,\, \lambda \neq 0 \\
\log(Y) & \quad \textrm{if} \,\,\, \lambda = 0
\end{array} \right. $$

dove W è la variabile trasformata, Y è la variabile originale e $\lambda$ è il parametro che definisce la trasformazione. In particolare, osserviamo che se $\lambda$ è pari ad 1 i dati non sono, di fatto, trasformati, se è pari a 0.5 abbiamo una trasformazione equivalente alla radice quadrata, se è pari a 0 abbiamo la trasformazione logaritmica, se è pari a -1 abbiamo una trasformazione equivalente al reciproco.

La scelta del valore $\lambda$ può essere effettuata in modo empirico, confrontando la verosimiglianza di modelli basati su trasformazioni diverse. In R, questa procedura è automatizzata nella funzione 'boxcox()', disponibile nel package MASS è verrà illustrata nell'esempio succesivo.

## Esempio

Proviamo ad analizzare il dataset 'insects', disponibile nel package 'aomisc'. Si tratta di un dataset nel quale quindici piante sono state trattate con tre insetticidi diversi in modo completamente randomizzato, scegliendo cinque piante a caso per insetticida. Alcune settimane dopo il trattamento è stato rilevato il numero di insetti presenti su ciascuna pianta. Lasciando da parte le statistiche descrittive, eseguiamo subito l'ANOVA per questo dataset.


```r
library(aomisc)
data(insects)
head(insects)
```

```
##   Insecticide Rep Count
## 1           A   1   448
## 2           A   2   906
## 3           A   3   484
## 4           A   4   477
## 5           A   5   634
## 6           B   1   211
```

```r
mod <- lm(Count ~ Insecticide, data = insects)
```

Dopo aver effettuato l'ANOVA, i grafici dei residui possono essere ottenuti utilizzando la funzione 'plot()' applicata al risultato del fitting lineare. L'argomento 'which' specifica il tipo di grafico: se utilizziamo: 'which = 1' otteniamo il grafico dei residui verso gli attesi, se invece utilizziamo 'which = 2' otteniamo il QQ-plot. I due comandi sono:

```
plot(mod, which = 1)
plot(mod, which = 2)
```

e forniscono l'output riportato in figura \@ref(fig:figName110).

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName110-1.png" alt="Analisi grafica dei residui per il dataset 'insects.csv'" width="85%" />
<p class="caption">(\#fig:figName110)Analisi grafica dei residui per il dataset 'insects.csv'</p>
</div>

Questo dataset mostra una chiara eteroscedasticità (vedi il grafico di sinistra) e qualche indizio di asimmetria positiva.


```r
car::leveneTest(mod)
```

```
## Levene's Test for Homogeneity of Variance (center = median)
##       Df F value Pr(>F)
## group  2  1.0263 0.3878
##       12
```

```r
shapiro.test(residuals(mod) )
```

```
## 
## 	Shapiro-Wilk normality test
## 
## data:  residuals(mod)
## W = 0.87689, p-value = 0.04265
```

I test di Levene e Shapiro-Wilks confermano che la mancanza di normalità è significativa e, pertanto, scegliamo di impiegare una trasformazione correttiva. Utilizziamo quindi la funzione 'boxcox()' per individuare la trasformazione più adatta a correggere la patologia riscontrata. Il comando è:

```
library(MASS)
boxcox(mod)
```
e fornisce l'output in figura \@ref(fig:figName 111).

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName111-1.png" alt="Scelta del valore ottimale di lambda per la trasformazione di Box e Cox" width="85%" />
<p class="caption">(\#fig:figName111)Scelta del valore ottimale di lambda per la trasformazione di Box e Cox</p>
</div>

Vediamo che la verosimiglianza del modello raggiunge il massimo valore quando $\lambda$ è pari a 0.14. I limiti dell'intervallo di confidenza vanno da poco sotto lo 0 a 0.5 circa. Rimanendo nell'ambito dell'intervallo di confidenza, scegliamo il valore $\lambda = 0$, che corrisponde alla trasformazione logaritmica. Questa scelta è motivata dal fatto che si tratta di una trasformazione molto nota e facilmente comprensibile.

Pertanto, trasformiamo i dati nel logaritmo e ripetiamo l'ANOVA.


```r
mod <- lm(log(Count) ~ Insecticide, data = insects)
par(mfrow = c(1,2))
plot(mod, which = 1)
plot(mod, which = 2)
```

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName112-1.png" alt="Analisi grafica dei residui per il dataset 'insects.csv', previa trasformazione logaritmica" width="85%" />
<p class="caption">(\#fig:figName112)Analisi grafica dei residui per il dataset 'insects.csv', previa trasformazione logaritmica</p>
</div>

Vediamo che i dati trasformati non mostrano più alcun sintomo di eteroscedasticità e, di conseguenza, l'ANOVA su questa metrica è totalmente affidabile. Ovviamente, avendo lavorato con il logaritmo dei dati, commentare i risultati potrebbe essere più complicato, in quanto la media dei logaritmi non è uguale al logaritmo delle medie. Nei capitoli successivi forniremo alcune informazioni su come gestire queste situazioni.


## Referenze bibliografiche per approfondimenti

Ahrens, W. H., D. J. Cox, and G. Budwar. 1990, Use of the arcsin and square root trasformation for subjectively determined percentage data. Weed science 452-458.\
Anscombe, F. J. and J. W. Tukey. 1963, The examination and analysis of residuals. Technometrics 5: 141-160.\
Babbini, M., B. Chiandotto, G. Chisci, R. d. Cristofaro, G. A. Maccararo, N. Montanaro, F. Nicolis, E. Ottaviano, F. Salvi, and M. Turri. 1978. Biometria: principi e metodi per studenti e ricercatori biologi. Padova: P. 552.\
Box, G. E. P. and D. R. Cox. 1964, An analysis of transformations. Journal of the Royal Statistical Society, B-26, 211-243, discussion 244-252.\
Camussi , A., F. Moller , E. Ottaviano , and M. Sarli Gorla . 1986, Metodi statistici per la sperimentazione biologica. Ed. Zanichelli.\
Chatfield, C. 1985, The initial examination of data. J. R. Statist. Soc. A-148, 3, 214-253 A-148: 214-253.\
D’Elia, A. 2001, Un metodo grafico per la trasformazione di Box-Cox: aspetti esplorativi ed inferenziali. STATISTICA LXI: 630-648.\
Draper, N. R. and H. Smith. 1981, Applied regression. John Wiley & Sons, Inc. , New York, 2nd ed.\
Saskia, R. M. 1992, The Box-Cox transformation technique: a review. Statistician 41: 169-178.\
Snedecor, G. W. and W. G. Cochran. 1991. Statistical methods. AMES (Iowa): IOWA State University Press, VIII Edition. P. 503.\

<!--chapter:end:10-AssunzioniBase.Rmd-->


# Modelli lineari con più variabili indipendenti

Placeholder


## Introduzione
## ANOVA a blocchi randomizzati
## ANOVA a quadrato latino

<!--chapter:end:11-MultiWayANOVAModels.Rmd-->


# Contrasti e confronti multipli con R

Placeholder


## Introduzione
## Esempio
## I contrasti
### Varianza del contrasto e intervalli di confidenza
### Significatività del contrasto e intervalli di confidenza
### I contrasti con R
## I confronti multipli a coppie (pairwise comparisons)
## Problemi di molteplicità: tassi di errore per confronto e per esperimento
## Intervalli di confidenza simultanei
## E le classiche procedure di confronto multiplo?
## Consigli pratici

<!--chapter:end:12-ConfrontoMultiplo.Rmd-->


# Analisi della varianza (ANOVA) a due vie

Placeholder


## Il concetto di ’interazione’
## Tipi di interazione
## Descrizione del caso studio
## Analisi dei dati
## Stima dei parametri
## Scomposizione delle varianze
## Funzioni dei parametri
### Medie delle combinazioni 'lavorazioni x diserbo'
## Contrasti, medie attese e confronti multipli con R

<!--chapter:end:13-AnovaDueLivelli.Rmd-->


# La regressione lineare semplice

Placeholder


## Introduzione
## Esempio
## Stima dei parametri
## Valutazione della bontà del modello
### Valutazione grafica
### Errori standard dei parametri
### Test F per la mancanza d'adattamento
### Test F per la bontà di adattamento e coefficiente di determinazione
## Previsioni

<!--chapter:end:14-LinearRegression.Rmd-->


# La regressione non-lineare

Placeholder


## Introduzione
## Esempio 1
#### Linearizzazione della funzione
#### Approssimazione della vera funzione tramite una polinomiale in X
#### Adattamento di funzioni curvilinee qualunque: regressione non-lineare
### La regressione non-lineare con R
## Riparametrizzazione delle funzioni
### Esempio 2
## Inferenze statistiche e verifiche delle assunzioni di base
### Analisi grafica dei residui
### Errori standard dei parametri
### Coefficiente di determinazione
### Coefficiente di determinazione aggiustato
### Altre statistiche
## Gestione delle situazioni 'patologiche'
### Trasformazione del modello
### Trasformazione dei dati
## Confronto tra modelli alternativi
### Confronto tra modelli non-nested
## Il package 'drc'
## Previsioni		 
## Bibliografia

<!--chapter:end:15-NonLineare.Rmd-->


# Appendix 1: breve introduzione ad R {-}

Placeholder


## Cosa è R? {-}
## Oggetti e assegnazioni {-}
## Costanti e vettori {-}
## Matrici {-}
## Operazioni ed operatori {-}
## Funzioni ed argomenti {-}
## Dataframe {-}
## Quale oggetto sto utilizzando? {-}
## Consigli per l'immissione di dati sperimentali {-}
### Immissione manuale di dati {-}
### Immissione di numeri progressivi {-}
### Immissione dei codici delle tesi e dei blocchi {-}
### Leggere e salvare dati esterni {-}
## Alcune operazioni comuni sul dataset {-}
### Selezionare un subset di dati {-}
### Ordinare un vettore o un dataframe {-}
## Workspace {-}
## Script o programmi {-}
## Interrogazione di oggetti {-}
## Altre funzioni matriciali {-}
## Cenni sulle funzionalità grafiche in R {-}
## Per approfondimenti {-}

<!--chapter:end:23-IntroduzioneR.Rmd-->


# Appendix 2: richiami di statistica descrittiva {-}

Placeholder


## Le variabili quantitative: analisi chimiche e altre misurazioni fondamentali {-}
### Indicatori di tendenza centrale {-}
### Indicatori di variabilità {-}
### Arrotondamenti {-}
## Descrizione dei sottogruppi {-}
## Distribuzioni di frequenza e classamento {-}
## Statistiche descrittive per le distribuzioni di frequenza  {-}
## Distribuzioni di frequenza bivariate: le tabelle di contingenza  {-}
## Connessione {-}
## Correlazione {-}
## Esercizi {-}
### Esercizio 1 {-}
### Esercizio 2 {-}

<!--chapter:end:24-StatisticaDescrittiva.Rmd-->


# Appendix 3: Per chi vuole approfondire un po'... 

Placeholder


## Capitolo 3: Progettare un esperimento
### Organizzare un esperimento di diserbo chimico
### Organizzare un esperimento di confronto varietale
### Organizzare un esperimento fattoriale
### Organizzare un esperimento con una coltura poliennale
### Utilizzare R per disegnare gli esperimenti
## Capitolo 4: Modelli matematici a 'due facce'
### La distribuzione t di Student
### La distribuzione F di Fisher
### La distribuzione binomiale
#### Esercizio
#### Esercizio
## Capitolo 5: Esperimenti stime ed incertezza
### E' realistico l'intervallo di confidenza?
### Che cosa NON significa l'intervallo di confidenza?
### Popolazioni non gaussiane
#### Il modello dei dati
#### Stima dei parametri
#### Sampling distribution
## Capitolo 6. Introduzione al test d'ipotesi
### Simulazione Monte Carlo di un test t di Student
### Tipologie alternative di test t di Student
### Simulazione di un test di chi quadro
### Errori di prima e di seconda specie
## Capitolo 8: verifica delle assunzioni
### Il QQ-plot
### Correzione dati mancanti/aberranti

<!--chapter:end:25-PerApprofondire.Rmd-->

