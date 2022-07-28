*&---------------------------------------------------------------------*
*& Report Z01_DEMO_ABAP_EREIGNISSE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_DEMO_ABAP_EREIGNISSE.

PARAMETERS pa_zahl type i DEFAULT 5.
data gv_carrid.

START-OF-SELECTION.
write pa_zahl.


*LOAD-OF-PROGRAM. "1
*get PARAMETER ID 'CAR' FIELD gv_carrid.


INITIALIZATION. "2.
 pa_zahl = 12.

 at SELECTION-SCREEN output. "3
   pa_zahl = pa_zahl + 1.


at SELECTION-SCREEN. "4
  if pa_zahl > 20.
    message 'Zahl zu groß' type 'W'.
  endif.
