@EndUserText.label: 'Minimum days to delivery - Maintain'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_MinimumDaysToDelive
  as projection on ZI_MinimumDaysToDelive
{
  key ProductGroup,
  WaitPrdInDays,
  @Consumption.hidden: true
  Locallastchangedat,
  @Consumption.hidden: true
  Changedat,
  @Consumption.hidden: true
  SingletonID,
  _MinimumDaysToDelAll : redirected to parent ZC_MinimumDaysToDelive_S
  
}
