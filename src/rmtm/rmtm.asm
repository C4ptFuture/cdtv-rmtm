           ************************************************************************
           ***                                                                  ***
           ***                      -= CDTV LAND TOOLKIT =-                     ***
           ***                                                                  ***
           ************************************************************************
           ***                                                                  ***
           ***     RmTM - Takes down CDTV trademark screen                      ***
           ***     Copyright (c) 2025 CDTV Land. Published under GPLv3.         ***
           ***     Written by Captain Future                                    ***
           ***                                                                  ***
           ************************************************************************


  INCLUDE      exec/exec_lib.i
  INCLUDE      cdtv/playerprefs_func.i 
  INCLUDE      rev.i
  INCLUDE      defs.i


  SECTION      CODE

  bra.s        Start
  
  COPYRIGHT
  VSTRING

;************************************************************************************************
;*                                             RMTM                                             *
;************************************************************************************************


Start:

  ; Open playerprefs.library

  movem.l      a5-a6,-(sp)                ; save regs
  movea.l      4.w,a6                     ; load execbase
  clr.l        d0                         ; param any version
  lea.l        ppLibName(pc),a1           ; param lib name
  jsr          _LVOOpenLibrary(a6)        ; open pplib
  move.l       d0,a5                      ; save ppbase
  beq.s        .done                      ; if failed to open, bail

  ; Take down CDTV trade mark screen

  movea.l      a5,a6                      ; load ppbase
  jsr          _LVOFreeTM(a6)             ; remove tm screen

  ; Close playerprefs.library

  movea.l      a5,a1                      ; param ppbase
  movea.l      4.w,a6                     ; load execbase
  jsr          _LVOCloseLibrary(a6)       ; close pplib

  ; We're done

.done
  movem.l      (sp)+,a5-a6                ; restore regs
  rts


;************************************************************************************************
;*                                             DATA                                             *
;************************************************************************************************

ppLibName:
  dc.b         'playerprefs.library',0

  END