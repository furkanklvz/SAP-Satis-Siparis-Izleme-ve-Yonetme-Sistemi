*----------------------------------------------------------------------*
***INCLUDE ZKLVZ_SIRS_PROG_SIPARIS_EKLF01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form SIPARIS_EKLE
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
DATA: gv_sprsno       TYPE zkvlz_siparisno_de,
      gv_musterino    TYPE zkvlz_musterino_de,
      gv_musteriad    TYPE zkvlz_musteriad_de,
      gv_musterisoyad TYPE zkvlz_musterisoyad_de,
      gv_musteritel   TYPE zkvlz_musteritel_de,
      gv_musterimail  TYPE zkvlz_musterimail_de,
      gv_sprstarih    TYPE zkvlz_siparistarih_de,
      gv_sprssaat     TYPE zkvlz_siparissaat_de,
      gv_urunno       TYPE zkvlz_urunnu_de,
      gv_urunad       TYPE zkvlz_urunad_de,
      gv_urunmiktar   TYPE zkvlz_urunmiktar_de,
      gv_urunbrmfyt   TYPE zkvlz_urunbrmfyt_de,
      gv_tutar        TYPE zkvlz_tutar_de,
      gv_vergioran    TYPE zkvlz_vergiorani_de,
      gv_vergitutar   TYPE zkvlz_vergitutari_de,
      gv_indirim      TYPE zkvlz_indirim_de,
      gv_toptutar     TYPE zkvlz_toplamtutar_de,
      gv_durum        TYPE zkvlz_siparisdurumu_de,
      gv_sehir        TYPE zkvlz_sehir_de,
      gv_ilce         TYPE zkvlz_ilce_de,
      gv_adres        TYPE zkvlz_adres_de,
      gv_odemesekli   TYPE zkvlz_odemesekli_de,
      gs_siparis      TYPE zklvz_sirs_spris,
      gt_siparis      TYPE TABLE OF zklvz_sirs_spris.


FORM siparis_ekle .

gs_siparis-siparis_no = gv_sprsno.
gs_siparis-musteri_no = gv_musterino.
gs_siparis-musteri_ad = gv_musteriad.
gs_siparis-musteri_soyad = gv_musterisoyad.
gs_siparis-musteri_tel = gv_musteritel.
gs_siparis-musteri_mail = gv_musterimail.
gs_siparis-siparis_tarih = gv_sprstarih.
gs_siparis-siparis_saat = gv_sprssaat.
gs_siparis-urun_no = gv_urunno.
gs_siparis-urun_ad = gv_urunad.
gs_siparis-urun_miktar = gv_urunmiktar.
gs_siparis-urun_birimfiyat = gv_urunbrmfyt.
gs_siparis-tutar = gv_tutar.
gs_siparis-vergi_orani = gv_vergioran.
gs_siparis-vergi_tutari = gv_vergitutar.
gs_siparis-indirim_tutari = gv_indirim.
gs_siparis-toplam_tutar = gv_toptutar.
gs_siparis-siparis_durum = gv_durum.
gs_siparis-sehir = gv_sehir.
gs_siparis-ilce = gv_ilce.
gs_siparis-adres = gv_adres.
gs_siparis-odeme_sekli = gv_odemesekli.
insert zklvz_sirs_spris from gs_siparis.
ENDFORM.