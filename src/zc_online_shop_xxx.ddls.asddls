@EndUserText.label: 'shop projection'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_XXX
  as projection on ZI_ONLINE_SHOP_XXX
{
  key Order_Uuid,
      Order_Id,
      Ordereditem,
      Deliverydate,
      Creationdate,
      PackageId,
      CostCenter,
      _Shop.purchasereqn as Purchasereqn
}
