(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("tikzposter" "25pt" "a0paper" "portrait" "svgnames" "blockverticalspace=0.3cm")))
   (TeX-run-style-hooks
    "latex2e"
    "lstcoq"
    "tikzposter"
    "tikzposter10"
    "xcolor"
    "graphicx"
    "listings"
    "listingsutf8"
    "verbatim"
    "fancyvrb"
    "amsmath"
    "amsfonts"
    "amsthm"
    "bm"
    "CedilleVerbatim"
    "url")
   (TeX-add-symbols
    '("printfootnote" 1)
    '("inlinecoq" 1)
    "thempfootnote"))
 :latex)

