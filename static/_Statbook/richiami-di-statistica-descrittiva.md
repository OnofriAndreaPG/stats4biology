---
title: "Metodologia sperimentale per le scienze agrarie"
author: "Andrea Onofri e Dario Sacco"
date: "Update: v. 1.1 (Anno Accademico 2022), compil. 2022-03-08"
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

Qualunque esperimento include un processo di raccolta dati, tramite osservazioni e/o misurazioni, al termine del quale abbiamo a disposizione un collettivo di valori, di solito organizzati sotto forma di tabella ('dataset'), dove ogni riga corrisponde ad un'unità sperimentale (soggetto) con tutti i suoi attributi, mentre ogni colonna (detta anche variabile) corrisponde ad un attributo e contiene i valori rilevati per tutte le unità sperimentali. Un esempio di dataset è riportato nella Tabella \@ref(tab:tabName1).


Table: (\#tab:tabName1)Numero totale (in migliaia) di passeggeri nei voli internazionali dal 1949 al 1960 (Box & Jenkins airline data).

|     | Gen| Feb| Mar| Apr| Mag| Giu| Lug| Ago| Set| Ott| Nov| Dic|
|:----|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|1949 | 112| 115| 145| 171| 196| 204| 242| 284| 315| 340| 360| 417|
|1950 | 118| 126| 150| 180| 196| 188| 233| 277| 301| 318| 342| 391|
|1951 | 132| 141| 178| 193| 236| 235| 267| 317| 356| 362| 406| 419|
|1952 | 129| 135| 163| 181| 235| 227| 269| 313| 348| 348| 396| 461|
|1953 | 121| 125| 172| 183| 229| 234| 270| 318| 355| 363| 420| 472|
|1954 | 135| 149| 178| 218| 243| 264| 315| 374| 422| 435| 472| 535|
|1955 | 148| 170| 199| 230| 264| 302| 364| 413| 465| 491| 548| 622|
|1956 | 148| 170| 199| 242| 272| 293| 347| 405| 467| 505| 559| 606|
|1957 | 136| 158| 184| 209| 237| 259| 312| 355| 404| 404| 463| 508|
|1958 | 119| 133| 162| 191| 211| 229| 274| 306| 347| 359| 407| 461|
|1959 | 104| 114| 146| 172| 180| 203| 237| 271| 305| 310| 362| 390|
|1960 | 118| 140| 166| 194| 201| 229| 278| 306| 336| 337| 405| 432|


Il nostro primo compito è quello di comprendere e descrivere le caratteristiche fondamentali di ogni variabile, utilizzando statistiche descrittive opportunamente scelte, in base al tipo di dato e alle caratteristiche che si vogliono descrivere.


## Descrizione di dati quantitativi

Se i dati sono stati ottenuti con un processo di misurazione e rappresentano una quantità, come, ad esempio, il peso, l'altezza, la concentrazione e così via, abbiamo una variabile quantitativa, della quale dobbiamo descrivere almeno due caratteristiche fondamentali:

1. tendenza centrale
2. dispersione

La tendenza centrale è un valore che rappresenta il 'centro', attorno al quale si collocano tutte le osservazioni; al contrario, la dispersione misura la distanza delle osservazioni tra di loro, cioè, in altre parole, la loro variabilità. Ovviamente, esistono anche altre importanti proprietà di una variabile quantitativa, come la simmetria e la curtosi, anche se in questo capitolo ci accontenteremo di esaminare le più diffuse statistiche descrittive di tendenza centrale e dispersione. 

### Indicatori di tendenza centrale

L'indicatore di tendenza centrale più diffuso è la *media* aritmetica, che non necessita di particolari spiegazioni: si tratta della somma dei dati ($x$) divisa per il loro numero ($n$):

$$\mu = \frac{\sum\limits_{i = 1}^n x}{n}$$

Per esempio, consideriamo il seguente dataset, che elenca le altezze di quattro piante di mais $d = [178, 175, 158, 153]$

Il calcolo della media è banale:

$$\mu = \frac{178 + 175 + 158 + 153}{4} = 166$$

La media è 'centrale' nel senso che la somma delle sue distanze da ogni altra osservazione è nulla. Di conseguenza, è molto sensibile ai valori estremi; se, ad esempio, supponiamo di avere i cinque valori: 1, 4, 7, 9 e 10 con media pari a 6,2 e supponiamo di sostituire il valore più alto con 100, la media aumenta di conseguenza, diventando pari a 24,2. Per questa sua sensibilità ai valori estremi, si dice che la media non è un indicatore di tendenza centrale 'robusto' nei confronti degli *outliers*, cioè delle osservazioni in qualche modo 'aberranti'. In presenza di queste osservazioni, che potrebbero essere frutto di un errore sperimentale rilevante, la media tende a non rappresentare più la tendenza centrale del collettivo in modo affidabile.

Un altro indicatore di tendenza centrale è la *mediana*, cioè il valore che bipartisce i dati in modo che la metà di essi siano più alti e la metà più bassi. Per calcolare la mediana, basta ordinare i soggetti in ordine crescente: se il numero di individui è dispari, la mediana è data dal valore dall’individuo che occupa il posto centrale o, se gli individui sono in numero pari, dalla media delle due osservazioni centrali. Nell'esempio precedente, i dati sono in numero pari, quindi la mediana è: $(158 + 175)/2 = 166.5$.

La mediana è un indicatore più robusto della media: infatti, se consideriamo gli stessi cinque valori elencati in precedenza (1, 4, 7, 9 e 10), la mediana è pari a 7 e non cambia quando sostituiamo il valore più alto con 100.


### Indicatori di dispersione

Conoscere la tendenza centrale di un collettivo è importante, ma non è sufficiente. Infatti, una media pari a 100 può essere ottenuta con tre individui che misurano 99, 100 e 101, rispettivamente, o con tre individui che misurano 1, 100 e 199. E’ evidente che i due gruppi hanno la stessa tendenza centrale, ma sono molto diversi in termini di dispersione (o variabilità) rispetto alla media. Per descrivere la dispersione dei dati possiamo utilizzare il *campo di variazione*, che è la differenza tra la misura più bassa e la misura più alta. In realtà, questo indicatore è poco diffuso, perché considera solo i valori estremi del collettivo e non necessariamente cresce al crescere della variabilità. Altri indicatori sono più diffusi ed affidabili, come la devianza, la varianza, la deviazione standard ed il coefficiente di variabilità, tutti legati da relazioni algebriche ben definite.

La *devianza*, generalmente nota come somma dei quadrati (abbreviata SS, da *sum of squares*) è data da:

$$SS = \sum\limits_{i = 1}^n {(x_i  - \mu)^2 }$$

Ad esempio, per le quattro altezze menzionate in precedenza, la devianza è pari a:

$$SS = \left(178 - 166 \right)^2 + \left(175 - 166 \right)^2 + \left(158 - 166 \right)^2  + \left(153 - 166 \right)^2 = 458$$

La devianza è un indicatore di dispersione molto utilizzato, soprattutto perché ha un suo preciso significato geometrico, in quanto somma delle distanze euclidee al quadrato, rispetto alla media. Tuttavia, ha due aspetti che vanno tenuti in considerazione: in primo luogo, proprio perché è una somma, il valore finale dipende dal numero di addendi e quindi non la si può utilizzare per confrontare la variabilità di collettivi con diversa numerosità. Inoltre, l'unità di misura della devianza è pari al quadrato dell'unità di misura originale dei dati; ad esempio se le osservazioni sono espresse in centimetri (come nel nostro esempio), la devianza è espressa in centimetri quadrati, il che rende più difficoltosa l'interpretazione dei risultati.

Oltre dalla devianza, un indicatore molto utilizzato è la *varianza campionaria* (o semplicemente *varianza*), che è data dalla devianza divisa per il numero di dati meno uno:

$$\sigma^2  = \frac{SS}{n - 1}$$

Nel caso delle nostre altezze:

$$\sigma^2  = \frac{458}{3} = 152.67$$

La varianza è anche detta scarto quadratico medio è permette di confrontare la variabilità di collettivi diversamente numerosi, anche se permane il problema dell'unità di misura, che è sempre il quadrato di quella delle singole osservazioni. Per eliminare questo problema si ricorre alla radice quadrata della varianza, cioè la *deviazione standard*, che si indica con $\sigma$. La deviazione standard è espressa nella stessa unità di misura dei dati originali ed è quindi molto utilizzata per descrivere l'*incertezza assoluta* di misure ripetute più volte. Nel nostro caso, risulta che:

$$\sigma  = \sqrt{152.67} = 12.36$$

e questo valore ci fa capire che, 'mediamente', la distanza euclidea tra ogni valore e $\mu$ è pari $12.36$ centimetri. Media e deviazione standard sono spesso riportate contemporaneamente, utilizzando un intervallo $l$ definito come:

$$l = \mu \pm \sigma$$

Un problema della deviazione standard è che essa, in assenza della media, non riesce a dare informazioni facilmente comprensibili; infatti, se dicessimo semplicemente che un gruppo di individui ha una deviazione standard pari a $12.36$, cosa potremmo concludere in relazione alla variabilità di questo collettivo? È alta o bassa? È evidente che, senza sapere la media, non riusciamo a rispondere a questa domanda: la variabilità potrebbe essere considerata molto alta se la media fosse bassa (ad esempio 16), oppure molto bassa, se la media fosse alta (esempio 1600). Per questo, se dovessimo descrivere la variabilità dei dati indipendentemente dalla media, dovremmo  utilizzare il *coefficiente di variabilità* (CV):

$$CV = \frac{\sigma }{\mu } \times 100$$

Il CV è un numero puro e non dipende dall’unità di misura e dall’ampiezza del collettivo, sicché è molto adatto ad esprimere, ad esempio, l’errore degli strumenti di misura e delle apparecchiature di analisi (**incertezza relativa**). Nel nostro caso, abbiamo:

$$CV = \frac{12.36}{166} \times 100 = 7.45 \%$$

Come la media, anche la devianza, la varianza e la deviazione standard sono sensibili agli *outliers*. Pertanto, in presenza di osservazioni aberranti, preferiamo descrivere la variabilità del collettivo utilizzando i cosiddetti *percentili*, che, estendendo il concetto di mediana, bipartiscono il collettivo in modo da lasciare una certa percentuale di individui alla loro sinistra. Ad esempio, il primo percentile bipartisce il collettivo in modo che l’1% dei soggetti sono più bassi e il 99% sono più alti. Allo stesso modo, l’ottantesimo percentile bipartisce il collettivo in modo che l’80% dei soggetti sono più bassi e il 20% sono più alti. Ovviamente, la mediana rappresenta il 50-esimo percentile.

I percentili più utilizzati per descrivere la dispersione di un collettivo sono il 25-esimo e il 75-esimo, che individuano un intervallo all'interno del quale è compreso il 50% dei soggetti: se questo intervallo è piccolo, significa che la variabilità è bassa. Calcolare i percentili a mano non è banale e, di conseguenza, lo faremo nei paragrafi successivi, utilizzando R. 

### Incertezza delle misure derivate

A volte noi misuriamo due quantità e poi le combiniamo, per ottenere una misura derivata, ad esempio la somma o la differenza. Se le due misure hanno un certo grado di incertezza, quantificabile, ad esempio, con la deviazione standard, qual è l'incertezza della loro somma o della loro differenza? La legge di propagazione degli errori dice che, in caso di misure indipendenti, **la deviazione standard di una somma o di una differenza è uguale alla radice quadrata della somma dei quadrati delle deviazioni standard degli addendi**. Ad esempio, se abbiamo fatto due misure indipendenti in triplicato, ottenendo le due medie $22$ e $14$, con deviazioni standard rispettivamente pari a $2$ e $3$, la somma sarà pari a $36$, con deviazione standard pari $\sqrt{2^2 + 3^2} = 3.6$, mentre la differenza sarà pari ad $8$ con deviazione standard comunque pari a $3.6$. Ovviamente è anche possibile calcolare la deviazione standard di misure derivate con funzioni diverse dalla somma o dalla differenza, ma si tratta di una situazione meno comune, che non tratteremo in questo libro.

### Relazioni tra variabili quantitative: correlazione

Se su ogni soggetto abbiamo rilevato due caratteri quantitativi (ad esempio il peso e l'altezza, oppure la produzione e il contenuto di proteina della granella), è possibile verificare se esista una relazione tra la coppia di variabili ottenute, cioè se al variare di una cambi anche il valore dell’altra, in modo congiunto (variazione congiunta).

Per questo fine, si utilizza il *coefficiente di correlazione di Pearson* costituito dal rapporto tra la codevianza (o somma dei prodotti) delle due variabili e la radice quadrata del prodotto delle loro devianze. Vedremo tra poco il metodo di calcolo, ma vogliamo anticipare che il coefficiente di correlazione varia tra $-1$ e $+1$; se è pari ad 1, abbiamo una situazione ideale di concordanza perfetta (quando aumenta una variabile, aumenta anche l’altra in modo esattamente proporzionale), mentre quando è pari a $-1$, abbiamo una situazione ideale di discordanza perfetta (quando aumenta una variabile, diminuisce l’altra in modo inversamente proporzionale). Un valore pari a $0$ è altrettanto ideal ed indica assenza di qualunque grado di variazione congiunta (assenza di correlazione). Nell'intervallo tra $-1$ ed $1$, il coefficiente indica una correlazione imperfetta, ma tanto migliore quanto più ci allontaniamo dallo zero e ci avviciniamo a $-1$ o $1$. Due esempi di ottima correlazione sono mostrati in Figura \@ref(fig:figName311); si evidenzia un elevato grado di correlazione, che, tuttavia, non è perfetta, in quanto i punti non sono esattamente allineati. 

<div class="figure" style="text-align: center">
<img src="_images/CorrelationExample.png" alt="Esempio di correlazione positiva (destra) e negativa (sinistra)" width="75%" />
<p class="caption">(\#fig:figName311)Esempio di correlazione positiva (destra) e negativa (sinistra)</p>
</div>


Proviamo a considerare questo esempio: il contenuto di olio di 9 lotti di acheni di girasole è stato misurato con due metodi diversi ed è riportato più sotto.


```r
A <- c(45, 47, 49, 51, 44, 37, 48, 44, 53)
B <- c(44, 44, 49, 53, 48, 34, 47, 46, 51)
```

Per valutare la entità della correlazione tra i risultati dei due metodi di analisi, dobbiamo eseguire alcune operazioni preliminari, cioè:

1. calcolare i residui per A ($z_A$)
2. calcolare i residui per B ($z_B$)
3. calcolare devianze e codevianze

In primo luogo, calcoliamo le due medie, che sono, rispettivamente, 46.44 e 46.22. Successivamente, possiamo calcolare i residui, come differenze tra ogni dato e la sua media, i loro quadrati ed i loro prodotti, come indicato in Tabella \@ref(tab:tabName3).



La somma dei quadrati dei residui ci permette di calcolare le devianze di $A$ e $B$ (rispettivamente 176.22 e 239.56), mentre la somme dei prodotti degli residui ci permette di calcolare la codevianza (pari a 184.11).

Il coefficiente di correlazione è quindi:

$$r = \frac{184.11}{\sqrt{176.22 \times 239.56}} = 0.896$$


Vediamo che il coefficiente di correlazione è abbastanza vicino ad 1 e quindi possiamo concludere che i due metodi di analisi danno risultati ben concordanti.

## Descrizione di dati qualitativi

Nel capitolo 2 abbiamo visto che le variabili qualitative sono ottenute assegnando ogni soggetto di un collettivo ad una classe scelta tra due o più possibili opzioni. Al termine di questo processo di classificazione, di solito calcoliamo le *frequenza assolute*, cioè il numero di individui assegnato ad ogni classe. Ad esempio, se abbiamo esaminato 500 insetti rilevando l'ordine a cui appartengono, le frequenze assolute potrebbero essere: 100 ditteri, 200  imenotteri e 150 ortotteri.

Oltre alle frequenze assolute, possiamo calcolare anche le *frequenze relative*, dividendo le frequenze assolute per il numero totale degli individui del collettivo. Nel caso precedentemente menzionato, la frequenza relativa dei ditteri è pari a $100/500 = 0.2$.

Se le classi possono essere logicamente ordinate, oltre alle frequenze assolute e relative, possiamo calcolare anche le cosiddette *frequenze cumulate*, che si ottengono cumulando le frequenze relative di una classe con quelle di tutte le classi precedenti.

### Distribuzioni di frequenze e classamento

Quando rappresentiamo, in un grafico o in una tabella, le frequenze (assolute, relative o cumulate) per tutte le classi e tutti gli individui del collettivo, otteniamo una *distribuzione di frequenze*. 

Ad esempio, se consideriamo il famoso database 'mtcars', relativo alle 32 auto storiche censite dalla rivista Motor Trends nel 1974, e analizziamo il numero delle marce, otteniamo la seguente distribuzione di frequenze assolute, relative e cumulate.


| Marce| Freq.Ass| Freq.Rel| Freq.Cum|
|-----:|--------:|--------:|--------:|
|     3|       15|     0.47|     0.47|
|     4|       12|     0.38|     0.84|
|     5|        5|     0.16|     1.00|


Le distribuzioni di frequenze possono essere costruite anche per le variabili quantitative, tramite un’operazione di *classamento*, che consiste nel suddividere il campo di variazione dei dati in una serie di intervalli (esempio, da 10 a 20, da 20 a 40 e così via) e contare i soggetti in ogni classe. In questo modo, se le osservazioni sono molto numerose, la lettura delle informazioni risulta più semplice e più completa che non elencando tutti i valori o, d'altra parte, riportando solo la loro media e la loro deviazione standard. Daremo un esempio di questa tecnica in un paragrafo successivo.


### Statistiche descrittive per le distribuzioni di frequenze 

Per una distribuzione di frequenze, il più semplice indicatore di tendenza centrale è la *moda*, cioè il valore della classe che presenta la maggior frequenza. Ovviamente, se la variabile è quantitativa ed è stata sottoposta a classamento, si considera come moda il punto centrale della classe con maggior frequenza. L’individuazione della moda è banale e non richiede calcoli di sorta.

In alcune condizioni (distribuzioni di frequenze per caratteri qualitativi ordinabili o quantitativi sottoposti a classamento), oltre alla moda possiamo calcolare la *mediana* e gli altri percentili, nonché la media e le altre statistiche descrittive indicate per i caratteri quantitativi. Tuttavia, si tratta di una situazione più tipica delle scienze economiche e sociali che non delle scienze agrarie e biologiche e, per questo motivo, non la prenderemo in ulteriore considerazione.

### Distribuzioni di frequenza bivariate: le tabelle di contingenze

In alcuni casi, in ciascuna unità sperimentale del collettivo vengono studiati due (o più) caratteri qualitativi, che possiamo rappresentare in una *tabella di contingenze*. Si tratta di tabelle a due (o più) entrate, nelle quali ogni valore rappresenta la frequenza assoluta per una particolare combinazione dei caratteri rilevati.

Ad esempio, potremmo aver valutato la germinabilità di cariossidi di frumento sottoposte a due tipi di illuminazione, rossa o blu. Per ogni cariosside abbiamo quindi due informazioni, il trattamento a cui è stata sottoposta (luce rossa o blu) e se è germinata oppure no, per un totale di quattro possibili combinazioni (Rosso-si, Rosso-no, Blu-si, Blu-no). Supponendo di aver osservato 95 cariossidi germinate su 110 testate con luce rossa e 67 germinate su 120 testate con luce blu, possiamo definire la tabella di contingenze riportata di seguito.



|      | SI| NO|
|:-----|--:|--:|
|ROSSO | 95| 15|
|BLU   | 67| 53|

Ogni riga della tabella sovrastante costituisce una distribuzione di frequenze per la germinabilità, data una certa tipologia di luce (distribuzione di frequenze condizionate).


### Connessione

Se guardiamo le due distribuzioni condizionate per la luce rossa e blu, possiamo notare che esiste una certa differenza e che la germinabilità pare maggiore con luce rossa. Potremmo chiederci quindi se una certa modalità del carattere luce (rossa o blue) influenzi il presentarsi di una particolare modalità del carattere germinabilità (si o no). Se così fosse, potremmo parlare di dipendenza o connessione, mentre, nel caso contrario, si dovrebbe parlare di indipendenza dei caratteri.

Come si fa a stabilire se i caratteri sono indipendenti o connessi? Il punto di partenza è pensare che, se i caratteri fossero indipendenti, la germinabilità dovrebbe essere la stessa con entrambi i trattamenti; in totale, abbiamo osservato 230 semi, di cui 162 sono germinati e 68 non lo sono e, di conseguenza, la  proporzione di semi germinati è stata pari a 162/230 = 0.704. Ebbene, questa proporzione la si dovrebbe riscontrare con entrambi i trattamenti. In cifre, il numero di semi germinati con luce rossa dovrebbe essere pari a $110 \times 0.704 = 77.44$, mentre il numero di semi germinati con luce blu dovrebbe essere pari a $120 \times 0.704 = 84.48$. Rispettando i totali marginali (cioè il numero totale di semi saggiati con luce rossa e blu dovrebbe essere pari, rispettivamente a 110 e 120), possiamo costruire la tabella delle frequenze assolute attese, nell'ipotesi di indipendenza completa tra i due caratteri.


|      |    SI|    NO|
|:-----|-----:|-----:|
|ROSSO | 77.44| 32.56|
|BLU   | 84.48| 35.52|

A questo punto possiamo costruire un indice statistico di connessione, detto $\chi^2$, che misuri la discrepanzatra le due tabelle, quella delle frequenze osservate e quella delle frequenze teoriche che si sarebbero dovute osservare nell’ipotesi di indipendenza perfetta:

$$\chi ^2  = \sum \left[ \frac{\left( {f_o  - f_a } \right)^2 }{f_a } \right]$$

dove $f_o$ sta per frequenza osservata ed $f_a$ sta per frequenza attesa nel caso indipendenza. Questo indice assume valore pari a zero nel caso di indipendenza completa (le frequenze osservate sono uguali a quelle attese) ed assume un valore positivo tanto più alto quanto maggiore è la connessione tra i due caratteri.

Nel nostro esempio:

$$\chi^2  = \frac{\left( {95  - 77.44 } \right)^2 }{77.44 } + \frac{\left( {15  - 32.56 } \right)^2 }{32.56 } + \frac{\left( {67  - 84.48 } \right)^2 }{84.48 } + \frac{\left( {53  - 35.52 } \right)^2 }{35.52 } = 25.67$$


Se i caratteri fossero veramente indipendenti, la tabella delle frequenze osservate dovrebbe essere uguale a quella delle frequenze atteso, il che implicherebbe $\chi^2 = 0$. Il valore da noi osservato è maggiore di 0 e quindi possiamo dire che esiste un certo grado di connessione, ma non sappiamo dire quanto questa sia elevata. Qual è il $\chi^2$ massimo possibile?

Intuitivamente, possiamo immaginare che la connessione potrebbe essere la più elevata possibile quando con uno dei due trattamenti i semi sono tutti germinati, mentre con l'altro non ne è germinato nessuno, come indicato nella tabella seguente:


|      |  SI|  NO|
|:-----|---:|---:|
|ROSSO | 110|   0|
|BLU   |   0| 120|



Se calcoliamo il valore di $\chi^2$ per la tabella sovrastante otteniamo 230, che è appunto il massimo valore possibile nella nostra condizione. Più in generale, il $\chi^2$ massimo è dato dal prodotto del numero degli individui per il valore minimo tra il numero di righe meno una e il numero di colonne meno una:

$$\max \chi ^2  = n \cdot \min (r - 1,\,c - 1)$$

Possiamo concludere che la connessione tra i due caratteri è pari all'11% circa di quello massima ($25.67/230 = 0.112$).


## Statistiche descrittive con R

Le statistiche descrittive si calcolano facilmente con R. Per esercizio, utilizziamo il dataset 'heights.csv', che è disponibile in una repository online. Il box sottostante mostra come caricare il dataset, del quale utilizzeremo la colonna 'height' che riporta le altezze di venti piante di mais.


```r
filePath <- "https://www.casaonofri.it/_datasets/heights.csv"
dataset <- read.csv(filePath, header = T)
dataset$height
```

```
##  [1] 172 154 150 188 162 145 157 178 175 158 153 191 174 141 165 163 148 152 169
## [20] 185
```

La media si calcola con la funzione `mean()`, mentre la mediana si calcola con la funzione `median()`.



```r
mean(dataset$height)
```

```
## [1] 164
```

```r
median(dataset$height)
```

```
## [1] 162.5
```

Per la devianza, non esiste una funzione dedicata e dobbiamo utilizzare l'equazione fornita in precedenza:


```r
sum( (dataset$height - mean(dataset$height))^2 )
```

```
## [1] 4050
```

Varianza e deviazione standard sono molto facili da calcolare, grazie alle funzioni apposite, mentre il coefficiente di variabilità si può calcolare con la formula fornita in precedenza:


```r
var(dataset$height)
```

```
## [1] 213.1579
```

```r
sd(dataset$height)
```

```
## [1] 14.59993
```

```r
sd(dataset$height)/mean(dataset$height) * 100
```

```
## [1] 8.902395
```

Per calcolare i percentili si usa la funzione `quantile()`, fornendo le proporzioni di soggetti da lasciare sulla sinistra con l'argomento 'probs'. Ad esempio, per il 25-esimo percentile utilizzeremo 0.25, mentre per il 75-esimo utilizzeremo 0.75:


```r
quantile(dataset$height, probs = c(0.25, 0.75))
```

```
##    25%    75% 
## 152.75 174.25
```

La correlazione si calcola invece con la funzione `cor()`, come indicato più sotto.


```r
cor(A, B)
```

```
## [1] 0.8960795
```


### Descrizione dei sottogruppi

In biometria è molto comune che il gruppo di soggetti sia divisibile in più sottogruppi, corrispondenti, ad esempio, ai diversi trattamenti sperimentali. In questa comune situazione siamo soliti calcolare, per ogni gruppo, le statistiche descrittive già viste in precedenza, utilizzando la funzione `tapply()` in R, come mostrata più sotto.


```r
m <- tapply(dataset$height, dataset$var, mean)
s <- tapply(dataset$height, dataset$var, sd)
descript <- data.frame(Media = m, SD = s)
descript
```

```
##    Media       SD
## C 165.00 14.36431
## N 164.00 16.19877
## S 160.00 12.16553
## V 165.25 19.51709
```

Nel codice immediatamente precedente, `height` è la variabile che contiene i valori da mediare, `var` è la variabile che contiene la codifica di gruppo, `mean` è la funzione che dobbiamo calcolare. Ovviamente `mean` può essere sostituito da qualunque altra funzione ammissibile in R, come ad esempio la deviazione standard. Nel codice precedente abbiamo utilizzato la funzione `data.frame()` per creare una tabella riassuntiva con le medie e le deviazioni standard dei quattro gruppi.

Oltre che in una tabella, i risultati possono anche essere riportati in un grafico a barre, con l'indicazione della variabilità dei dati. Possiamo utilizzare la funzione `barplot()` alla quale passeremo come argomenti l'altezza delle barre, data dalle medie dei diversi gruppi, i nomi dei gruppi medesimi e, opzionalmente, la scala dell'asse delle ordinate. La funzione `barplot()`, oltre che creare il grafico, restituisce le ascisse del centro di ogni barra, che possiamo utilizzare per creare dei segmenti verticali corrispondenti alle deviazioni standard di ogni gruppo, attraverso la funzione `arrows()`.

L'uso di quest'ultima funzione non è immediato; poniamo che le ascisse del centro di ogni barra siano contenute nel vettore 'coord'; allora i segmenti di variabilità dovranno avere punti di partenza con ascisse contenute in 'coord' ed ordinate uguali all'altezza di ogni barra meno la deviazione standard. I punti di arrivo, invece, dovranno avere le stesse ascisse dei punti di partenza ed ordinate uguali all'altezza di ogni barra più la deviazione standard. Gli altri argomenti della funzione `arrows()` servono per meglio specificare l'aspetto dei segmenti di variabilità; ad esempio, il codice sottostante produce il risultato mostrato in Figura \@ref(fig:figName242); il grafico non è bellissimo, ma, con un po' di esercizio, è possibile ottenere grafici altamente professionali.


```r
coord <- barplot(descript$Media, names.arg = row.names(descript), 
                 ylim = c(0, 200))
arrows(coord, descript$Media - descript$SD, 
       coord, descript$Media + descript$SD, 
       length = 0.05, angle = 90, code = 3)
```

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName242-1.png" alt="Esempio di boxplot in R" width="90%" />
<p class="caption">(\#fig:figName242)Esempio di boxplot in R</p>
</div>

Quando abbiamo a che fare con gruppi molto numerosi, con un certo numero di outliers, è bene sostituire la mediana alla media, in associazione con il 25-esimo e 75-esimo percentile, come indicazioni di variabilità. Da un punto di vista grafico, possiamo utilizzare un *boxplot* (grafico Box-Whisker). Si tratta di una scatola (box) che ha per estremi il 25-esimo e il 75-esimo percentile ed è tagliata da una linea centrale in corrispondenza della mediana. Dalla scatola partono due linee verticali (baffi = whiskers) che identificano il valore massimo e il minimo. Se il massimo (o il minimo) distano dalla mediana più di 1.5 volte la differenza tra la mediana stessa e il 75-esimo (o 25-esimo) percentile, allora le linee verticali si fermano ad un valore pari ad 1.5 volte il 75-esimo (o il 25-esimo) percentile ed i dati più estremi vengono considerati outliers e rappresentati con un piccolo cerchio. In Figura \@ref(fig:figName241) abbiamo raprresentato tre gruppi di valori estratti casualmente nell'intervallo da 0 ad 1.


```r
set.seed(1234)
A <- runif(20)
B <- runif(20)
C <- runif(20)
series <- rep(c("A", "B", "C"), each = 20)
values <- c(A, B, C)
boxplot(values ~ series)
```

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName241-1.png" alt="Esempio di boxplot in R" width="90%" />
<p class="caption">(\#fig:figName241)Esempio di boxplot in R</p>
</div>


### Distribuzioni di frequenze e classamento

Utilizziamo il dataset 'mtcars' disponibile nell'installazione di gbase di R, che possiamo caricare utilizzando la funzione `data()`.


```r
data(mtcars)
```

In questo dataset, la variabile 'gear' indica il numero di marce e le frequenze assolute possono essere ottenute con la funzione `table()`.


```r
# Frequenze assolute
table(mtcars$gear)
```

```
## 
##  3  4  5 
## 15 12  5
```

Per le frequenze relative e percentuali, possiamo combinare il codice soprastante con l’impiego della funzione `length()`, che restituisce il numero di elementi in un vettore.


```r
#Frequenze relative
table(mtcars$gear)/length(mtcars$gear)
```

```
## 
##       3       4       5 
## 0.46875 0.37500 0.15625
```

```r
#Frequenze percentuali
table(mtcars$gear)/length(mtcars$gear) * 100
```

```
## 
##      3      4      5 
## 46.875 37.500 15.625
```

Mostriamo ora l'operazione di classamento di una variabile quantitativa, che tornerà utile nei prossimi capitoli. Prendiamo con R mille valori casuali da una distribuzione uniforme nell'intervallo da 130 a 200 ed esprimiamo questi mille valori tramite una distribuzione di frequenze nelle sei classi: <140, 140-150, 150-160, 160-170, 170-190, >190. Per il classamento si utilizza la funzione `cut()`, che con l'argomento `breaks()` consente di specificare gli estremi inferiori delle classi, inclusi per default nella classe precedente (intervalli aperti a destra e chiusi a sinistra).


```r
vals <- runif(1000, min = 130, max = 200)
freq <- table( cut(vals, breaks = c(100, 140,150,160,170,190,200)) )
freq
```

```
## 
## (100,140] (140,150] (150,160] (160,170] (170,190] (190,200] 
##       141       135       143       139       282       160
```

Per le frequenze cumulate si usa invece la funzione `cumsum()`.


```r
cumsum(freq)
```

```
## (100,140] (140,150] (150,160] (160,170] (170,190] (190,200] 
##       141       276       419       558       840      1000
```

Una distribuzione di frequenze può essere rappresentata con un grafico a torta, che, in R, può essere disegnato con le funzioni `pie()`. Il grafico sottostante è abbastanza banale, in quanto le classi sono più o meno di ampiezza equivalente, dato che abbiamo utilizzato un campionamento da una distribuzione uniforme.


```r
pie(table(freq))
```

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName243-1.png" alt="Rappresentazione di una distribuzione di frequenze con un grafico a torta" width="70%" />
<p class="caption">(\#fig:figName243)Rappresentazione di una distribuzione di frequenze con un grafico a torta</p>
</div>


### Connessione

Consideriamo il dataset 'HairEyeColor', disponibile nell'installazione di base di R e relativo al colore degli occhi e dei capelli di 520 studenti di statistica. La tabella delle contingenze, per le femmine, è la seguente:


```r
data(HairEyeColor)
tab <- HairEyeColor[,,2]
tab
```

```
##        Eye
## Hair    Brown Blue Hazel Green
##   Black    36    9     5     2
##   Brown    66   34    29    14
##   Red      16    7     7     7
##   Blond     4   64     5     8
```

Se vogliamo sapere se il colore degli occhi è legato a quello dei capelli, possiamo utilizzare la funzione `as.table()` per trasformare l'oggetto  `tab` in una tabella di contingenze (in questo caso non sarebbe necessario, visto che 'tab' è già una tabella di contingenze) ed applicare la funzione `summary()`. Oltre al chi quadro, l'output fornisce altre informazioni, che approfondiremo in un prossimo capitolo.


```r
summary(as.table (tab))
```

```
## Number of cases in table: 313 
## Number of factors: 2 
## Test for independence of all factors:
## 	Chisq = 106.66, df = 9, p-value = 7.014e-19
## 	Chi-squared approximation may be incorrect
```



---

## Altre letture

1. F. Crivellari (2006). Analisi statistica dei dati con R. Apogeo, Milano.
2. G. Leti e L. Cerbara (2009). Elementi di statistica descrittiva. Il Mulino Editore, Bologna.


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

Placeholder


## Capitoli 1 e 2
### Esercizio 1
### Esercizio 2
## Capitolo 3
### Esercizio 1
### Esercizio 2
### Esercizio 3
## Capitolo 4
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
### Esercizio 7
### Esercizio 8
## Capitolo 5
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
## Capitolo 6
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
### Esercizio 7
### Esercizio 8
### Esercizio 9
### Esercizio 10
## Capitoli da 7 a 9
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
## Capitolo 10
### Esercizio 1
### Esercizio 2
### Esercizio 3
## Capitolo 11
### Esercizio 1
### Esercizio 2
## Capitoli 12 e 13
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
## Capitolo 14
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
### Esercizio 7

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

