@AbapCatalog.sqlViewName: 'ZV_OAI_DEMO_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Core-Datat-Service Test'
define view 
zcdsv_oai_demo_01 as select from scarr as a
left outer join spfli as p on a.carrid = p.carrid

{
key a.carrid,
    a.carrname,
    a.currcode,
    a.url,
    p.connid,
    p.cityfrom,
    p.cityto,
    substring( p.fltype, 1,1 ) as short_type,
    case p.fltype
     when 'X' then 'Frachtflug'
     else 'Linienflug'
     end as long_type  
}
