;
; File generated by cc65 v 2.19 - Git c3d7a90
;
	.fopt		compiler,"cc65 v 2.19 - Git c3d7a90"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "pads.c", 2075, 1643170137
	.dbg		file, "lib/neslib.h", 9271, 1642938971
	.dbg		file, "lib/nesdoug.h", 6862, 1642938971
	.dbg		file, "sprites.h", 592, 1643169993
	.dbg		file, "lungs.h", 586, 1642942743
	.dbg		file, "math.h", 187, 1643086901
	.forceimport	__STARTUP__
	.dbg		sym, "pal_bg", "00", extern, "_pal_bg"
	.dbg		sym, "pal_spr", "00", extern, "_pal_spr"
	.dbg		sym, "ppu_wait_nmi", "00", extern, "_ppu_wait_nmi"
	.dbg		sym, "ppu_off", "00", extern, "_ppu_off"
	.dbg		sym, "ppu_on_all", "00", extern, "_ppu_on_all"
	.dbg		sym, "oam_clear", "00", extern, "_oam_clear"
	.dbg		sym, "oam_meta_spr", "00", extern, "_oam_meta_spr"
	.dbg		sym, "bank_spr", "00", extern, "_bank_spr"
	.dbg		sym, "vram_adr", "00", extern, "_vram_adr"
	.dbg		sym, "vram_unrle", "00", extern, "_vram_unrle"
	.dbg		sym, "get_frame_count", "00", extern, "_get_frame_count"
	.dbg		sym, "virusPath", "00", extern, "_virusPath"
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
	.export		_virus0
	.export		_virus1
	.export		_virus2
	.export		_virus3
	.export		_lungs
	.import		_virusPath
	.export		_dbg1
	.export		_dbg2
	.export		_dbg3
	.export		_paletteBackground
	.export		_paletteSprite
	.export		_zeroCoordinates
	.export		_fortyCoordinates
	.export		_virusCoordinates
	.export		_initialVirusCoordinates
	.export		_draw_sprites
	.export		_movement
	.export		_main

.segment	"DATA"

_dbg1:
	.word	$0080
_dbg2:
	.word	$0081
_dbg3:
	.word	$0082
_zeroCoordinates:
	.word	$0000
	.word	$0000
_fortyCoordinates:
	.word	$0028
	.word	$0028

.segment	"RODATA"

_virus0:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$80
_virus1:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$80
_virus2:
	.byte	$00
	.byte	$00
	.byte	$20
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$21
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$30
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$31
	.byte	$00
	.byte	$80
_virus3:
	.byte	$00
	.byte	$00
	.byte	$40
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$41
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$51
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

.segment	"BSS"

_virusCoordinates:
	.res	2,$00
_initialVirusCoordinates:
	.res	2,$00

; ---------------------------------------------------------------
; void __near__ draw_sprites (struct $anon-struct-0001 *virusCoordinates, const unsigned char *virusSprite)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

	.dbg	func, "draw_sprites", "00", extern, "_draw_sprites"
	.dbg	sym, "virusCoordinates", "00", auto, 2
	.dbg	sym, "virusSprite", "00", auto, 0

.segment	"CODE"

;
; void draw_sprites(Coordinates *virusCoordinates, const unsigned char *virusSprite) {
;
	.dbg	line, "pads.c", 38
	jsr     pushax
;
; oam_clear();
;
	.dbg	line, "pads.c", 39
	jsr     _oam_clear
;
; oam_meta_spr(virusCoordinates->x, virusCoordinates->y, virusSprite);
;
	.dbg	line, "pads.c", 40
	jsr     decsp2
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$00
	lda     (ptr1),y
	iny
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$02
	lda     (ptr1),y
	ldy     #$00
	sta     (sp),y
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _oam_meta_spr
;
; }
;
	.dbg	line, "pads.c", 41
	jmp     incsp4

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ movement (struct $anon-struct-0001 *virusCoordinates, struct $anon-struct-0001 *initialVirusCoordinates, const struct $anon-struct-0001 *virusPath)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_movement: near

	.dbg	func, "movement", "00", extern, "_movement"
	.dbg	sym, "virusCoordinates", "00", auto, 4
	.dbg	sym, "initialVirusCoordinates", "00", auto, 2
	.dbg	sym, "virusPath", "00", auto, 0

.segment	"CODE"

;
; void movement(Coordinates *virusCoordinates, Coordinates *initialVirusCoordinates, const Coordinates *virusPath) {
;
	.dbg	line, "pads.c", 43
	jsr     pushax
;
; virusCoordinates->x = initialVirusCoordinates->x + virusPath[get_frame_count()].x;
;
	.dbg	line, "pads.c", 44
	ldy     #$07
	jsr     pushwysp
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$07
	jsr     pushwysp
	jsr     _get_frame_count
	jsr     aslax2
	jsr     tosaddax
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     tosaddax
	ldy     #$00
	jsr     staxspidx
;
; virusCoordinates->y = initialVirusCoordinates->y + virusPath[get_frame_count()].y;
;
	.dbg	line, "pads.c", 45
	ldy     #$07
	jsr     pushwysp
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$07
	jsr     pushwysp
	jsr     _get_frame_count
	jsr     aslax2
	jsr     tosaddax
	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     tosaddax
	ldy     #$02
	jsr     staxspidx
;
; }
;
	.dbg	line, "pads.c", 46
	jmp     incsp6

	.dbg	line
.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"

.segment	"CODE"

;
; ppu_off(); // screen off
;
	.dbg	line, "pads.c", 52
	jsr     _ppu_off
;
; pal_bg(paletteBackground);
;
	.dbg	line, "pads.c", 55
	lda     #<(_paletteBackground)
	ldx     #>(_paletteBackground)
	jsr     _pal_bg
;
; pal_spr(paletteSprite);
;
	.dbg	line, "pads.c", 56
	lda     #<(_paletteSprite)
	ldx     #>(_paletteSprite)
	jsr     _pal_spr
;
; bank_spr(1);
;
	.dbg	line, "pads.c", 60
	lda     #$01
	jsr     _bank_spr
;
; vram_adr(NAMETABLE_A);
;
	.dbg	line, "pads.c", 62
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_unrle(lungs);
;
	.dbg	line, "pads.c", 64
	lda     #<(_lungs)
	ldx     #>(_lungs)
	jsr     _vram_unrle
;
; ppu_on_all();
;
	.dbg	line, "pads.c", 67
	jsr     _ppu_on_all
;
; virusCoordinates = &zeroCoordinates;
;
	.dbg	line, "pads.c", 68
	lda     #>(_zeroCoordinates)
	sta     _virusCoordinates+1
	lda     #<(_zeroCoordinates)
	sta     _virusCoordinates
;
; initialVirusCoordinates = &fortyCoordinates;
;
	.dbg	line, "pads.c", 69
	lda     #>(_fortyCoordinates)
	sta     _initialVirusCoordinates+1
	lda     #<(_fortyCoordinates)
	sta     _initialVirusCoordinates
;
; movement(virusCoordinates, initialVirusCoordinates, virusPath);
;
	.dbg	line, "pads.c", 73
L0002:	jsr     decsp4
	lda     _virusCoordinates
	ldy     #$02
	sta     (sp),y
	iny
	lda     _virusCoordinates+1
	sta     (sp),y
	lda     _initialVirusCoordinates
	ldy     #$00
	sta     (sp),y
	iny
	lda     _initialVirusCoordinates+1
	sta     (sp),y
	lda     #<(_virusPath)
	ldx     #>(_virusPath)
	jsr     _movement
;
; draw_sprites(virusCoordinates, virus0);
;
	.dbg	line, "pads.c", 74
	lda     _virusCoordinates
	ldx     _virusCoordinates+1
	jsr     pushax
	lda     #<(_virus0)
	ldx     #>(_virus0)
	jsr     _draw_sprites
;
; ppu_wait_nmi();
;
	.dbg	line, "pads.c", 75
	jsr     _ppu_wait_nmi
;
; while (1) {
;
	.dbg	line, "pads.c", 72
	jmp     L0002

	.dbg	line
.endproc

