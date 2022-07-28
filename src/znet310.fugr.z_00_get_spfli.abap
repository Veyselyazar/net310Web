FUNCTION Z_00_GET_SPFLI .
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  IMPORTING
*"     VALUE(IV_CARRID) TYPE  SPFLI-CARRID
*"     VALUE(IV_CONNID) TYPE  SPFLI-CONNID
*"  EXPORTING
*"     VALUE(ES_SPFLI) TYPE  SPFLI
*"----------------------------------------------------------------------

select single * from spfli
  into es_spfli
  where carrid = iv_carrid
    and connid = iv_connid.





ENDFUNCTION.
