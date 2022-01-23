;
; File generated by cc65 v 2.19 - Git c3d7a90
;
	.fopt		compiler,"cc65 v 2.19 - Git c3d7a90"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_pal_spr
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_meta_spr
	.import		_bank_spr
	.import		_vram_adr
	.import		_vram_unrle
	.import		_get_frame_count
	.export		_virus
	.export		_lungs
	.import		_sin
	.import		_cos
	.export		_virusCoordinates
	.export		_dbg1
	.export		_dbg2
	.export		_dbg3
	.export		_paletteBackground
	.export		_paletteSprite
	.export		_draw_sprites
	.export		_movement
	.export		_main

.segment	"DATA"

_virusCoordinates:
	.byte	$14
	.byte	$14
_dbg1:
	.word	$0080
_dbg2:
	.word	$0081
_dbg3:
	.word	$0082

.segment	"RODATA"

_virus:
	.byte	$00
	.byte	$00
	.byte	$80
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$81
	.byte	$00
	.byte	$10
	.byte	$00
	.byte	$82
	.byte	$00
	.byte	$18
	.byte	$00
	.byte	$83
	.byte	$00
	.byte	$20
	.byte	$00
	.byte	$84
	.byte	$00
	.byte	$28
	.byte	$00
	.byte	$86
	.byte	$00
	.byte	$28
	.byte	$00
	.byte	$85
	.byte	$00
	.byte	$30
	.byte	$00
	.byte	$87
	.byte	$00
	.byte	$38
	.byte	$00
	.byte	$87
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$90
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$91
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$92
	.byte	$00
	.byte	$18
	.byte	$08
	.byte	$93
	.byte	$00
	.byte	$20
	.byte	$08
	.byte	$94
	.byte	$00
	.byte	$28
	.byte	$08
	.byte	$95
	.byte	$00
	.byte	$30
	.byte	$08
	.byte	$96
	.byte	$00
	.byte	$38
	.byte	$08
	.byte	$97
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$A0
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$A1
	.byte	$00
	.byte	$10
	.byte	$10
	.byte	$A2
	.byte	$00
	.byte	$18
	.byte	$10
	.byte	$A3
	.byte	$00
	.byte	$20
	.byte	$10
	.byte	$A4
	.byte	$00
	.byte	$28
	.byte	$10
	.byte	$A5
	.byte	$00
	.byte	$30
	.byte	$10
	.byte	$A6
	.byte	$00
	.byte	$38
	.byte	$10
	.byte	$A7
	.byte	$00
	.byte	$00
	.byte	$18
	.byte	$B0
	.byte	$00
	.byte	$08
	.byte	$18
	.byte	$B1
	.byte	$00
	.byte	$10
	.byte	$18
	.byte	$B2
	.byte	$00
	.byte	$18
	.byte	$18
	.byte	$B3
	.byte	$00
	.byte	$20
	.byte	$18
	.byte	$B4
	.byte	$00
	.byte	$28
	.byte	$18
	.byte	$B5
	.byte	$00
	.byte	$30
	.byte	$18
	.byte	$B6
	.byte	$00
	.byte	$38
	.byte	$18
	.byte	$B7
	.byte	$00
	.byte	$00
	.byte	$20
	.byte	$C0
	.byte	$00
	.byte	$08
	.byte	$20
	.byte	$C1
	.byte	$00
	.byte	$10
	.byte	$20
	.byte	$C2
	.byte	$00
	.byte	$18
	.byte	$20
	.byte	$C3
	.byte	$00
	.byte	$20
	.byte	$20
	.byte	$C4
	.byte	$00
	.byte	$28
	.byte	$20
	.byte	$C5
	.byte	$00
	.byte	$30
	.byte	$20
	.byte	$C6
	.byte	$00
	.byte	$38
	.byte	$20
	.byte	$C7
	.byte	$00
	.byte	$00
	.byte	$28
	.byte	$D0
	.byte	$00
	.byte	$08
	.byte	$28
	.byte	$D1
	.byte	$00
	.byte	$10
	.byte	$28
	.byte	$D2
	.byte	$00
	.byte	$18
	.byte	$28
	.byte	$D3
	.byte	$00
	.byte	$20
	.byte	$28
	.byte	$D4
	.byte	$00
	.byte	$28
	.byte	$28
	.byte	$D5
	.byte	$00
	.byte	$30
	.byte	$28
	.byte	$D6
	.byte	$00
	.byte	$38
	.byte	$28
	.byte	$D7
	.byte	$00
	.byte	$00
	.byte	$30
	.byte	$E0
	.byte	$00
	.byte	$08
	.byte	$30
	.byte	$E1
	.byte	$00
	.byte	$10
	.byte	$30
	.byte	$E2
	.byte	$00
	.byte	$18
	.byte	$30
	.byte	$E3
	.byte	$00
	.byte	$20
	.byte	$30
	.byte	$E4
	.byte	$00
	.byte	$28
	.byte	$30
	.byte	$E5
	.byte	$00
	.byte	$30
	.byte	$30
	.byte	$E6
	.byte	$00
	.byte	$38
	.byte	$30
	.byte	$E7
	.byte	$00
	.byte	$08
	.byte	$40
	.byte	$F0
	.byte	$00
	.byte	$08
	.byte	$38
	.byte	$F1
	.byte	$00
	.byte	$10
	.byte	$38
	.byte	$F2
	.byte	$00
	.byte	$18
	.byte	$38
	.byte	$F3
	.byte	$00
	.byte	$20
	.byte	$38
	.byte	$F4
	.byte	$00
	.byte	$28
	.byte	$38
	.byte	$F5
	.byte	$00
	.byte	$80
_lungs:
	.byte	$01
	.byte	$00
	.byte	$01
	.byte	$FE
	.byte	$00
	.byte	$01
	.byte	$4C
	.byte	$80
	.byte	$81
	.byte	$82
	.byte	$83
	.byte	$84
	.byte	$85
	.byte	$86
	.byte	$87
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$90
	.byte	$91
	.byte	$92
	.byte	$93
	.byte	$94
	.byte	$95
	.byte	$96
	.byte	$97
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$A0
	.byte	$A1
	.byte	$A2
	.byte	$A3
	.byte	$A4
	.byte	$A5
	.byte	$A6
	.byte	$A7
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$B0
	.byte	$B1
	.byte	$B2
	.byte	$B3
	.byte	$B4
	.byte	$B5
	.byte	$B6
	.byte	$B7
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$C0
	.byte	$C1
	.byte	$C2
	.byte	$C3
	.byte	$C4
	.byte	$C5
	.byte	$C6
	.byte	$C7
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$D0
	.byte	$D1
	.byte	$D2
	.byte	$D3
	.byte	$D4
	.byte	$D5
	.byte	$D6
	.byte	$D7
	.byte	$00
	.byte	$01
	.byte	$17
	.byte	$E0
	.byte	$E1
	.byte	$E2
	.byte	$E3
	.byte	$E4
	.byte	$E5
	.byte	$E6
	.byte	$E7
	.byte	$00
	.byte	$01
	.byte	$FE
	.byte	$00
	.byte	$01
	.byte	$BD
	.byte	$A0
	.byte	$01
	.byte	$03
	.byte	$20
	.byte	$00
	.byte	$01
	.byte	$04
	.byte	$AA
	.byte	$AA
	.byte	$00
	.byte	$01
	.byte	$05
	.byte	$0A
	.byte	$0A
	.byte	$00
	.byte	$01
	.byte	$19
	.byte	$00
	.byte	$01
	.byte	$00
_paletteBackground:
	.byte	$0F
	.byte	$06
	.byte	$16
	.byte	$26
	.byte	$0F
	.byte	$06
	.byte	$16
	.byte	$26
	.byte	$0F
	.byte	$06
	.byte	$16
	.byte	$26
	.byte	$0F
	.byte	$06
	.byte	$16
	.byte	$26
_paletteSprite:
	.byte	$0F
	.byte	$3D
	.byte	$30
	.byte	$05
	.byte	$0F
	.byte	$3D
	.byte	$30
	.byte	$05
	.byte	$0F
	.byte	$3D
	.byte	$30
	.byte	$05
	.byte	$0F
	.byte	$3D
	.byte	$30
	.byte	$05

; ---------------------------------------------------------------
; void __near__ draw_sprites (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

.segment	"CODE"

;
; oam_clear();
;
	jsr     _oam_clear
;
; oam_meta_spr(virusCoordinates.x, virusCoordinates.y, virus);
;
	jsr     decsp2
	lda     _virusCoordinates
	ldy     #$01
	sta     (sp),y
	lda     _virusCoordinates+1
	dey
	sta     (sp),y
	lda     #<(_virus)
	ldx     #>(_virus)
	jmp     _oam_meta_spr

.endproc

; ---------------------------------------------------------------
; void __near__ movement (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_movement: near

.segment	"CODE"

;
; virusCoordinates.x = 20 + sin(get_frame_count()/32);
;
	jsr     _get_frame_count
	jsr     shrax4
	jsr     shrax1
	jsr     _sin
	clc
	adc     #$14
	sta     _virusCoordinates
;
; virusCoordinates.y = 20 + cos(get_frame_count()/32);
;
	jsr     _get_frame_count
	jsr     shrax4
	jsr     shrax1
	jsr     _cos
	clc
	adc     #$14
	sta     _virusCoordinates+1
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(paletteBackground);
;
	lda     #<(_paletteBackground)
	ldx     #>(_paletteBackground)
	jsr     _pal_bg
;
; pal_spr(paletteSprite);
;
	lda     #<(_paletteSprite)
	ldx     #>(_paletteSprite)
	jsr     _pal_spr
;
; bank_spr(1);
;
	lda     #$01
	jsr     _bank_spr
;
; vram_adr(NAMETABLE_A);
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_unrle(lungs);
;
	lda     #<(_lungs)
	ldx     #>(_lungs)
	jsr     _vram_unrle
;
; ppu_on_all();
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi();
;
L0002:	jsr     _ppu_wait_nmi
;
; movement();
;
	jsr     _movement
;
; draw_sprites();
;
	jsr     _draw_sprites
;
; while (1) {
;
	jmp     L0002

.endproc

