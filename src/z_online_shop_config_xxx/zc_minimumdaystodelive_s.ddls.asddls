@EndUserText.label: 'Minimum days to delivery Singleton - Mai'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_MinimumDaysToDelive_S
  provider contract transactional_query
  as projection on ZI_MinimumDaysToDelive_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _MinimumDaysToDelive : redirected to composition child ZC_MinimumDaysToDelive
  
}
