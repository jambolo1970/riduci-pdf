# riduci-pdf
Uno script Bash per comprimere file PDF utilizzando `pdf2ps`, `ps2pdf` e Ghostscript (`gs`).  Permette all'utente di scegliere tra due livelli di compressione: normale o maggiore, con notifiche al termine del processo.
I due tipi di compressione possono essere utili se si vuole ridurre in un file molto contenuto a livello di byte, ed occupare meno memoria in invio di eMail.
## PDF Tool di compressione dei file
si appoggia al programma `Xsane` che deve essere installato sulla macchina in uso.
Si consiglia di utilizzare l'opzione Multipagina o CTRL+M, questo perché lo script cercherà il file generato `multipageproject.pdf`una volta scansionate le pagine e salvato il file pdf.
Lo script poi trasformerà a seconda delle necessita in due tipi di compressione, che avranno un peso in byte sicuramente più leggero del file originale, senza perdere troppo in qualità del contenuto. Ho deciso di fare questo script in quanto OpenSuse da già con un doppio passaggio la compressione normale ma avevo necessità di una compressione maggiore, proprio per poter spedire i file meno pesanti via eMail.
## 🎥 Video Dimostrativo

Guarda il video dimostrativo su [YouTube]([https://www.youtube.com/watch?v=4RtZ3rLAkbQ](https://youtu.be/4RtZ3rLAkbQ).

[![Guarda il Video su YouTube di come OpenSuse comprime il file](https://img.youtube.com/vi/4RtZ3rLAkbQ/0.jpg)]([https://www.youtube.com/watch?v=4RtZ3rLAkbQ])
- Nel video i Passaggi grafici su come comprime il file pdf generato da Xsane (valido solo per OpenSuse)

Qui invece come risolvere con lo script la compressione in 2 modalità
[YouTube]([https://www.youtube.com/channel/UC2ODtlWig0Dbi-XXYuNDq0w/community?lb=UgkxBdaCoFBE2dySVXndFRKz-3yDBEcdxON6])(https://www.youtube.com/channel/UC2ODtlWig0Dbi-XXYuNDq0w/community?lb=UgkxBdaCoFBE2dySVXndFRKz-3yDBEcdxON6).
[!(https://yt3.ggpht.com/EI87UMp1Ae6zsoyxw2EoTfR02vDUSGNxscr1IeVw0gieiqNnBaDqjISZKfY2CEzMYd9DxmS5GZk8-w=s215-c-fcrop64=1,41500000beafffff-rw-nd-v1)]([https://www.youtube.com/channel/UC2ODtlWig0Dbi-XXYuNDq0w/community?lb=UgkxBdaCoFBE2dySVXndFRKz-3yDBEcdxON6])
- In questo articolo sono descritti i passaggi su OpenSuse per creare un icona di lancio dello script.

## Funzionalità
- **Compressione normale**: utilizza `pdf2ps` e `ps2pdf` per ridurre la dimensione del file PDF, ed ha una qualità molto alta
- **Compressione maggiore**: utilizza Ghostscript con impostazioni avanzate per una compressione più aggressiva, ed è simile alla ristampa in OpenSuse del file ogirinale in pdf.
- **Compressione Massima** : utilizza Ghostscript riduce la risoluzione delle immagini, semplifica gli oggetti vettoriali e ottimizza i font. È  un file piccolo di bassa qualità
- **Compressione Estrema** : utilizza Ghostscript con parametri personalizzati forzando a 72 dpi le immagini, file minimo di bassissima qualità.
- **Notifiche desktop**: lo script invia una notifica al vassoio di sistema con l'esito della compressione.

## Requisiti
- Linux (testato su Linux Mint che openSUSE)
- Ghostscript (`gs`)
- `notify-send` (parte di `libnotify-bin`)
- `poppler-utils` (per `pdf2ps` e `ps2pdf`)
- `Xsane` (per scansionare le pagine da scanner o multifunzione)
- Vanno installati i driver del vostro scanner o Stampante multifunzione

### Installazione dei requisiti
#### Su distribuzioni Debian-based (ad esempio, Ubuntu e Linux Mint) oppure e fa comodo in modo grafico utilizza il gestore dei pacchetti "synaptic":
```bash
sudo apt update
sudo apt install ghostscript libnotify-bin poppler-utils xsane
```
#### Su OpenSuse
o tramite Yast o a terminale
```bash
sudo zypper install ghostscript libnotify-tools poppler-tools xsane
```
## Installazione
- Scarica il file zip
- dai i permessi di lettura e scrittura ed eseguibilità col tasto dx del mouse alla voce proprietà
- estrai il file
- entra nella cartella creata
- tasto destro all'interno della cartella
- apri il terminale
- dai i permessi al file con estensione sh (riduci-pdf.sh) usando il comando
```bash
chmod +x riduci-pdf.sh
```
- copia il file nella directory principale dell'utente
- e crea un lanciatore sul desktop

#### lanciatore su LinuxMint
- tasto destro sul desktop --> crea lanciatore
- nella finestra che si apre nella voce Tipo scegliere Applicazione nel terminale
- alla voce nome date un nome che potrebbe essere "Riduci PDF"
- in comando cliccate su sfoglia e cercate il file all'interno della directory principale, che dovresti aver copiato di nome "riduci-pdf.sh"
- e se vuoi cambiare l'icona cliccagli sopra utilizza quella che ti piace di più, se per caso ti piace quella nella directory in "/Scaricati/riduci-pdf-main" utilizza quella
#### lanciatore su OpenSuse
- tasto destro sul desktop --> crea --> collegamento applicazione
- nella finestra che si apre lingutta "Generale" si può inserire l'icona che piace, oppure utilizzare quella all'interno di "/Scaricati/riduci-pdf-main",
- Cambia la descrizione generica con "Riduci PDF" o il nome che preferisci
- Alla linguetta "Permessi" metti la spunta su "Eseguibile"
- Nella linguetta "Applicazione" ci sono molte cose da fare
- Nome : riporta il nome "Riduci PDF" o quello scelto
- Descrizione : metti una descrizione se vuoi ad esempio "Come ridurre il pdf in automatico"
- Programma : cliccate su sfoglia e cerca il file all'interno della directory principale, che dovresti aver copiato di nome "riduci-pdf.sh"
- Percorso di lavoro :  puoi inserire /home/NOME_Utente oppure cliccare sull'icona a destra "apri finestra file" e cercare lo stesso percorso.
- Infine clicca sul bottone "Opzioni avanzate" e spunta "Esegui nel terminale" e "Abilita notifica di avvio" poi dai OK
- dai "OK" una seconda volta che si chiuderà la finesta di collegamento all'applicazione.
