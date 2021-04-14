class YCL_YC_RETAILER_SOLD definition
  public
  inheriting from CL_SADL_GTK_EXPOSURE_MPC
  final
  create public .

public section.
protected section.

  methods GET_PATHS
    redefinition .
  methods GET_TIMESTAMP
    redefinition .
private section.
ENDCLASS.



CLASS YCL_YC_RETAILER_SOLD IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~YC_RETAILER_SOLD| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20210410144155.
  endmethod.
ENDCLASS.
