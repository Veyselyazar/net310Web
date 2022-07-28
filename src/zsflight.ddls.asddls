@AbapCatalog.sqlViewName: 'ZCDS_SFLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sflight in ALV darstellen'
define view ZSflight 
//with parameters p_carrid:abap.char( 3 )
as select from sflight as f 
{
 key f.carrid,
 key f.connid,
 key f.fldate,
     f.seatsmax,
 //    sum( f.seatsmax ) as sum_max,
     f.seatsocc
 //    sum( f.seatsocc ) as sum_occ
}
//where carrid = $parameters.p_carrid
