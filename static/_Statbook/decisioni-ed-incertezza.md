---
title: "Metodologia sperimentale per le scienze agrarie"
author: "Andrea Onofri e Dario Sacco"
date: "Update: v. 1.24 (Anno Accademico 2022-2023), compil. 2024-04-09"
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
### La 'sampling distribution' empirica
### La 'sampling distribution' teorica
## Stima per intervallo
## Inferenza statistica: conclusioni
## Per chi avesse voglia di approfondire un po'...
### Popolazioni gaussiane e non 
### Cosa fare se il teorema centrale del limite non funziona?
## Altre letture

<!--chapter:end:05-InferenzaStatistica.Rmd-->

# Decisioni ed incertezza

Dovrebbero ormai essere chiari i motivi per cui i risultati di un esperimento non corrispondono alla verità vera e si presentano in modo diverso ogni volta che lo ripetiamo. Nel capitolo precedente abbiamo visto come è possibile (e necessario) esplicitare la nostra incertezza in relazione alla verità vera, aggiungendo alle nostre stime campionarie il cosiddetto **intervallo di confidenza**, basato sulla *sampling distribution* della stima, che mostra come quest'ultima varia quando ripetiamo l'esperimento. Un approccio affine può essere utilizzato per prendere decisioni in presenza di incertezza, con un procedimento che si chiama **test d'ipotesi**. Anche per questo argomento, vediamo alcuni semplici, ma realistici esempi.

## Il test t di Student

Immaginiamo che un ricercatore abbia testato la produzione di due genotipi (A e P) in un disegno sperimentale a randomizzazione completa, con cinque repliche (dieci parcelle in totale). I risultati ottenuti sono i seguenti:


```r
A <- c(65, 68, 69, 71, 78)
P <- c(80, 81, 84, 88, 94)
```

Come al solito, l'analisi dei dati inizia con il calcolo delle più importanti statistiche descrittive per ogni campione, come abbiamo visto nel Capitolo 3. Trattandosi di una serie di misure quantitative, calcoliamo quindi media e deviazione standard, come indicato nel box sottostante.


```r
m1 <- mean(A)
m2 <- mean(P)
s1 <- sd(A)
s2 <- sd(P)
n1 <- length(A)
n2 <- length(P)
m1; s1; n1
```

```
## [1] 70.2
```

```
## [1] 4.868265
```

```
## [1] 5
```

```r
m2; s2; n2
```

```
## [1] 85.4
```

```
## [1] 5.727128
```

```
## [1] 5
```

Il passo precedente è importante e ci consente di comprendere alcune caratteristiche dei due campioni, ma non dobbiamo mai dimenticare il fatto che noi siamo interessati a trarre conclusioni generali, relative a tutte le infinite parcelle che avremmo potuto coltivare e che non abbiamo potuto coltivare, per la limitatezza delle risorse a nostra disposizione. Il passo successivo è quello di fare un'ipotesi ragionevole sul meccanismo causa-effetto che ha generato le nostre osservazioni sperimentali, da esplicitare con un modello statistico a due componenti (deterministica e stocastica), come abbiamo visto nel Capitolo 4. Il modello dovrà essere un po' più complesso rispetto a quello introdotto nel capitolo precedente, in quanto dovrà considerare l'effetto varietale, che potremmo immaginare come additivo, così come indicato di seguito:

$$
Y_i = \mu_1 + \delta_j + \varepsilon_{i} 
$$

dove $Y_i$ è la produzione della i-esima parcella ($i$ va da 1 a 10), $\mu_1$ è la produzione attesa della prima varietà (A, in ordine alfabetico), mentre $\delta_j$ è l'effetto della varietà, che è fisso ed uguale a 0 per la prima varietà ($\delta_1 = 0$) mentre è uguale alla differenza tra le due medie per la seconda varietà ($\delta_2 = \mu_1 - \mu_2$), cosicché la produzione attesa della seconda varietà è $\mu_2 = \mu_1 + \delta_2$. I termini $\varepsilon_i$ rappresentano gli effetti di confusione, casuali e diversi per ogni i-esima osservazione e che assumiamo gaussiani, con media 0 e deviazione standard $\sigma$. La scelta di utilizzare $\mu_1$ compe parametro esplicito nel modello è puramente arbitraria, nel senso che avremmo potuto benissimo utilizzare $\mu_2$, rovesciando il segno della differenza $\delta_2$.



Una volta definito il modello generale, possiamo utilizzare i dati osservati per stimarne i parametri ignoti. Le stime puntuali sono: $\mu_1 = m_1 = 70.2$, $\delta_2 = d_2 = 15.2$ (dove $d_2$ è la differenza campionaria osservata) e, di conseguenza, $\mu_2 = 70.2 + 15.2 = 85.4$. Per quanto riguarda $\sigma$ (la deviazione standard dei residui $\varepsilon_i$), la formulazione del modello prevede che essa sia costante e comune per tutte le osservazioni, indipendentemente dalla varietà a cui 'appartengono'. Questa condizione è detta di **omoscedasticità** (od **omoschedasticità**) ed è ragionevole, in quanto si può ipotizzare che l'effetto varietà agisca solo sulla produzione media, ma non solo sulla deviazione standard. Vedremo in seguito che questa semplificazione non è strettamente necessaria.

Nell'ipotesi di omoscedasticità, la miglior stima di $\sigma$ può essere ottenuta da una sorta di media delle varianze campionarie, pesata sui relativi gradi di libertà:

$$\sigma = \sqrt{ \frac{s_1^2 \, (n_1 - 1) + s_2^2 \, (n_2 - 1)}{n_1 + n_2 - 2} }$$

dove $s_1$ ed $s_2$ sono le deviazioni standard dei due campioni e $n_1$ ed $n_2$ sono le due numerosità (entrambe uguali a cinque):


```r
s_pool <- sqrt( (sd(A)^2 * (n1 - 1) + sd(P)^2 * (n2 - 1))/(n1 + n2 - 2) )
s_pool
```

```
## [1] 5.315073
```



La deviazione standard 'comune' ha $n_1 + n_2 - 2 = 8$ gradi di libertà, pari allo somma dei gradi di libertà di ogni campione.

Dopo la stima puntuale dei parametri, dobbiamo procedere alla determinazione degli errori standard, che sono l'ingrediente fondamentale dell'inferenza statistica. L'errore standard della media $\mu_1$ è $5.315/\sqrt{5} = 2.377$ mentre l'errore standard della differenza $\delta_2$ (abbreviato come SED), in base alla legge di propagazione degli errori e per campioni estratti in modo indipendente, può essere ottenuta come la radice quadrata della somma pesata delle varianze campionarie, comuni ai due campioni:

$$SED = \sqrt {\frac{s^2}{ n_1}  + \frac{s^2}{n_2} }$$

Considerando che in questo caso anche il numero delle osservazioni è costante, l'errore standard della differenza si riduce a:


```r
sed <- s_pool * sqrt(2/5)
sed
```

```
## [1] 3.361547
```

### L'ipotesi 'nulla' e l'ipotesi 'alternativa'

Dopo aver completato l'inferenza statistica, ci chiediamo se, a livello di popolazione, sia possibile concludere che il genotipo P è più produttivo del genotipo A, coerentemente con i risultati osservati nei due campioni. Non dimentichiamoci che i due campioni sono totalmente irrilevanti, perché vogliamo trarre conclusioni generali e non specifiche per il nostro esperimento. Dobbiamo quindi **trovare un metodo per decidere se il genotipo P, in generale, è più produttivo del genotipo A**, pur in presenza dell'incertezza legata all'errore sperimentale.

Innanzitutto, ricordiamo la logica Popperiana illustrata nel primo capitolo, secondo la quale nessun esperimento può dimostrare che un'ipotesi scientifica è vera, mentre è possibile dimostrare che essa è falsa. E'quindi conveniente porre l'ipotesi scientifica di nostro interesse ($H_0$) in modo che essa possa essere falsificata, cieè, ad esempio:

$$H_0: \delta_2 = 0$$

In altre parole, stiamo cercando di dimostrare che uno dei parametri stimati nel modello sia, in realtà, uguale a 0; questa ipotesi si chiama **ipotesi nulla** e, se riuscissimo a falsificarla, avremmo conseguito il nostro obiettivo, in totale coerenza con la logica Popperiana. Dobbiamo però avere un'ipotesi alternativa ($H_1$) da abbracciare nel caso in cui quella nulla risultasse falsa, ad esempio:

$$H_1: \delta_2 \neq 0$$

In questa ipotesi alternativa non viene considerata la direzione della differenza (positiva o negativa) ma solo la sua esistenza (**ipotesi alternativa semplice**), il che è coerente con la scelta puramente arbitraria di inserire $\mu_1$ come parametro esplicito nel modello; se avessimo infatti scelto di inserire $\mu_2$, il segno di $\delta_2$ sarebbe stato opposto.

In altri casi potrebbe essere opportuno adottare **ipotesi alternative complesse**, del tipo

$$H_1 :\delta_2  > 0$$

oppure:

$$H_1 :\delta_2  < 0$$

Vedremo tra breve che l'adozione di ipotesi alternative complesse è conveniente in termini di potenza del test, ma richiede informazioni preliminari di supporto (pensate che sia possibile fare una scommessa dopo aver visto accadere un evento?). Ciò può realizzarsi, ad esempio, quando andiamo a sperimentare un concime di cui sia nota l'assenza di effetti collaterali negativi e per il quale sia quindi lecito attendersi che, rispetto al testimone non concimato, vi possa essere solo un incremento produttivo più o meno alto, non un decremento. Nel nostro caso, trattandosi di due varietà, non vi è nessuna informazione preliminare attendibile che possa portarci ad escludere *a priori* che P \> A o che P \< A e quindi la nostra ipotesi alternativa dovrà essere per forza semplice.

### La statistica T

Un primo approccio intuitivo per il test d'ipotesi potrebbe essere basato sull'intervallo di confidenza di $\delta_2$, che, tenendo conto che l'errore standard di questa stima ha 8 gradi di libertà, può essere calcolato come:


```r
delta <- mean(A) - mean(P)
delta + qt(0.975, 8) * sed
```

```
## [1] -7.448258
```

```r
delta - qt(0.975, 8) * sed
```

```
## [1] -22.95174
```



La differenza è negativa e l'intervallo di confidenza non contiene lo zero, il che supporta, in qualche modo, l'idea che esista effettivamente una differenza significativa tra le due varietà. 



Anche se questo criterio basato sull'intervallo di confidenza è, in qualche modo, accettabile, in pratica si preferisce utilizzare un altro criterio più rigoroso, basato sul calcolo di probabilità.

La domanda è: come è possibile falsificare l'ipotesi nulla? Ad esempio, potremmo chiederci: "ma se l'ipotesi nulla è vera, perché io ho osservato due compioni con medie così diverse?". In effetti esiste una spiegazione: anche se ho campionato due volte dalla stessa popolazione, potrei aver campionato cinque parcelle dalla coda sinistra (e quindi con bassa produzione) e cinque parcelle dalla coda destra (con elevata produzione), in modo che $m_1 \neq m_2$ e quindi $d_2 \neq 0$. Di conseguenza, la differenza osservata sarebbe solo casuale, legata ad un campionamento 'sfortunato'. Sarebbe un po' come osservare, per esempio, cinque teste consecutive in altrettanti lanci di una moneta: un 'outcome' possibile, ma abbastanza improbabile. La domanda è quindi: "Quanto è improbabile il nostro risultato, quando l'ipotesi nulla è vera?".

Nello stabilire la probabilità di trovare $d_2 \neq 0$, dobbiamo tener conto di due aspetti:

1.  l'entità della differenza stessa: più la differenza è alta e più è improbabile che essa si sia prodotta per caso;
2.  l'entità dell'errore standard: maggiore l'incertezza di stima, maggiore la probabilità di trovare differenze casuali anche ampie.

Una statistica che considera entrambi gli aspetti è quella indicata di seguito:

$$T = \frac{d_2}{SED}$$

Il valore osservato è:

$$T = \frac{15.2}{3.361547} = -4.5217$$

### Simulazione Monte Carlo

Ipotizzando che l'ipotesi nulla sia vera ($\delta = 0$), che valori può assumere la statistica T? E'facile intuire che il valore più probabile sia 0, ma possiamo anche aspettarci che T sia diverso da zero. Tuttavia, trovare valori di T molto alti o molto bassi dovrebbe essere via via meno probabile.

Nel nostro esperimento, il valore di T che abbiamo ottenuto è ben diverso da zero, il che indica un certo grado di discrepanza tra l'osservazione è l'ipotesi nulla. **Possiamo affermare che ciò sia imputabile solo alla variabilità di campionamento e che quindi il nostro esperimento confermi l'ipotesi nulla**?

Per rispondere a questa domanda, supponiamo che l'ipotesi nulla sia vera. In questo caso, immaginiamo che le nostre dieci parcelle siano tutte estratte da una sola popolazione di parcelle con media e deviazione standard stimate (stima puntuale) come segue:


```r
media <- mean(c(A, P))
devSt <- sd(c(A, P))
media
```

```
## [1] 77.8
```

```r
devSt
```

```
## [1] 9.44928
```

Prendiamo quindi questa popolazione normale, con $\mu = 77.8$ e $\sigma = 9.45$, ed utilizziamo un generatore di numeri casuali gaussiani per estrarre numerose (100'000) coppie di campioni, calcolando, per ogni coppia, il valore T, come abbiamo fatto con la nostra coppia iniziale. Il codice da utilizzare in R per le simulazioni è il seguente:


```r
T_obs <- -4.521727
set.seed(34)
result <- rep(0, 100000)
for (i in 1:100000){
  sample1 <- rnorm(5, media, devSt)
  sample2 <- rnorm(5, media, devSt)
  d <- (mean(sample1) - mean(sample2))
  s_pool <- sqrt( (sd(sample1)^2 * 4 + sd(sample2)^2 * 4)/8 )
  sed <- s_pool * sqrt(2/5)
  result[i] <-  d / sed
}

# Valutazione dei valori di T
mean(result)
```

```
## [1] -0.001230418
```

```r
max(result)
```

```
## [1] 9.988315
```

```r
min(result)
```

```
## [1] -9.993187
```

```r
# Quanti valori sono più discrepanti del mio?
length(result[result < T_obs]) / 100000
```

```
## [1] 0.00095
```

```r
length(result[result > - T_obs]) /100000
```

```
## [1] 0.00082
```

Come risultato (vettore 'result') otteniamo una lista di 100'000 valori di T, tutti compatibili con l'ipotesi nulla vera ($\delta_2 = 0$); in altre parole, otteniamo una *sampling distribution* per T, in quanto le variazioni tra un valore e l'altro sono solo dovute al campionamento, visto che l'ipotesi nulla è vera. In mezzo a questi 100'000 valori ne troviamo alcuni piuttosto alti ($> 9$) o piuttosto bassi ($< - 9$). Negli anni 20 del 1900, Fischer propose di utilizzare come **'forza dell'evidenza scientifica'** proprio la probabilità di ottenere un risultato uguale o più estremo di quello osservato, supponendo vera l'ipotesi nulla. Per applicare questo criterio, dobbiamo partire dalla nostra osservazione ($T = -4.521727$) e considerare che il valore è negativo, ma solo perché abbiamo scritto la differenza come $m_1 - m_2$ invece che come $m_2 - m_1$. Quindi dobbiamo andarci a cercare nel vettore 'result' i valori che risultano minori di -4.5217 e maggiori di 4.5217, che sono più discrepanti di quello da noi osservato. Dobbiamo quindi tener conto di entrambe le 'code' della *sampling distribution* e, per questo, si parla di **test a due code**.

Vediamo che, dei 100'000 valori di T simulati assumendo vera l'ipotesi nulla, poco meno dell'uno per mille sono inferiori a -4.5217 e altrettanti sono superiori al suo reciproco (4.5217). In totale, la probabilità di osservare un valore di T uguale o più estremo di quello da noi osservato è molto bassa a pari allo 0.18% circa. Questo valore di probabilità è detto **P-level** (o **P-value**) e viene utilizzato come criterio decisionale: se esso è inferiore a 0.05 (5% di probabilità), come in questo caso, rifiutiamo l'ipotesi nulla ed abbracciamo l'alternativa, concludendo che i due trattamenti sono significativamente diversi tra loro (in termini di risposta prodotta nei soggetti trattati, ovviamente).


### Soluzione formale

Eseguire una simulazione di Monte Carlo per costruire una *sampling distribution* empirica per T non è sempre agevole e, pertanto, ci dobbiamo chiedere se esista una funzione di densità formale da utilizzare come *sampling distribution* teorica. Nel grafico sottostante abbiamo reppresentato il vettore 'result', è quindi la *sampling distribution* empirica, come una distribuzione discreta di frequenze, considerando intervalli di ampiezza pari a 2.5.


```r
#Sampling distribution per T 
max(result);min(result)
```

```
## [1] 9.988315
```

```
## [1] -9.993187
```

```r
b <- seq(-10, 10, by = 0.25)
hist(result, breaks = b, freq=F, 
  xlab = "T", ylab="Density", 
  xlim=c(-10,10), ylim=c(0,0.45), main="")
curve(dnorm(x), add=TRUE, col="blue")
curve(dt(x, 8), add=TRUE, col="red")
```

<div class="figure" style="text-align: center">
<img src="_main_files/figure-html/figName71-1.png" alt="Sampling distribution empirica a confronto con una distribuzione normale (in rosso) e una distribuzione t di Student con otto gradi di libertà" width="85%" />
<p class="caption">(\#fig:figName71)Sampling distribution empirica a confronto con una distribuzione normale (in rosso) e una distribuzione t di Student con otto gradi di libertà</p>
</div>

Vediamo che l'istogramma non è rappresentabile fedelmente con una curva gaussiana (curva blu in Figura \@ref(fig:figName71)), in quanto le code sono leggermente più alte. Oltre alla funzione di densità gaussiana esiste un'altra funzione simile, detta 't di Student', di cui abbiamo parlato nel Capitolo 5 e che, rispetto alla gaussiana, è caratterizzata da una più elevata densità nelle code, soprattutto quando il numero di gradi di libertà è basso (in questo caso ne abbiamo 8, come abbiamo precisato più sopra). Possiamo vedere che la distribuzione t di Student con 8 gradi di libertà si adatta perfettamente alla *sampling distribution* empirica (curva rossa in Figura \@ref(fig:figName71)). 

L'impiego della curva 't di Student' ci permette di calcolare il P-level molto velocemente, senza dover ricorrere ad una simulazione Monte Carlo. Chiaramente, dato che l'ipotesi alternativa è quella semplice dobbiamo considerare entrambe le code, utilizzando il codice sottostante: 


```r
2 * pt(abs(T_obs), 8, lower.tail = F) 
```

```
## [1] 0.001945471
```

Abbiamo moltiplicato per 2 il risultato, in quanto la funzione `dt()` fornisce la probabilità di trovare individui superiori al valore assoluto di -4.5217 ('abs(T_obs)' e 'lower.tail = F'), ma, essendo la curva t di Student simmetrica, la probabilità di trovare soggetti nell'altra coda è esattamente la stessa.

Vediamo che il P-level ottenuto formalmente è simile a quello ottenuto empiricamente, ma, rispetto a quest'ultimo, è più preciso, in quanto con la simulazione di Monte Carlo non abbiamo potuto considerare, come avremmo dovuto, un numero infinito di repliche dell'esperimento. Tuttavia bisogna precisare che **l'impiego di una sampling distribution formale richiede che siano vere alcune condizioni di base, come, ad esempio, l'omogeneità delle varianze e la normalità dei residui** $\varepsilon_i$, altrimenti il test è invalido. Questo aspetto non va assolutamente dimenticato e, per questo, daremo alcuni indicazioni in seguito.


### Interpretazione del P-level

Abbiamo detto che quando il P-level è inferiore a 0.05, concludiamo che vi sono prove scientifiche sufficientemente forti per rifiutare la nostra ipotesi di partenza.

Bisogna sottolineare come il P-level nella statistica tradizionale sia stato inizialmente proposto da Fisher come criterio di comportamento e non come un vero e proprio criterio inferenziale-probabilistico. Successivamente, Jarzy Neyman ed Egon Pearson, intorno al 1930, proposero di utilizzare il P-level come probabilità di errore di I specie, cioè come probabilità di rifiutare erroneamente l'ipotesi nulla. Tuttavia, trattandosi di una probabilità calcolata a partire da una *sampling distribution*, cioè da un'ipotetica infinita ripetizione dell'esperimento, essa non ha alcun valore in relazione al singolo esperimento effettivamente eseguito, come i due autori menzionati in precedenza hanno esplicitamente chiarito.

Di conseguenza, nel caso in esempio, affermare che abbiamo una probabilità di errore pari a 0.0019 nel rifiutare l'ipotesi nulla, rappresenterebbe un abuso: le nostre conclusioni potrebbero essere false o vere, ma non abbiamo alcun elemento per scegliere tra le due opzioni. Possiamo solo affermare che, se ripetessimo infinite volte l'esperimento e se l'ipotesi nulla fosse vera, otterremmo un risultato estremo come il nostro o più estremo solo in 2 casi (circa) su 1000. In altre parole, basando sempre le nostre conclusioni sul criterio anzidetto (rifiuto l'ipotesi nulla se il P-value è inferiore a 0.05), possiamo contenere la nostra probabilità di errore (falso-positivo) sotto il 5% nel lungo periodo, non in relazione ad ogni singolo sforzo sperimentale di campionamento.

## Altri esempi dell'uso del test di t di Student

In questo capitolo abbiamo utilizzato il test t di Student per valutare la significatività della stima di un parametro, sotto l'ipotesi nulla che il valore del parametro nella popolazione sia uguale a 0. Questo approccio è sempre possibile ed è generalizzabile in questo modo:

1. procediamo alla stima puntuale del parametro (ad esempio $\beta$ = 12);
2. determiniamo il suo errore standard (ad esempio 1.5, con 7 gradi di libertà) con un metodo adeguato;
3. calcoliamo il rapporto tra la stima e il suo errore standard (ad esempio T = 12/1.5 = 8 con 7 gradi di libertà);
4. Utilizziamo la distribuzione t di Student per calcolare il P-level per l'ipotesi nulla $H_0: \beta = 0$, come mostrato nel box sottostante.


```r
T_obs <- 12/1.5
2 * pt(abs(T_obs), 7, lower.tail = F)
```

```
## [1] 9.114921e-05
```

Quando il P-level è inferiore a 0.05, rigettiamo l'ipotesi nulla e concludiamo che il valore del parametro nella popolazione è significativamente diverso da zero.

Oltre a questo, esistono anche altri campi d'applicazione del test di t di Student, alcuni dei quali sono anche da considerare più 'tradizionali' di quello da noi indicato. Vediamoli con altri esempi.

### Confronto tra due medie campionarie

Tradizionalmente, il test t di Student è utilizzato per saggiare la differenza tra due medie campionarie, anche senza costruire un modello statistico come il nostro. In particolare, il processo è analogo a quello sopra indicato, salvo il fatto che, all'inizio, calcoliamo le medie dei due campioni, la loro differenza e l'errore standard di questa differenza. Successivamente, diviidiamo la differenza per il suo errore standard e procediamo come sopra.

In R, questo processo è agevolato dalla funzione `t.test()`, che, nel caso del nostro esempio iniziale, riceve in input i due campioni, assieme alla specifica 'var.equal = T', che permette di eseguire un test omoscedastco, con risultati assolutamente uguali a quelli riportati più sopra.


```r
t.test(A, P, var.equal = T)
```

```
## 
## 	Two Sample t-test
## 
## data:  A and P
## t = -4.5217, df = 8, p-value = 0.001945
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -22.951742  -7.448258
## sample estimates:
## mean of x mean of y 
##      70.2      85.4
```



### Varianze non omogenee

Se le varianze dei due campioni di cui vogliamo confrontare le medie non sono uguali, possiamo utilizzare il test di t eteroscedastico, meglio noto con il nome di test di Welch. Consideriamo, per esempio, i due campioni riportati di seguito e caratterizzati da varianze molto diverse, per cui l'ipotesi di omoscedasticità non è difendibile.




```r
D1
```

```
## [1] 12.06608 11.79470 11.85008 12.14712 12.14591
```

```r
D2
```

```
## [1] 35.14014 35.20918 31.96391 34.51307 33.91213
```

```r
mean(D1)
```

```
## [1] 12.00078
```

```r
mean(D2)
```

```
## [1] 34.14769
```

```r
var(D1)
```

```
## [1] 0.02798071
```

```r
var(D2)
```

```
## [1] 1.767402
```

Il test di Welch è analogo al test di t, ma l'errore standard della differenza viene calcolato utilizzando le deviazioni standard dei due campioni, senza calcolare una deviazione standard comune. Inoltre, il numero di gradi di libertà non è ottenuto per semplice somma dei gradi di libertà di ogni campione, ma è approssimato con la formula di Satterthwaite:

$$DF_s \simeq \frac{ \left( s^2_1 + s^2_2 \right)^2 }{ \frac{(s^2_1)^2}{DF_1} + \frac{(s^2_2)^2}{DF_2} }$$

Vediamo che se le varianze e i gradi di libertà sono uguali, la formula precedente riduce a:

$$DF_s = 2 \times DF$$

In questo esempio:


```r
dfS <- (var(D1) + var(D2))^2 / 
  ((var(D1)^2)/4 + (var(D2)^2)/4)
dfS
```

```
## [1] 4.126621
```

Con R, il test di Welch si esegue utilizzando l'argomento 'var.equal = F', che è l'opzione di default. Il codice sottostante mostra che il test eteroscedastico è leggermente meno potente di quello omoscedastico (P-level più basso), ma permette di rilasciare l'assunzione di omogeneità delle varianze e fornisce risultati validi anche quando i due campioni hanno una variabilità molto diversa.


```r
t.test(D1, D2, var.equal = F)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  D1 and D2
## t = -36.959, df = 4.1266, p-value = 2.326e-06
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -23.79070 -20.50312
## sample estimates:
## mean of x mean of y 
##  12.00078  34.14769
```

Dato che le varianze di due campioni non sono mai esattamente uguali, ci si può chiedere quando sia opportuno utilizzare il test di t di Student e quando sia invece preferibile il test di Welch. Non c'è una risposta esatta: in genere il test t di Student è preferibile per la sua semplicità e potenza quando le varianze sono poco diverse, nello stesso ordine di grandezza e con un rapporto pari ad 1/2 o 1/3 massimo. Secondo alcuni, invece, il test di Welch è sempre preferibile, per la maggior protezione che garantisce, come dimostra il fatto che esso costituisca l'opzione di default in R.

### Differenze generalizzate tra parametri

Il test di Welch può essere generalizzato a qualunque situazione in cui abbiamo due stime indipendenti e vogliamo valutare se la loro differenza è significativa. Ad esempio, immaginiamo di avere la stima di $\gamma_1 = 22$ con errore standard pari a 1.3 e la stima di $\gamma_2 = 31$, con errore standard pari a 2.9. L'errore standard della differenza sarà pari a:

$$\textrm{SED} = \sqrt{\textrm{SEM}_1^2 + \textrm{SEM}_2^2} = 3.178$$

Avendo anche i gradi di libertà dei due SEM, potrei approssimare i gradi di libertà del SED utilizzando la formula di Satterthwaite. Altrimenti, nell'ipotesi che il numero di gradi di libertà sia sufficientemente alto (maggiore di 15-20, all'incirca), potrei utilizzare una approssimazione gaussiana, come indicato nel box sottostante.


```r
T_obs <- (22 - 31)/3.178
2 * pnorm(abs(T_obs), lower.tail = F)
```

```
## [1] 0.004626222
```

Anche in questo caso il P-level è abbondantemente inferiore allo 0.05, per cui rigettiamo l'ipotesi nulla.

### Misure appaiate

Il t-test appaiato è quello in cui le misure sono state prese negli stessi soggetti, prima e dopo un certo trattamento sperimentale. Ad esempio, se le misure D1 e D2 fossero state rilevate sugli stessi soggetti (due misure per soggetto, in posizioni corrispondenti dei vettori D1 e D2), allora avremmo cinque soggetti invece che dieci e, di conseguenza, avremmo solo solo 4 gradi di libertà invece che 8:


```r
t.test(D1, D2, var.equal = F, paired=T)
```

```
## 
## 	Paired t-test
## 
## data:  D1 and D2
## t = -38.002, df = 4, p-value = 2.864e-06
## alternative hypothesis: true mean difference is not equal to 0
## 95 percent confidence interval:
##  -23.76497 -20.52885
## sample estimates:
## mean difference 
##       -22.14691
```

### Test ad una coda 

Se fosse ragionevole adottare un ipotesi alternativa complessa del tipo $H_1: \delta_2 < 0$, allora potremmo effettuare un **test ad una coda**. Tornando all'esempio precedente, avendo osservato un valore di T uguale a -4.5217, potremmo limitarci a valutare la probabilità di ottenere, con l'ipotesi nulla vera, valori pari o inferiori a quello da noi osservati, trascurando invece l'altra coda della distribuzione di riferimento (valori pari o superiori a 4.5217). In questo modo il test produrrebbe un P-level inferiore e risulterebbe quindi più potente (sarebbe più facile rigettare l'ipotesi nulla). Un esempio è dato nel box sottostante


```r
pt(-4.5217, 8, lower.tail = T)
```

```
## [1] 0.0009727699
```

```r
t.test(A, P, var.equal = T, alternative = "less") # più semplice
```

```
## 
## 	Two Sample t-test
## 
## data:  A and P
## t = -4.5217, df = 8, p-value = 0.0009727
## alternative hypothesis: true difference in means is less than 0
## 95 percent confidence interval:
##       -Inf -8.949041
## sample estimates:
## mean of x mean of y 
##      70.2      85.4
```

Ricordiamo come l'ipotesi alternativa complessa possa essere adottata solo nei casi in cui essa risulti ragionevole già prima di effettuare l'esperimento e non dopo averne visti i risultati.

## Altri test d'ipotesi

## Il test $\chi^2$

Il test di t, con tutte le sue varianti, è fondamentalmente basato sul rapporto tra una stima ed il suo errore standard, la cui *sampling distribution* è approssimativamente gaussian o, più precisamente, segue la distribuzione di 't di Student'. Tuttavia, io posso testare ipotesi di ogni tipo, mi basta avere una qualunque statistica che descriva l'andamento dell'esperimento e conoscere la sua *sampling distribution*, assumendo che l'ipotesi nulla sia vera. Questa *sampling distribution* può essere empirica (cioè ottenuta per simulazione Monte Carlo) o meglio teorica, scelta in base a considerazioni di natura statistico-matematica; su di essa, vado a cercare la probabilità di trovare valori per la statistica in studio che siano tanto estremi o più estremi di quello da noi riscontrato.

Ad esempio, immaginiamo che io abbia una stima pari a 22 ed immaginiamo che la *sampling distribution* per questa stima, assumendo vera l'ipotesi nulla, segua la distribuzione di $\chi^2$ con 10 gradi di libertà (per menzionare una qualunque distribuzione che non conosciamo ancora). Allora io posso ottenere un P-level per l'ipotesi nulla andandomi a guardare la probabilità di osservare un valore altrettanto estremo o più estremo di 22 (test ad una coda), come indicato nel box sottostante.


```r
pchisq(22, 10, lower.tail = F)
```

```
## [1] 0.0151046
```

Il test di $\chi^2$ funziona esattamente in questo modo ed è utilizzato per valutare la significatività della connessione tra due caratteri qualitativi, per i quali sia stata costruita una tabella delle contingenze (ricordate il Capitolo 3?). 

Ad esempio, immaginiamo un esperimento per verificare se un coadiuvante aumenta l'efficacia di un insetticida. In questo esperimento, utilizziamo l'insetticida da solo e miscelato con il coadiuvante su due gruppi di insetti diversi. Nel primo gruppo (trattato con insetticida) contiamo 56 morti su 75 insetti trattate, mentre nel secondo gruppo (trattato con insetticida e coadiuvante) otteniamo 48 morti su 50 insetti trattati.

Nel capitolo 3 abbiamo visto come costruire una tabella di contingenze e come calcolare il $\chi^2$ per misurare l'entità della connessione:


```r
counts <- c(56, 19, 48, 2)
tab <- matrix(counts, 2, 2, byrow = T)
row.names(tab) <- c("I", "IC")
colnames(tab) <- c("M", "V")
tab
```

```
##     M  V
## I  56 19
## IC 48  2
```

```r
summary( as.table(tab) )
```

```
## Number of cases in table: 125 
## Number of factors: 2 
## Test for independence of all factors:
## 	Chisq = 9.768, df = 1, p-value = 0.001776
```

Il valore di $\chi^2$ osservato è pari a 9.768, il che indica un certo grado di connessione, in quanto è diverso dal valore atteso in assenza di connessione che sarebbe zero (Capitolo 3). Tuttavia, noi non siamo interessati solo ai 125 insetti osservati, ma siamo interessati a trarre conclusioni generali e valide per l'intera popolazione che ha generato il nostro campione. A questo fine abbiamo bisogno di un test d'ipotesi formale; se non esiste connessione, la proporzione di insetti controllati dal trattamento dovrebbe la stessa, indipendentemente dalla presenza del coadiuvante. Cioè:

$$H_o :\pi_1  = \pi_2  = \pi$$

Vediamo che, come negli altri esempio, l'ipotesi nulla riguarda i parametri delle popolazioni ($\pi_1$ e $\pi_2$), non quelli dei campioni ($p_1$ e $p_2$). Ci chiediamo: se l'ipotesi nulla fosse vera ($\pi_1 = \pi_2$), quale sarebbe la *sampling distribution* per $\chi^2$? E soprattutto, quanto sarebbe probabile ottenere un valore alto come il nostro o più alto? Karl Pearson ha dimostrato che il valore di $\chi^2$, quando l'ipotesi nulla è vera, segue la distribuzione di $\chi^2$, con un numero di gradi di libertà pari a quelli della tabelle delle contingenze (bisogna prendere il minimo valore tra il numero di righe meno una e il numero di colonne meno una; vedi il Capitolo 3). Il box sottostante mostra come utilizzare la funzione 'pchi()' per il calcolo del P-level (in questo caso il test è ad una coda, perché la connessione implica valori di $\chi^2$ alti e non bassi).


```r
pchisq(9.768, df = 1, lower.tail = F)
```

```
## [1] 0.001775755
```

Vediamo che questo P-level era già disponibile nell'output della funzione `summary()`; essendo inferiore a 0.05, ci consente di rigettare l'ipotesi nulla, affermando che esiste una differenza significativa tra l'effetto dell'insetticida quando è utilizzato da solo e quando è utilizzando in abbinamento con un coadiuvante.

Allo stesso risultato, ma in modo più semplice, è possibile pervenire utilizzando la funzione `chisq.test()`, applicata alla tabella di contingenza:


```r
chisq.test(tab, correct = F)
```

```
## 
## 	Pearson's Chi-squared test
## 
## data:  tab
## X-squared = 9.768, df = 1, p-value = 0.001776
```

L'opzione 'correct = F' permette di evitare la correzione per la continuità (correzione di Yates), che è invece necessaria quando il numero dei soggetti è piccolo (minore di 30, grosso modo).


## Test d'ipotesi con simulazione di Monte Carlo

Vi sono situazioni nelle quali non vi è una chiara indicazione su quale sia la distribuzione di probabilità/densità più opportuna per descrivere la *sampling distribution* di una statistica sotto l'ipotesi nulla. Ciò è vero anche per il test di $\chi^2$ appena esposto, per il quale la distribuzione di $\chi^2$ è cosniderata solo una buona approssimazione.

In queste situazioni è possibile costruire una *sampling distribution* empirica analogamente a quanto abbiamo fatto in precedenza per il test di t di Student. Nel caso del test di $\chi^2$, possiamo utilizzare la funzione `r2dtable()`, che, partendo da una situazione in cui l'ipotesi nulla è vera (cioè $\pi_1 = \pi_2$) e quindi i due caratteri sono indipendenti, produce tante tabelle di contingenza (nel nostro caso 10'000), rispettando i totali marginali della nostra tabella di partenza. Le tabelle prodotte sono restituite come lista, quindi possiamo utilizzare la funzione `lapply()` per applicare ad ogni elemento della lista la funzione che restituisce il $\chi^2$ ('chiSim').


```r
chiSim <- function(x) summary(as.table(x))$stat
set.seed(1234)
tabs <- r2dtable(10000, apply(tab, 1, sum), apply(tab, 2, sum))
chiVals <- as.numeric( lapply( tabs, chiSim) )
length(chiVals[chiVals > 9.768])
```

```
## [1] 19
```

Vediamo che vi sono 19 valori so 10'000 più alti di quello da noi osservato, quindi il P-value è 0.0019, molto simile a quello osservato con il test formale.


## Conclusioni e riepilogo

Abbiamo visto il P-level è lo strumento giusto per tirare conclusioni in presenza di incertezza sperimentale. Dovrebbe essere evidente che anche le nostre conclusioni sono incerte, in quanto soggette all'errore di campionamento. In particolare, abbiamo visto che esiste un rischio di errore di prima specie, cioè rifiutare erroneamente l'ipotesi nulla (falso positivo). Allo stesso modo, esiste anche un rischio di errore di II specie, cioè accettare erroneamente l'ipotesi nulla (falso negativo). Insomma, per quanto possiamo affannarci, la ricerca scientifica non consente mai soluzioni certe, anche se rimane la certezza del metodo, che è largamente condiviso all'interno della comunità di scienziati.

Concludiamo proprio ricordando questo metodo di lavoro:

1.  si formula l'ipotesi nulla.
2.  Si individua una statistica che descriva l'andamento dell'esperimento, in relazione all'ipotesi nulla.
3.  Si individua la *sampling distribution* per questa statistica, assumendo vera l'ipotesi nulla; la sampling distribution può essere empirica (ottenuta per simulazione Monte Carlo) o meglio teorica, scelta in base a considerazioni probabilistiche.
4.  Si calcola la probabilità che, essendo vera l'ipotesi nulla, si possa osservare una valore altrettanto estremo o più estremo di quello calcolato, per la statistica di riferimento.
5.  Se il livello di probabilità è inferiore ad una certa soglia $\alpha$ prefissata (generalmente 0.05), si rifiuta l'ipotesi nulla e si accetta l'ipotesi alternativa.

---

## Altre letture

1.  Hastie, T., Tibshirani, R., Friedman, J., 2009. The elements of statistical learning, Springer Series in Statistics. Springer Science + Business Media, California, USA.

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
### Test F per la bontà di adattamento
### Coefficiente di determinazione
## Previsioni
## Disegni a blocchi randomizzati
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
### Coefficiente di determinazione
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


## Il disegno degli esperimenti (Cap. 1 e 2)
### Domanda 1
### Domanda 2
### Domanda 3
### Domanda 4
### Domanda 5
### Domanda 6
### Domanda 7
### Domanda 8
### Domanda 9
### Domanda 10
### Domanda 12
### Domanda 13
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
## Statistica descrittiva (Cap. 3)
### Domanda 1
### Domanda 2
### Domanda 3
### Domanda 4
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
## Modelli statistici (Cap. 4)
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
## Stima dei parametri (Cap. 5)
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
## Test d'ipotesi (Cap. 6)
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
### Esercizio 11
## Modelli ANOVA ad una via (Cap. da 7 a 9)
### Esercizio 1 
### Esercizio 2
### Esercizio 3
### Esercizio 4
## ANOVA a due vie (Cap. 10)
### Esercizio 1
### Esercizio 2
### Esercizio 3
## Regressione (Cap. 11)
### Esercizio 1
### Esercizio 2
## ANOVA a due vie con interazione (Cap. 12 e 13)
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
## Regressione non-lineare (Cap. 14)
### Esercizio 1
### Esercizio 2
### Esercizio 3
### Esercizio 4
### Esercizio 5
### Esercizio 6
### Esercizio 7

<!--chapter:end:15-Esercizi.Rmd-->


# Appendice: breve introduzione ad R

Placeholder


## Cosa è R?
## Prima di iniziare
## Oggetti e assegnazioni
### Costanti e vettori
### Matrici
### Dataframe
### Indicizzazione
## Espressioni e funzioni
## Funzioni di uso comune
## Creazione di funzioni personalizzate
## Uso di librerie aggiuntive
## Workspace
## Importare dati esterni
## Cenni sulle funzionalità grafiche in R
## Altre letture

<!--chapter:end:17-IntroduzioneR.Rmd-->

