@AbapCatalog.sqlViewName: 'YCRETAILERSOLD'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Items Sold per retailer'
@VDM.viewType: #CONSUMPTION

@OData.publish: true
@Metadata.allowExtensions: true

@ObjectModel.modelCategory: #BUSINESS_OBJECT
@ObjectModel.compositionRoot: true
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true
@ObjectModel.writeActivePersistence: 'yretail_sold_itm'

define view YC_RETAILER_SOLD
  as select from yretail_sold_itm
  association [1..1] to yretailers as _Retailers on $projection.retailerid = _Retailers.retailerid
  association [1..1] to ytheme_det as _Themes    on $projection.theme = _Themes.theme
{
      //YRETAIL_SOLD_ITM
  key client,
  key sale_id,
      @ObjectModel.foreignKey.association: '_Retailers'
      retailerid,
      sku,
      description,
      @ObjectModel.foreignKey.association: '_Themes'
      theme,
      @ObjectModel.readOnly: true
      created_by,
      @ObjectModel.readOnly: true
      created_on,
      @ObjectModel.readOnly: true
      created_time,
      @ObjectModel.readOnly: true
      changed_by,
      @ObjectModel.readOnly: true
      changed_on,
      @ObjectModel.readOnly: true
      changed_time,
      _Retailers,
      _Themes
}
