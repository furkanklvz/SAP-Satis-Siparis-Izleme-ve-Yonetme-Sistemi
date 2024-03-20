*----------------------------------------------------------------------*
***INCLUDE ZKLVZ_SIRS_PROG_STATUS_0111O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0111 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0111 OUTPUT.
 SET PF-STATUS 'STATUS_0111'.
 SET TITLEBAR 'TITLE_0111'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0111  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0111 INPUT.
  data pv_btntxt TYPE char20.
  CONCATENATE sy-ucomm
              'butonuna basıldı'
              INTO pv_btntxt
              SEPARATED BY space.

  CASE sy-ucomm.
    WHEN '&BACK'.
      LEAVE TO SCREEN 0110.
    when '&EKLE'.
      PERFORM siparis_ekle.
      MESSAGE pv_btntxt TYPE 'I'.
  ENDCASE.

ENDMODULE.