# riduci-pdf
Uno script Bash per comprimere file PDF utilizzando `pdf2ps`, `ps2pdf` e Ghostscript (`gs`).  Permette all'utente di scegliere tra due livelli di compressione: normale o maggiore, con notifiche al termine del processo.
I due tipi di compressione possono essere utili se si vuole ridurre in un file molto contenuto a livello di byte, ed occupare meno memoria in invio di eMail.
## PDF Tool di compressione dei file
si appoggia al programma Xsane che deve essere installato sulla macchina in uso, il file generato Multiprogetto in caso di più pagine si consiglia di non modificare mai il suo nome, in quanto questo script cerchera solo questo file `multipageproject.pdf` che poi trasformerà a seconda delle necessita in due tipi di compressione, ho deciso di fare questo script in quanto OpenSuse da già con un doppio passaggio la compressione normale ma avevo necessità di una compressione maggiore, proprio per poter spedire i file meno pesanti via eMail.

## Funzionalità
- **Compressione normale**: utilizza `pdf2ps` e `ps2pdf` per ridurre la dimensione del file PDF.
- **Compressione maggiore**: utilizza Ghostscript con impostazioni avanzate per una compressione più aggressiva.
- **Notifiche desktop**: lo script invia una notifica al vassoio di sistema con l'esito della compressione.

## Requisiti
- Linux (testato su Linux Mint e openSUSE)
- Ghostscript (`gs`)
- `notify-send` (parte di `libnotify-bin`)
- `poppler-utils` (per `pdf2ps` e `ps2pdf`)
- `Xsane` (per scansionare le pagine da scanner o multifunzione)
- Vanno installati i driver del vostro scanner o Stampante multifunzione

### Installazione dei requisiti
#### Su distribuzioni Debian-based (ad esempio, Ubuntu e Linux Mint):
```bash
sudo apt update
sudo apt install ghostscript libnotify-bin poppler-utils
```
#### Su OpenSuse
o tramite Yast o a terminale
```bash
sudo zypper install ghostscript libnotify-tools poppler-tools
```

