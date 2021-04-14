CLASS ycl_c_v_validate_sku DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_v_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_validation~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_c_v_validate_sku IMPLEMENTATION.


  METHOD /bobf/if_frw_validation~execute.
    DATA : lt_itab TYPE ztycretailer_sold.
    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
         et_data                 = lt_itab
         ).
    IF lt_itab IS NOT INITIAL.
      SELECT  retailerid
         FROM yretailers
        FOR ALL ENTRIES IN @lt_itab
        WHERE retailerid = @lt_itab-retailerid
        INTO TABLE @DATA(lt_retailers).
      IF sy-subrc IS INITIAL.
        SORT lt_retailers BY retailerid.
      ENDIF.
      SELECT theme
          FROM ytheme_det
        FOR ALL ENTRIES IN @lt_itab
        WHERE theme = @lt_itab-theme
        INTO TABLE @DATA(lt_theme).
      IF sy-subrc IS INITIAL.
        SORT lt_theme BY theme.
      ENDIF.
    ENDIF.
    IF eo_message IS INITIAL.
      eo_message = /bobf/cl_frw_factory=>get_message( ).
    ENDIF.
    LOOP AT lt_itab
                ASSIGNING
                      FIELD-SYMBOL(<itab>).
*** Check Retailer is valid
      READ TABLE lt_retailers
                            WITH KEY
                                 retailerid = <itab>-retailerid
                                               BINARY SEARCH
                                                 TRANSPORTING
                                                 NO FIELDS.
      CASE sy-subrc.
        WHEN 0.
** Retailer is Ok
        WHEN OTHERS.
          eo_message->add_message(
          EXPORTING
            is_msg       = VALUE #(  msgid = 'YRETAILER'
                                     msgno = '001'
                                     msgty = /bobf/cm_frw=>co_severity_error
                                     msgv1 = <itab>-retailerid )
            iv_node      = is_ctx-node_key
            iv_key       = <itab>-key
            iv_attribute = zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-retailerid
            iv_lifetime  = /bobf/cm_frw=>co_lifetime_transition
                    ).
          et_failed_key = VALUE #( BASE et_failed_key
                                   ( key = <itab>-key ) ).

      ENDCASE.
** Check Theme is Valid
      READ TABLE lt_theme
                        WITH KEY theme = <itab>-theme
                                         BINARY SEARCH
                                          TRANSPORTING
                                             NO FIELDS.
      CASE sy-subrc.
        WHEN 0.
** Theme is ok.
        WHEN OTHERS.
          eo_message->add_message(
          EXPORTING
            is_msg       = VALUE #(  msgid = 'YRETAILER'
                                     msgno = '002'
                                     msgty = /bobf/cm_frw=>co_severity_error
                                     msgv1 = <itab>-theme )
            iv_node      = is_ctx-node_key
            iv_key       = <itab>-key
            iv_attribute = zif_yc_retailer_sold_c=>sc_node_attribute-yc_retailer_sold-theme
            iv_lifetime  = /bobf/cm_frw=>co_lifetime_transition
                    ).
          et_failed_key = VALUE #( BASE et_failed_key
                                   ( key = <itab>-key ) ).
      ENDCASE.
    ENDLOOP.

    SORT et_failed_key BY key.
    DELETE ADJACENT DUPLICATES FROM et_failed_key COMPARING key.
  ENDMETHOD.
ENDCLASS.
