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

# Funzione per compressione maggiore (qualità media)
compressione_maggiore() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_file" "$input_file"
    echo "Compressione maggiore completata: $output_file"
    notify-send "Compressione PDF" "Compressione maggiore completata: $output_file"
}

# Funzione per compressione massima (qualità bassa)
compressione_massima() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$output_file" "$input_file"
    echo "Compressione massima completata: $output_file"
    notify-send "Compressione PDF" "Compressione massima completata: $output_file"
}

# Funzione per compressione estrema (qualità molto bassa)
compressione_estrema() {
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 \
       -dPDFSETTINGS=/screen \
       -dDownsampleColorImages=true -dColorImageResolution=72 \
       -dDownsampleGrayImages=true -dGrayImageResolution=72 \
       -dDownsampleMonoImages=true -dMonoImageResolution=72 \
       -dColorImageFilter=/DCTEncode -dGrayImageFilter=/DCTEncode \
       -dOptimize=true -dDetectDuplicateImages=true \
       -dNOPAUSE -dQUIET -dBATCH \
       -sOutputFile="$output_file" "$input_file"
    echo "Compressione estrema completata: $output_file"
    notify-send "Compressione PDF" "Compressione estrema completata: $output_file"
}

# Menu di selezione
echo "Seleziona il tipo di compressione da applicare:"
echo "1) Compressione normale"
echo "2) Compressione maggiore (qualità media) [CONSIGLIATA]"
echo "3) Compressione massima (qualità bassa)"
echo "4) Compressione estrema (qualità molto bassa)"
read -p "Scelta (1, 2, 3 o 4): " scelta

case $scelta in
    1)
        compressione_normale
        ;;
    2)
        compressione_maggiore
        ;;
    3)
        compressione_massima
        ;;
    4)
        compressione_estrema
        ;;
    *)
        echo "Scelta non valida. Uscita."
        exit 1
        ;;
esac

