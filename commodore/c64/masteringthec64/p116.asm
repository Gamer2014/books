; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        lda #$08
        ldx #$00
        sta $D800,x
        inx
        cpx #$28
        bne $1C04
        rts