*----------------------------------------------------------------------*
***INCLUDE ZKLVZ_SIRS_PROG_STATUS_0110O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0110 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*


MODULE status_0110 OUTPUT.
  SET PF-STATUS 'STATUS_0110'.
  SET TITLEBAR 'TITLE_0110'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0110  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0110 INPUT.
  CASE sy-ucomm.
    WHEN '&BACK'.
      UPDATE zklvz_sirs_user SET aktiflik_durumu = 'ÇEVRIMDIŞI' WHERE kullanici_adi = gv_usrnme.
      UPDATE zklvz_sirs_user SET son_giris_tarihi = sy-datum WHERE kullanici_adi = gv_usrnme.
      UPDATE zklvz_sirs_user SET son_giris_saati = sy-uzeit WHERE kullanici_adi = gv_usrnme.
      LEAVE TO SCREEN 0.
    WHEN '&SEKLE'.
      SET SCREEN 0111.
    WHEN '&SIZLE'.
      SET SCREEN 0112.
  ENDCASE.

ENDMODULE.