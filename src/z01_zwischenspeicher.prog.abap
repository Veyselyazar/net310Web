*&---------------------------------------------------------------------*
*& Report Z01_ZWISCHENSPEICHER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z01_ZWISCHENSPEICHER.
DATA clipboard   TYPE STANDARD TABLE OF char255 with EMPTY KEY.
cl_gui_frontend_services=>execute(
  EXPORTING
    application = 'cmd.exe'
    parameter   = '/C "dir c:\temp\*.* | clip"'
    minimized   = 'X' " disable cmd flash
    synchronous = 'X' " wait for cmd to finish
  EXCEPTIONS
    OTHERS      = 10 ).
cl_gui_frontend_services=>clipboard_import(
  IMPORTING
    data     = clipboard
    length   = DATA(length)
  EXCEPTIONS
    OTHERS   = 4 ).

cl_demo_output=>display_data( clipboard ).
