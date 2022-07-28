*&---------------------------------------------------------------------*
*& Report zcds_sflight_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_sflight_01.
"cl_salv_gui_table_ida=>create( 'ZSFLIGHT_01' )->fullscreen( )->display(  ).
parameters pa_car type scarr-carrid default 'AA'.
select * from zsflight_01( p_carrid = @pa_car )
  into table @data(gt_sflight).


data go_alv type REF TO cl_salv_table.
cl_salv_table=>FACTORY(
  importing
    R_SALV_TABLE   =  go_alv    " Basisklasse einfache ALV Tabellen
  changing
    T_TABLE        = gt_sflight
).

go_alv->display( ).
