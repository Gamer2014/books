*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda $0334
        clc
        adc #$37
        sta $0334
        rts
        