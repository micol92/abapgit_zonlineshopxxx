@EndUserText.label: 'Minimum days to delivery'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_MinimumDaysToDelive
  as select from zmindays2dlv_xxx
  association to parent ZI_MinimumDaysToDelive_S as _MinimumDaysToDelAll on $projection.SingletonID = _MinimumDaysToDelAll.SingletonID
{
  key product_group as ProductGroup,
  wait_prd_in_days as WaitPrdInDays,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat,
  @Semantics.systemDateTime.lastChangedAt: true
  changedat as Changedat,
  1 as SingletonID,
  _MinimumDaysToDelAll
  
}
