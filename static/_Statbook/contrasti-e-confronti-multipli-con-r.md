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

Placeholder


## Procedure diagnostiche
## Analisi grafica dei residui
### Grafico dei residui contro i valori attesi
### QQ-plot
## Strumenti diagnostici formali
## Risultati contraddittori
## 'Terapia'
### Correzione/Rimozione degli outliers
### Correzione del modello
### Trasformazione della variabile indipendente
### Impiego di metodiche statistiche avanzate
### Trasformazioni stabilizzanti
## Esempio
## Altre letture

<!--chapter:end:10-AssunzioniBase.Rmd-->

# Contrasti e confronti multipli con R


## Introduzione

L'ANOVA rappresenta frequentemente il primo passo nell'elaborazione statistica dei dati sperimentali. Essa consente di quantificare l'errore sperimentale e ci permette di sapere se l'effetto del trattamento (nel suo complesso) è risultato significativo. Tuttavia, con la sola ANOVA non siamo ancora capaci di definire una graduatoria di merito tra i diversi livelli del trattamento sperimentale. Dopo l'ANOVA è quindi logico chiedersi (in ordine crescente di importanza):

1. Il generico trattamento A ha un effetto diverso dal trattamento B?
2. Il trattamento A è migliore/uguale/peggiore di B?
3. Quant'è la differenza tra A e B?

La prima domanda è abbastanza sciocca, in quanto due trattamenti non sono quasi mai esattamente uguali. Le altre due domande sono invece più rilevanti, specialmente la seconda, in quanto conoscere l'entità della differenza, oltre che la sua significatività, è fondamentale per comprendere anche la sua rilevanza biologica. Infatti una differenza potrebbe essere significativa, ma irrilevante da un punto di vista agronomico o, viceversa, essa potrebbe essere non significativa, ma estremamente rilevante, quindi meritevole di ulteriori approfondimenti scientifici. Per rispondere alle domande precedenti in genere utilizziamo i contrasti e i confronti multipli, che introdurremo con un esempio.

## Esempio

Ammettiamo di aver effettuato una prova con un trattamento sperimentali caratterizzato da quattro livelli qualitativi (tesi di concimazione), con i risultati riportati di seguito:


```r
yield <- c(20,21,23,22,19,20,12,15,13,19,18,16)
fert <- factor(rep(c("Minerale", "Minerale lento", 
          "Non concimato", "Organico"), each=3))
dataset <- data.frame(yield, fert)
rm(yield, fert)
dataset
```

```
##    yield           fert
## 1     20       Minerale
## 2     21       Minerale
## 3     23       Minerale
## 4     22 Minerale lento
## 5     19 Minerale lento
## 6     20 Minerale lento
## 7     12  Non concimato
## 8     15  Non concimato
## 9     13  Non concimato
## 10    19       Organico
## 11    18       Organico
## 12    16       Organico
```

L'ANOVA può essere eseguita facilmente con R o con un altro software.


```r
model <- lm(yield ~ fert, data=dataset)
anova(model)
```

```
## Analysis of Variance Table
## 
## Response: yield
##           Df  Sum Sq Mean Sq F value    Pr(>F)    
## fert       3 115.000  38.333  16.429 0.0008821 ***
## Residuals  8  18.667   2.333                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

In questo caso, l'analisi della varianza ed il relativo test di F ci dicono che esiste una differenza significativa tra le medie, ma rimane il problema di classificare le soluzioni concimanti in ordine di efficacia. Per calcolare le medie dei trattamenti utilizziamo la funzione *emmeans()* del package *emmeans*:


```r
library(emmeans)
medie <- emmeans(model, ~fert)
medie
```

```
##  fert           emmean    SE df lower.CL upper.CL
##  Minerale         21.3 0.882  8     19.3     23.4
##  Minerale lento   20.3 0.882  8     18.3     22.4
##  Non concimato    13.3 0.882  8     11.3     15.4
##  Organico         17.7 0.882  8     15.6     19.7
## 
## Confidence level used: 0.95
```

Vediamo che l'output di R riporta anche gli errori standard delle medie (SEM) e gli intervalli di confidenza. 

## I contrasti

Si definisce CONTRASTO una combinazione lineare dei parametri di un modello (ad esempio le medie dei trattamenti), in modo che i coefficienti sommati diano 0. Ad esempio, considerando i parametri del modello precedente, una combinazione lineare del tipo:


$$C = \frac{1}{3} \cdot 21.33 + \frac{1}{3} \cdot 20.33 - 1 \cdot 13.33 + \frac{1}{3} \cdot 17.67 = 6.446667$$

è un contrasto, in quanto i coefficienti sommati 1/3 + 1/3 - 1 + 1/3 = 0. Al contrario una combinazione del tipo:

$$C1 = 1 \cdot 21.33  + 1 \cdot 20.33 - 1 \cdot 13.33 + 1 \cdot 17.67$$


non è un contrasto valido, perché la somma dei coefficienti non è zero (1 + 1 - 1 + 1 = -2).

Il primo contrasto C, ha un preciso significato biologico, in quanto stima la differenza tra il non fertilizzato e la media dei fertilizzati e risponde a tutte e tre le domande:

1. La fertilizzazione (in media) ha un effetto diverso dal testimone non fertilizzato? Risposta: si, perché la differenza è non nulla
2. La fertilizzazione in media è migliore/uguale/peggiore del testimone? Risposta: migliore, perché la differenza è positiva.
3. Quant'è la differenza tra il fertilizzato e il non-fertilizzato? Risposta: è pari a 6.45

E' evidente, tuttavia, che l'errore sperimentale produce incertezza, che sarebbe bene includere nei risultati, sotto forma di intervallo di confidenza. La domanda quindi è: qual è la varianza del contrasto?


### Varianza del contrasto e intervalli di confidenza

Ogni contrasto ha la sua varianza, ottenuta come combinazione lineare di varianze, attraverso il metodo di propagazione degli errori. Considerando che i parametri di un modello ANOVA sono, usualmente, indipendenti, la varianza di un contrasto è:


$$\textrm{var}(A x + B y) = (A \times \sigma_x )^{2}  + (B \times \sigma_y ) ^ 2$$


dove A e B sono i coefficienti del contrasto, x e y sono i parametri del modello e $\sigma_x$ e $\sigma_y$ sono gli errori standard dei parametri x ed y. Nel nostro caso, la varianza del contrasto è:

$$var(C) = \left( \frac{1}{3} \cdot 0.882 \right)^2 +  \left( \frac{1}{3} \cdot 0.882 \right)^2 + \left( 1 \cdot 0.882 \right)^2 +  \left( \frac{1}{3} \cdot 0.882 \right)^2 = 1.037$$

mentre la deviazione standard (cioè l'errore standard) del contrasto è pari a:

$$ ES(C) = \sqrt{1.037} = 1.0183$$

 Dopo aver calcolato la deviazione standard, possiamo costruire un intervallo di confidenza per il contrasto, utilizzando le formule usuali (quantili della distribuzione di t):


```r
limSup <- 6.4467 + qt(0.975, 8) * 1.018277
limInf <- 6.4467 - qt(0.975, 8) * 1.018277
limInf; limSup
```

```
## [1] 4.098549
```

```
## [1] 8.794851
```

Con questo abbiamo risposto a tutte e tre le nostre domande di ricerca:

1. Fertilizzare non produce lo stesso effetto che non fertilizzare;
2. Fertilizzare permette di produrre di più che non fertilizzare.
3. La differenza è pari a 6.44 q/ha e, ripetendo questo esperimento, nel 95% dei casi otterremo differenze variabili entro l'intervallo tra 4.1 e 8.8 q/ha.

### Significatività del contrasto e intervalli di confidenza

E' importante notare che l'intervallo di confidenza esposto in precedenza non contiene lo zero e quindi la differenza tra i due trattamenti in studio è significativa (significativamente diversa da 0). Tuttavia potremmo essere intenzionati a testare questa differenza in modo formale, a prescindere dal calcolo dell'intervallo di confidenza. Secondo Tukey (1991), questo tipo di test è sciocco ('foolish') almeno per due motivi:

1. la domanda  non è realistica: due trattamenti diversi non possono che dare risultati diversi, magari in modo impercettibile, ma pur sempre diversi;
2. l'eventuale rifiuto dell'ipotesi nulla non ci da nessuna informazione sulla rilevanza biologica della differenza, che è indipendente dalla sua significatività.

Ferma restando l'importanza dell'intervallo di confidenza, quale misura della *effect size*, il test d'ipotesi è pratica usuale e quindi la tratteremo nel dovuto dettaglio. Dovrebbe essere noto che il rapporto tra una stima ed il suo errore standard ha una distribuzione di t di Student, con un numero di gradi di libertà pari all'errore. Di conseguenza possiamo saggiare l'ipotesi nulla che il contrasto è uguale a 0 calcolando la probabilità di trovare un valore di t pari o superiore (in valore assoluto) a quello da noi ottenuto. Nell'esempio sottostante abbiamo moltiplicato la probabilità trovata per 2, dato che si tratta di un test a due code:


```r
t <- 6.4467 / 1.018277
2 * pt(t, 8, lower.tail = F)
```

```
## [1] 0.0002251554
```


### I contrasti con R

Nel caso in esempio, si potrebbero pianificare tre contrasti (incluso quello già discusso):

1. non concimato vs concimato (in media)
2. concime organico vs. concimi minerali (in media)
3. minerale tradizionale vs. lento rilascio.

Eseguire questi contrasti con R è abbastanza semplice, utilizzando il package  *emmeans*. La procedura di lavoro è la seguente:

1. adattare il modello e stimarne i parametri (funzione lm(), utilizzata più sopra)
2. costruire un vettore per ogni contrasto, contenente i relativi coefficienti, tenendo presente l'ordine delle medie nell'oggetto 'medie' (m1, m2, m3; vedi più sotto)
3. Impiegare la funzione *contrast*, passandole come argomento l'oggetto 'medie' ottenuto con la funzione *emmeans* (vedi sopra) ed una lista contenente i tre vettori dei coefficienti (m1, m2, m3), ai quali si può assegnare un nome, ad esempio, C1, C2 e C3.
4. Con la funzione *confint* possiamo ottenere gli intervalli di confidenza, invece che le significanze.

\small


```r
m1 <- c(1/3, 1/3,  -1, 1/3)
m2 <- c(0.5, 0.5, 0, -1)
m3 <- c(1, -1, 0, 0)
contrast(medie, method=list(C1=m1, C2=m2, C3=m3), 
           adjust="none")
```

```
##  contrast estimate   SE df t.ratio p.value
##  C1           6.44 1.02  8 6.328   0.0002 
##  C2           3.17 1.08  8 2.932   0.0189 
##  C3           1.00 1.25  8 0.802   0.4458
```

```r
confint(contrast(medie, method=list(C1=m1, C2=m2, C3=m3), 
           adjust="none"))
```

```
##  contrast estimate   SE df lower.CL upper.CL
##  C1           6.44 1.02  8    4.096     8.79
##  C2           3.17 1.08  8    0.676     5.66
##  C3           1.00 1.25  8   -1.876     3.88
## 
## Confidence level used: 0.95
```

\normalsize

Il test mostra che la concimazione ha, in media, un effetto significativo, che il concime organico differisce significativamente dai minerali (in media) e che il concime a lento rilascio non è significativamente diverso da quello normale.

## I confronti multipli a coppie (pairwise comparisons)

Non sempre le prove sperimentali consentono di saggiare pochi contrasti pre-stabiliti, ma spesso è necessario confrontare tutte le possibili coppie di trattamenti  (*pairwise comparisons*). In questo caso dovremmo definire un contrasto per ogni coppia di medie, anche se l'impiego del package *emmeans* agevola, non di poco, il lavoro.

In particolare, possiamo immaginare due situazioni di riferimento: tutti contro tutti (confronti tipo "Tukey") e tutti verso uno (confronti tipo "Dunnett").

Nell'esempio sottostante mostriamo un confronto tipo Tukey (tutti contro tutti), eseguito utilizzando la funzione 'contrast' (come sopra), passando il valore 'pairwise' all'argomento 'method'.

\footnotesize


```r
#Confronti multipli a coppie
contrast(medie, adjust="none", method="pairwise")
```

```
##  contrast                       estimate   SE df t.ratio p.value
##  Minerale - Minerale lento          1.00 1.25  8  0.802  0.4458 
##  Minerale - Non concimato           8.00 1.25  8  6.414  0.0002 
##  Minerale - Organico                3.67 1.25  8  2.940  0.0187 
##  Minerale lento - Non concimato     7.00 1.25  8  5.612  0.0005 
##  Minerale lento - Organico          2.67 1.25  8  2.138  0.0650 
##  Non concimato - Organico          -4.33 1.25  8 -3.474  0.0084
```

```r
confint(contrast(medie, adjust="none", method="pairwise"))
```

```
##  contrast                       estimate   SE df lower.CL upper.CL
##  Minerale - Minerale lento          1.00 1.25  8   -1.876     3.88
##  Minerale - Non concimato           8.00 1.25  8    5.124    10.88
##  Minerale - Organico                3.67 1.25  8    0.791     6.54
##  Minerale lento - Non concimato     7.00 1.25  8    4.124     9.88
##  Minerale lento - Organico          2.67 1.25  8   -0.209     5.54
##  Non concimato - Organico          -4.33 1.25  8   -7.209    -1.46
## 
## Confidence level used: 0.95
```
\normalsize

Per i confronti del tipo 'tutti verso uno' è possibile utilizzare la stessa funzione, assegnando però il valore 'dunnett' (invece che 'pairwise') all' argomento 'method'.

\small


```r
contrast(medie, adjust="none", method="dunnett")
```

```
##  contrast                  estimate   SE df t.ratio p.value
##  Minerale lento - Minerale    -1.00 1.25  8 -0.802  0.4458 
##  Non concimato - Minerale     -8.00 1.25  8 -6.414  0.0002 
##  Organico - Minerale          -3.67 1.25  8 -2.940  0.0187
```
\normalsize

Purtroppo vediamo che R confronta tutte le tesi con 'Minerale', che non è quello che volevamo. Bisogna ricordare infatti che il livello di riferimento è, per default, il primo in ordine alfabetico e, se vogliamo utiizzare 'Non concimato' come riferimento, dobbiamo dobbiamo ricodificare il vettore 'fert' e, successivamente, ripetere l'analisi. 

\small

```
#Confronti tutti vs uno (il primo in ordine alfabetico)
dataset$fert

#Vediamo che il riferimento è "Minerale". Lo cambiamo in "Non concimato"
dataset$fert <- relevel(dataset$fert, ref="Non concimato")
dataset$fert

#A questo punto dobbiamo ripetere le analisi
model <- lm(yield ~ fert, data=dataset)
medie <- emmeans(model, ~fert)
contrast(medie, adjust="none", method="dunnett")
confint(contrast(medie, adjust="none", method="dunnett"))
```

\normalsize

##Display a lettere

I risultati di un confronto multiplo a coppie (pairwise) possono essere presentati anche con un display a lettere, nel quale le medie seguite da lettere diverse sono significativamente diverse per un livello di probabilità di errore minore di quello dato. 

Realizzare un display a letter manualmente è piuttosto facile, utilizzando la seguente procedura:

1. ordinare le medie in senso crescente/decrescente
2. partire dalla prima media e aggiungere la lettera A a tutte quelle che non sono significativamente diverse
3. passare alla seconda media e aggiungere la lettera B a tutte quelle che non sono significativamente diverse
4. procedere analogamente con tutte le medie successive

Con R si può sfruttare il package emmeans, con la sintassi sottostante.


```r
#Per aggiungere le lettere di significanza
CLD(medie, adjust="none", Letters=LETTERS)
```

```
## Warning: 'CLD' will be deprecated. Its use is discouraged.
## See '? CLD' for an explanation. Use 'pwpp' or 'multcomp::cld' instead.
```

```
##  fert           emmean    SE df lower.CL upper.CL .group
##  Non concimato    13.3 0.882  8     11.3     15.4  A    
##  Organico         17.7 0.882  8     15.6     19.7   B   
##  Minerale lento   20.3 0.882  8     18.3     22.4   BC  
##  Minerale         21.3 0.882  8     19.3     23.4    C  
## 
## Confidence level used: 0.95 
## significance level used: alpha = 0.05
```

## Problemi di molteplicità: tassi di errore per confronto e per esperimento

Operando nel modo anzidetto, ogni contrasto/confronto ha una probabilità di errore del 5%. Se i contrasti/confronti sono più di uno (family of *n* contrasts), la probabilità di sbagliarne almeno uno (*maximum experimentwise error rate*) è data da:

$$\alpha_E = 1 - (1 - \alpha_C)^n$$

Bisogna premettere che l'anzidetta formula vale quando i contrasti sono totalmente indipendenti tra loro, cosa che quasi mai avviene, dato che, anche in un semplice modello ANOVA, i contrasti condividono la stessa varianza d'errore e sono quindi più o meno correlati tra di loro. Con contrasti non indipendenti la formula anzidetta fornisce una sovrastima di $\alpha_E$  (per questo si parla di *maximum experimentwise error rate*).

Il numero di confronti a coppie per esperimento può essere anche molto elevato: se ho *k* medie il numero dei confronti possibili è pari a $k \cdot (k-1)/2$. Di conseguenza, la probabilità di errore per esperimento ($\alpha_E$) può essere molto più alta del valore $\alpha_C$ prefissato per confronto.

Ad esempio, se ho 15 medie, ho $(15 \cdot 14)/2 = 105$ confronti possibili. Se uso $\alpha_C = 0.05$ per ogni confronto, la probabilità di sbagliarne almeno uno è pari (in caso di confronti indipendenti) a $1 - (1 - 0.05)^105 = 0.995$. Sostanzialmente, vi è pressoché la certezza che in questo esperimento qualcosa è sbagliato!

###Correzione per la molteplicità

Quando si elaborano i dati di un esperimento nel quale è necessario fare molti contrasti, o confronti, o, più in generale, molti test d'ipotesi simultanei, si potrebbe voler esprimere un giudizio globale (simultaneo) sull'intera famiglia di contrasti/confronti, minimizzando la possibilità che anche solo uno o pochi di essi siano sbagliati. Vediamo alcuni esempi di quando questo potrebbe capitare.

1. Non vogliamo correre rischi di escludere erroneamente alcun trattamento dal lotto dei migliori. Infatti, poniamo di voler trovare i migliori di *k* trattamenti, intendendo con ciò quelli che non sono significativamente inferiori a nessun altro. In questa situazione, facendo ogni confronto con il 5% di probabilità di errore, la probabilità di escludere erroneamente anche solo un trattamento dal lotto dei migliori è molto più alta di quella prefissata, perché basta sbagliare anche uno solo dei *k - 1* confronti con il migliore.
2. Abbiamo utilizzato un display a lettere e intendiamo affermare che 'i trattamenti seguiti da lettere diverse sono significativamente diversi'. In questo caso, stiamo tirando una conclusione basata sull'intera famiglia di confronti e non possiamo lecitamente riportare la probabilità di errore di un singolo confronto.

In tutte le condizioni analoghe a quelle più sopra accennate si pone il problema di aggiustare il p-level) di ogni contrasto in modo da rispettare un certo livello prestabilito di errore per esperimento (e non per confronto).

Per aggiustare il p-level e correggere quindi per la molteplicità abbiamo parecchie possibilità. La prima è quella di utilizzare la formula precedente (metodo di Sidak). Ad esempio, nel caso del terzo dei sei confronti a coppie illustrati in precedenza (Minerale - Organico = 3.667; p = 0.018713), la correzione del p-level per la molteplicità è:

$$ \alpha_E = 1 - (1 - 0.018713)^6 = 0.1051546 $$

Con R possiamo utilizzare il seguente comando:

\small

```
contrast(medie, method="pairwise", adjust="sidak")
```

\normalsize

Vediamo che alcuni confronti che prima erano significativi, ora non lo sono più.

Un'alternativa più nota (e semplice) è quella di utilizzare la diseguaglianza di Bonferroni:

$$\alpha_E = \alpha_C \cdot k$$

Quest'ultima è un po' più conservativa della precedente, nel senso che fornisce un p-level aggiustato leggermente più alto dell'altra.

$$\alpha_E = 0.018713 \cdot 6 = 0.112278 $$

Con R:

\small

```
contrast(medie, method="pairwise", adjust="bonferroni")
```

\normalsize

Sono possibili altre procedure di aggiustamento del p-level (metodi di Holm, Hochberg, Hommel), ma nessuna di queste tiene conto della correlazione eventualmente esistente tra i contrasti e tutte quindi sono da definirsi più o meno 'conservative'.
 
Invece che aggiustare il p-level con uno dei metodi indicati più sopra è possibile considerare che, nel caso di contrasti e/o confronti, ogni singolo test d'ipotesi consiste in un rapporto tra una stima e il suo errore standard e segue la distribuzione di t univariata (vedi sopra). Di conseguenza, una famiglia di confronti/contrasti segue la distribuzione di t multivariato, con una matrice di correlazione che deducibile dal contesto, come indicato da Bretz et al., (2011), pag. 73. In altre parole, noto che sia il valore di t di ogni contrasto/confronto, posso desumere la relativa probabilità dalla distribuzione di t multivariata, invece che da quella univariata. Ovviamente il calcolo manuale è complesso e dovremo affidarci al software, come esemplificato più sotto. Questo tipo di correzione è quella di default in R, come si può desumere dal fatto che in tutti i frammenti di codice dati finora abbiamo dovuto specificare esplicitamente 'correct="none"'.

\small


```r
#Confronti multipli a coppie, basati sul t multivariato
contrast(medie, method="pairwise")
```

```
##  contrast                       estimate   SE df t.ratio p.value
##  Minerale - Minerale lento          1.00 1.25  8  0.802  0.8518 
##  Minerale - Non concimato           8.00 1.25  8  6.414  0.0009 
##  Minerale - Organico                3.67 1.25  8  2.940  0.0724 
##  Minerale lento - Non concimato     7.00 1.25  8  5.612  0.0022 
##  Minerale lento - Organico          2.67 1.25  8  2.138  0.2203 
##  Non concimato - Organico          -4.33 1.25  8 -3.474  0.0342 
## 
## P value adjustment: tukey method for comparing a family of 4 estimates
```

```r
contrast(medie, method="dunnett")
```

```
##  contrast                  estimate   SE df t.ratio p.value
##  Minerale lento - Minerale    -1.00 1.25  8 -0.802  0.7516 
##  Non concimato - Minerale     -8.00 1.25  8 -6.414  0.0006 
##  Organico - Minerale          -3.67 1.25  8 -2.940  0.0479 
## 
## P value adjustment: dunnettx method for 3 tests
```

\normalsize

Possiamo notare che i p-levels sono leggermente più bassi di quelli ottenuti con Bonferroni, che conferma quindi di essere una procedura molto conservativa, mentre l'impiego del t multivariato consente di rispettare esattamente il tasso di errore 'per esperimento'familywise'. 

## Intervalli di confidenza simultanei

Nell'ottica esposta in precedenza, che prevede l'uso preferenziale degli intervalli di confidenza al posto del test d'ipotesi, è molto più interessante creare degli intervalli di confidenza *familywise*. Nel caso più semplice dei confronti a coppie nell'ANOVA per disegni ortogonali (bilanciati), si può utilizzare al posto del valore $t_{\alpha/2, \nu}$ il valore ottenuto dalla distribuzione t multivariata, che, per nostra fortuna, si può facilmente desumere dalle tabelle dello 'Studentised Range', in funzione del numero di trattamenti in prova. Ad esempio, si può consultare [questo link](http://davidmlane.com/hyperstat/sr_table.html), da dove desumiamo che lo Studentised Range per 4 medie e 8 gradi di libertà dell'errore è 4.529. Di conseguenza, se consideriamo ancora il terzo dei sei confronti a coppie illustrati in precedenza (Organico vs Minerale; SE = 1.247), l'intervallo di confidenza non corretto sarebbe:


```r
limSup <- 3.667 + qt(0.975, 8) * 1.247
limInf <- 3.667 - qt(0.975, 8) * 1.247
limInf; limSup
```

```
## [1] 0.7914128
```

```
## [1] 6.542587
```

Mentre l'intervallo di confidenza corretto sarebbe :


```r
limSup <- 3.667 + 1/sqrt(2) * 4.529 * 1.247
limInf <- 3.667 - 1/sqrt(2) * 4.529 * 1.247
limSup; limInf
```

```
## [1] 7.660501
```

```
## [1] -0.3265008
```

Possiamo osservare che lo Studentised Range viene diviso per $\sqrt{2}$. Con R possiamo ottenere lo stesso risultato:

\scriptsize


```r
confint(contrast(medie, method="pairwise"))
```

```
##  contrast                       estimate   SE df lower.CL upper.CL
##  Minerale - Minerale lento          1.00 1.25  8   -2.994    4.994
##  Minerale - Non concimato           8.00 1.25  8    4.006   11.994
##  Minerale - Organico                3.67 1.25  8   -0.327    7.661
##  Minerale lento - Non concimato     7.00 1.25  8    3.006   10.994
##  Minerale lento - Organico          2.67 1.25  8   -1.327    6.661
##  Non concimato - Organico          -4.33 1.25  8   -8.327   -0.339
## 
## Confidence level used: 0.95 
## Conf-level adjustment: tukey method for comparing a family of 4 estimates
```

\normalsize

Nel caso dei confronti tutti contro uno (tipo Dunnet), l'intervallo di confidenza può essere analogamente calcolato con la distribuzione t-multivariato. Le tabelle da consultare in questo caso sono diverse, perché, a parità di numero di medie, il numero di confronti è inferiore. Segnaliamo [questo link](http://www.stat.ufl.edu/~winner/tables/dunnett-2side.pdf). A titolo di esempio, il valore tabulato per 4 medie e 8 gradi di libertà è pari a 2.8826 e, di conseguenza, l'intervallo di confidenza per l'ultimo dei tre confronti tutti verso uno è pari a:


```r
limSup <- 4.333333 + 2.88 * 1.247
limInf <- 4.333333 - 2.88 * 1.247
limSup; limInf
```

```
## [1] 7.924693
```

```
## [1] 0.741973
```

che è più o meno uguale a quello ottenuto con R (anche se vi sono alcune differenza, che lasciano pensare a qualche piccolo bug nel programma).

\small


```r
confint(contrast(medie, method="dunnett"))
```

```
##  contrast                  estimate   SE df lower.CL upper.CL
##  Minerale lento - Minerale    -1.00 1.25  8    -4.63   2.6304
##  Non concimato - Minerale     -8.00 1.25  8   -11.63  -4.3696
##  Organico - Minerale          -3.67 1.25  8    -7.30  -0.0363
## 
## Confidence level used: 0.95 
## Conf-level adjustment: dunnettx method for 3 estimates
```

\normalsize

Sono possibili altre procedure di correzione più avanzate (Shaffer, Westfall), che tuttavia sono valide in presenza di alcune assunzioni aggiuntive e debbono quindi essere valutate con attenzione.

## E le classiche procedure di confronto multiplo?

Il confronto multiplo tradizionale è basato sul calcolo di una differenza critica minima, da utilizzare come base per il confronto tra due medie. In pratica, due medie sono considerate significativamente diverse quando la loro differenza supera la differenza critica. In questo modo possiamo solo sapere su un confronto è significativo oppure no, per P < 0.05 o per qualche altro livello $\alpha$ prefissato, venendo così a mancare ogni altra informazione sull'*effect size* e sulla vera probabilità d'errore di I specie. Per questi motivi, i confronti basati sulla sola differenza critica sono considerati sub-ottimali, e dovrebbero essere evitati, anche se sono tuttora molto diffusi.

La differenza critica più utilizzata (almeno nel passato) è la Minima Differenza significativa, che è basata sul tasso di errore per confronto. Per l'esperimento in esempio, la MDS è pari a:

$$ MDS = 2.306 \times 1.247 = 2.875582$$

dove 2.306 è il valore critico della distribuzione di t, per una probabilità del 5% (a due code) e 8 gradi di libertà.

Un'altra differenza critica molto utilizzata è la *Honest Significant Difference* di Tukey (per i confronti a coppie), che utilizza, invece della distribuzione t univariata, la distribuzione t multivariata. Dovendola calcolare a mano, possiamo utilizzare lo Studentised range, ancora diviso per $\sqrt{2}$:

$$ HSD = 4.529 \times \frac{1}{\sqrt{2}} \times 1.247 = 3.9935 $$

La HSD garantisce un tasso di errore *experimentwise* e può essere utilizzata per ottenere intervalli di confidenza simultanei (vedi sopra).

Un'altra procedura molto importante è quella di Dunnett, che consente di confrontare tutte le medie con un testimone (o con il migliore/peggiore dei trattamenti). Per dati bilanciati, la differenza critica in questo caso è (si vedano le tabelle indicate in precedenza per gli intervalli di confidenza):


```r
2.88 * 1.247
```

```
## [1] 3.59136
```

ed assicura il tasso d'errore prefissato per esperimento, anche se la differenza critica è più piccola della HSD, perché viene effettuato un minor numero di confronti.

Se volessimo confrontare tutte le medie con la media più alta (o più bassa) potremmo utilizzare il test di Dunnett ad una coda, che utilizza appunto un valore critico tabulato leggermente inferiore (si veda a: [http://www.watpon.com/table/dunnetttest.pdf](http://www.watpon.com/table/dunnetttest.pdf), facendo però attenzione alla lettura della tabella, che, a differenza della precedente, richiede il numero di medie da confrontare escluso il controllo).


```r
2.42 * 1.247
```

```
## [1] 3.01774
```

Esistono almeno altre tre procedure classiche di confronto multiplo, che elenchiamo di seguito:

1. Test di Duncan;
2. Test di Newman-Keuls;
3. Test di confronto multiplo di Tukey.

In genere queste procedure sono sconsigliabili, per i seguenti motivi:

1. sono basate su differenze critiche multiple (crescenti al crescere della distanza dei trattamenti in graduatoria) e quindi non consentono la definizione di un'intervallo di confidenza. Di conseguenza, tra le domande 'biologiche' alle quali si cerca la risposta con i confronti multipli (si veda all'inizio) sono in grado di rispondere solo alla prima e non alla seconda e alla terza (non consentono il calcolo di un intervallo di confidenza).
2. Non danno protezione ne' per un tasso di errore per confronto ne' per esperimento, ma rimangono a metà strada, in modo imprecisato (quindi il p level non è effettivamente noto, né a livello di singolo confronto né a livello di esperimento).

## Consigli pratici

La cosa fondamentale è muoversi in coerenza con le finalità dell'esperimento. Si consiglia di:

1. Quando è possibile, pianificare gli esperimenti in modo da ottenere le risposte cercate con pochi contrasti di interesse. In questo modo il problema della molteplicità è minimizzato.
2. Non usare mai contrasti con serie di dati quantitative. In questo caso la regressione è l'approccio corretto. In generale, utilizzare i contrasti solo se sono coerenti con la logica dell'esperimento.
3. Pianificare esattamente il numero di contrasti necessari ed eseguirli, fornendo il valore del contrasto e il suo errore standard.
4. Decidere è necessario aggiustare il p-level (e gli intervalli di confidenza) per la molteplicità (tasso di errore *comparisonwise* o *experimentwise*). 
5. Se si decide di aggiustare il p-level, considerare che le procedure di Bonferroni o Sidak possono essere eccessivamente protette. Preferire quindi le procedure di aggiustamento basate sulla distribuzione t multivariata, il che, a livello di confronto multiplo con dati bilanciati, è equivalente ad utilizzate la Tukey HSD o il test di Dunnett.
6. Evitare le procedure di Duncan e Newmann-Keuls: non danno il livello di protezione cercato e, inoltre, non sono basate su una differenza critica costante (quindi sono difficili da discutere).

##Referenze bibliografiche

Il riferimento definitivo è:

Hsu, J., 1996. Multiple comparisons. Theory and methods. Chapman and Hall.

Altre letture:

1. Bretz, F., T. Hothorn, and P. Westfall. 2002, On Multiple Comparison Procedures in R. R News 2: 14-17.
2. Calinsky, T. and L. C. A. Corsten. 1985, Clustering means in ANOVA by simultaneus testing. Biometrics, 41, 39-48.
3. Cargnelutti, A. F., L. Storck, L. A. Dal'Col, L. Pisaroglo de Carvalho, and P. Machado dos Santos. 2003, A precisao experimental relacionada ao uso de bordaduras nas extremidades das fileiras em ensaios de milho. Ciencia Rural 33: 607-614.
4. Carmer, S. G. and M. R. Swanson. 1971, Detection of difference between mens: a Monte Carlo study of five pairwise multiple comparison procedures. Agronomy Journal, 63, 940-945.
5. Carmer, S. G. 1976, Optimal significance levels for application of the least significant difference in crop performance trials. Crop Science, 16, 95-99.
6. Chew, V. 1976, Comparing treatment means: a compendium. Hortscience, 11(4), 348-357.
7. Cousens, R. 1988, Misinterpretetion of results in weed research through inappropriate use of statistics. Weed Research, 28, 281-289.
8. Edwards, A. W. F. and L. L. Cavalli-Sforza. 1965, A method for cluster analysis. Biometrics, 21, 362-375.
9. Gates, C. E. and J. D. Bilbro. 1978, Illustration of a cluster analysis method for mean separation. Agronomy journal, 70, 462-465.
10. O'Neill, R. and G. B. Wetherill. 1971, The present state of multiple comparison methods. Journ. Roy. Stat. Soc. , 2, 218-249.
11. Petersen, R. G. 1977, Use and misuse of multiple comparison procedurs. Agronomy Journal, 69, 205-208.
12. Scott, A. J. and M. Knott. 1974, A cluster analysis method for grouping means in the analysis of variance. Biometrics, 30, 507-512.
13. Willavize, S. A., S. G. Carmer, and W. M. Walker. 1980, Evaluation of cluster analysis for comparing treatment means. Agronomy journal, 72,317-320.

<!--chapter:end:11-ConfrontoMultiplo.Rmd-->


# Modelli lineari con più variabili indipendenti

Placeholder


## Introduzione
## ANOVA a blocchi randomizzati
## ANOVA a quadrato latino

<!--chapter:end:12-MultiWayANOVAModels.Rmd-->


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

