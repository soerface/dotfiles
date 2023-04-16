function scanned_pdf {
    # https://github.com/baicunko/scanyourpdf/blob/master/scanned_pdf.sh
    INPUT_FILE=$1
    convert -density 150 ${INPUT_FILE} -colorspace gray -linear-stretch 3.5%x10% -blur 0x0.5 -attenuate 0.25 +noise Gaussian  -rotate 1.0 /tmp/aux_output.pdf
    gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite -sColorConversionStrategy=LeaveColorUnchanged -dAutoFilterColorImages=true -dAutoFilterGrayImages=true -dDownsampleMonoImages=true -dDownsampleGrayImages=true -dDownsampleColorImages=true -sOutputFile=${INPUT_FILE}_scanned.pdf /tmp/aux_output.pdf
    rm /tmp/aux_output.pdf
}
