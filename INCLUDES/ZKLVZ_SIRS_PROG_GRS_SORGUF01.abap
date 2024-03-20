*----------------------------------------------------------------------*
***INCLUDE ZKLVZ_SIRS_PROG_GRS_SORGUF01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form GRS_SORGU
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*


DATA: gv_usrad    TYPE zklvz_useruname_de,
      gv_usrsifre TYPE zklvz_usersifre_de,
      gs_user_t   TYPE zklvz_sirs_user,
      gt_user_t   TYPE TABLE OF zklvz_sirs_user.



FORM grs_sorgu USING p_usrad
                     p_sifre.
  SELECT * FROM zklvz_sirs_user INTO TABLE gt_user_t.
  SELECT SINGLE * FROM zklvz_sirs_user INTO gs_user_t.
  SELECT SINGLE kullanici_adi FROM zklvz_sirs_user INTO gv_usrad.
  SELECT SINGLE sifre FROM zklvz_sirs_user INTO gv_usrsifre.

  SELECT SINGLE * FROM zklvz_sirs_user INTO gs_user_t WHERE
    kullanici_adi = p_usrad AND sifre = p_sifre.
  IF sy-subrc EQ 0.
    MESSAGE 'Giriş Başarılı' TYPE 'I'.
    UPDATE zklvz_sirs_user set aktiflik_durumu = 'ÇEVRIMIÇI' WHERE kullanici_adi = p_usrad.
    SET SCREEN 0110.
  ELSE.
    MESSAGE 'Kullanıcı Bulunamadı' TYPE 'I'.
  ENDIF.



ENDFORM.