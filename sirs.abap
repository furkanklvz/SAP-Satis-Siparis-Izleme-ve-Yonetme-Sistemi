*&---------------------------------------------------------------------*
*& Report ZKLVZ_SIRS_PROG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT zklvz_sirs_prog.
DATA: gv_usrnme TYPE char25,
      gv_pswrd  TYPE char25.

CALL SCREEN 0100.
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS_0100'.
  SET TITLEBAR 'TITLE_0100'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  DATA gv_txt TYPE char100.
  CONCATENATE sy-ucomm
              'butonuna basılmıştır'
              INTO gv_txt
              SEPARATED BY space.
  CASE sy-ucomm.
    WHEN '&BACK'.
      MESSAGE gv_txt TYPE 'I'.
      LEAVE TO SCREEN 0.
    WHEN '&GRS'.
      MESSAGE gv_txt TYPE 'I'.
      PERFORM grs_sorgu USING gv_usrnme
                              gv_pswrd.
    WHEN OTHERS.
  ENDCASE.

ENDMODULE.

INCLUDE zklvz_sirs_prog_grs_sorguf01.

INCLUDE zklvz_sirs_prog_status_0110o01.

INCLUDE zklvz_sirs_prog_status_0111o01.

INCLUDE zklvz_sirs_prog_siparis_eklf01.

INCLUDE zklvz_sirs_prog_status_0112o01.