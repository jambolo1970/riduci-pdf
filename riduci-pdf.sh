#!/bin/bash

# Ottenere la data e l'ora attuali
data_ora=$(date +"%Y-%m-%d_%H-%M-%S")

# Nome del file di input e del file di output
input_file="multipageproject.pdf"
output_file="multiproject_${data_ora}.pdf"

# Funzione per compressione normale
compressione_normale() {
    pdf2ps "$input_file" zzz.ps
    ps2pdf zzz.ps "$output_file"
    rm zzz.ps
    echo "Compressione normale completata: $output_file"
    notify-send "Compressione PDF" "Compressione normale completata: $output_file"
}

# Funzione per compressione maggiore
compressione_maggiore() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_file" "$input_file"
    echo "Compressione maggiore completata: $output_file"
    notify-send "Compressione PDF" "Compressione maggiore completata: $output_file"
}

# Menu di selezione
echo "Seleziona il tipo di compressione da applicare:"
echo "1) Compressione normale"
echo "2) Compressione maggiore"
read -p "Scelta (1 o 2): " scelta

case $scelta in
    1)
        compressione_normale
        ;;
    2)
        compressione_maggiore
        ;;
    *)
        echo "Scelta non valida. Uscita."
        exit 1
        ;;
esac

