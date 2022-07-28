*&---------------------------------------------------------------------*
*& Report zcds_view_demo
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_view_demo.
*cl_salv_gui_table_ida=>create( 'ZV_OAI_DEMO_01' )->fullscreen( )->display( ).
*cl_salv_gui_table_ida=>create(
* 'ZCDS_SFLIGHT' )->fullscreen( )->display( ).

select * from zcds_sflight
into table @data(lt_table).

cl_salv_table=>FACTORY(
  importing
   R_SALV_TABLE   = data(go_alv)    " Basisklasse einfache ALV Tabellen
  changing
    T_TABLE        = lt_table
).
go_alv->display(   ).
