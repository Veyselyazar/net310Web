@AbapCatalog.sqlViewName: 'ZSFLIGHT_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Selektion aus der Tabelle Sflight'
define view zsflight_anzeigen_01 
with parameters p_carrid:abap.char( 3 )
as select from sflight as f
 {
  key f.carrid,
  key f.connid,
  key f.fldate, 
  substring( f.fldate, 1, 4 ) as jahr,

      f.planetype,
      f.seatsocc,
      f.seatsmax
      
}
where carrid = $parameters.p_carrid
