*----------------------------------------------------------------------*
***INCLUDE ZKLVZ_SIRS_PROG_SPRSARAF01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form SPRSARA
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
DATA: gt_siparis_ara TYPE TABLE OF zklvz_sirs_spris,
      go_salv       TYPE REF TO cl_salv_table.
DATA: gv_sprsno_ara       TYPE zkvlz_siparisno_de,
      gv_musterino_ara    TYPE zkvlz_musterino_de,
      gv_musteriad_ara    TYPE zkvlz_musteriad_de,
      gv_musterisoyad_ara TYPE zkvlz_musterisoyad_de,
      gv_musteritel_ara   TYPE zkvlz_musteritel_de,
      gv_musterimail_ara  TYPE zkvlz_musterimail_de,
      gv_sprstarih_ara    TYPE zkvlz_siparistarih_de,
      gv_sprssaat_ara     TYPE zkvlz_siparissaat_de,
      gv_urunno_ara       TYPE zkvlz_urunnu_de,
      gv_urunad_ara       TYPE zkvlz_urunad_de,
      gv_urunmiktar_ara   TYPE zkvlz_urunmiktar_de,
      gv_urunbrmfyt_ara   TYPE zkvlz_urunbrmfyt_de,
      gv_tutar_ara        TYPE zkvlz_tutar_de,
      gv_vergioran_ara    TYPE zkvlz_vergiorani_de,
      gv_vergitutar_ara   TYPE zkvlz_vergitutari_de,
      gv_indirim_ara      TYPE zkvlz_indirim_de,
      gv_toptutar_ara     TYPE zkvlz_toplamtutar_de,
      gv_durum_ara        TYPE zkvlz_siparisdurumu_de,
      gv_sehir_ara        TYPE zkvlz_sehir_de,
      gv_ilce_ara         TYPE zkvlz_ilce_de,
      gv_adres_ara        TYPE zkvlz_adres_de,
      gv_odemesekli_ara   TYPE zkvlz_odemesekli_de.

FORM sprsara .
  PERFORM filtrele.

  cl_salv_table=>factory(
    IMPORTING
      r_salv_table   = go_salv
    CHANGING
      t_table        = gt_siparis_ara
  ).
  go_salv->display( ).

ENDFORM.
FORM filtrele .

  IF ( gv_sprsno_ara IS INITIAL  AND
  gv_musterino_ara IS INITIAL  AND
  gv_musteriad_ara IS INITIAL  AND
  gv_musterisoyad_ara IS INITIAL  AND
  gv_musteritel_ara IS INITIAL  AND
  gv_musterimail_ara IS INITIAL  AND
  gv_sprstarih_ara IS INITIAL  AND
  ( gv_sprssaat_ara IS INITIAL OR gv_sprssaat_ara EQ '00.00.00' )  AND
  gv_urunno_ara IS INITIAL  AND
  gv_urunad_ara IS INITIAL  AND
  gv_urunmiktar_ara IS INITIAL  AND
  gv_urunbrmfyt_ara IS INITIAL  AND
  gv_tutar_ara IS INITIAL  AND
  gv_vergioran_ara IS INITIAL  AND
  gv_vergitutar_ara IS INITIAL  AND
  gv_indirim_ara IS INITIAL  AND
  gv_toptutar_ara IS INITIAL  AND
  gv_durum_ara IS INITIAL  AND
  gv_sehir_ara IS INITIAL  AND
  gv_ilce_ara IS INITIAL  AND
  gv_adres_ara IS INITIAL  AND
  gv_odemesekli_ara IS INITIAL ).
    SELECT * FROM zklvz_sirs_spris INTO TABLE gt_siparis_ara.
  ELSE.
    SELECT * FROM zklvz_sirs_spris INTO TABLE gt_siparis_ara WHERE
    siparis_no EQ gv_sprsno_ara OR
    musteri_no EQ gv_musterino_ara OR
    musteri_ad EQ gv_musteriad_ara OR
    musteri_soyad EQ gv_musterisoyad_ara OR
    musteri_tel EQ gv_musteritel_ara OR
    musteri_mail EQ gv_musterimail_ara OR
    siparis_tarih EQ gv_sprstarih_ara OR
    siparis_saat EQ gv_sprssaat_ara OR
    urun_no EQ gv_urunno_ara OR
    urun_ad EQ gv_urunad_ara OR
    urun_miktar EQ gv_urunmiktar_ara OR
    urun_birimfiyat EQ gv_urunbrmfyt_ara OR
    tutar EQ gv_tutar_ara OR
    vergi_orani EQ gv_vergioran_ara OR
    vergi_tutari EQ gv_vergitutar_ara OR
    ( indirim_tutari <> '0.00' and indirim_tutari eq gv_indirim_ara ) OR
    toplam_tutar EQ gv_toptutar_ara OR
    siparis_durum EQ gv_durum_ara OR
    sehir EQ gv_sehir_ara OR
    ilce EQ gv_ilce_ara OR
    adres EQ gv_adres_ara OR
    odeme_sekli EQ gv_odemesekli_ara.
  ENDIF.



ENDFORM.