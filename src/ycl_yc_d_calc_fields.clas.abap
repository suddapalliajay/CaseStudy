CLASS ycl_yc_d_calc_fields DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_d_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_determination~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS YCL_YC_D_CALC_FIELDS IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.
    DATA : lt_itab TYPE ztycretailer_sold.
    io_read->retrieve(
 EXPORTING
   iv_node                 =  is_ctx-node_key
   it_key                  =  it_key
   IMPORTING
   et_data                 = lt_itab
).
    LOOP AT lt_itab
                REFERENCE INTO
                DATA(lr_data).
      IF lr_data->created_by IS INITIAL.
        lr_data->created_by = sy-uname.
        lr_data->created_on = sy-datlo.
        lr_data->created_time = sy-uzeit.
      ELSE.
        lr_data->changed_by = sy-uname.
        lr_data->changed_on = sy-datlo.
        lr_data->changed_time = sy-uzeit.
      ENDIF.
      io_modify->update(
      EXPORTING
        iv_node           = is_ctx-node_key
        iv_key            = lr_data->key
*        iv_root_key       =
        is_data           = lr_data
        it_changed_fields = VALUE #( (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-created_by )
                                     (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-created_on )
                                     (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-created_time )
                                     (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-changed_by )
                                     (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-changed_on )
                                     (  zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-changed_time )
                                              ) ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
