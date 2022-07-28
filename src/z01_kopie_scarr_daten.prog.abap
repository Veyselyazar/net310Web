*&---------------------------------------------------------------------*
*& Report Z01_KOPIE_SCARR_DATEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_KOPIE_SCARR_DATEN.

*data gt_target type TABLE OF zscarr_01.
*select * from scarr into CORRESPONDING FIELDS OF table gt_target.
*
*insert zscarr_01 from TABLE gt_target .
*write: 'Anzahl der Inserts in neue Tabelle', sy-dbcnt.

data gs_scarr type zscarr_01.
select * from scarr into CORRESPONDING FIELDS OF gs_scarr.
  insert zscarr_01 from gs_scarr.
ENDSELECT.
write: 'Anzahl eingefügter Datensätze', sy-dbcnt.
