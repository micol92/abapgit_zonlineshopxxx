@EndUserText.label: 'Minimum days to delivery Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_MinimumDaysToDelive_S
  as select from I_Language
    left outer join ZMINDAYS2DLV_XXX on 0 = 0
  composition [0..*] of ZI_MinimumDaysToDelive as _MinimumDaysToDelive
{
  key 1 as SingletonID,
  _MinimumDaysToDelive,
  max( ZMINDAYS2DLV_XXX.CHANGEDAT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
