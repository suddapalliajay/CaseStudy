interface ZIF_YC_RETAILER_SOLD_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF YC_RETAILER_SOLD,
 CREATE_YC_RETAILER_SOLD        TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45CAB98',
 DELETE_YC_RETAILER_SOLD        TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45D2B98',
 LOCK_YC_RETAILER_SOLD          TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45BEB98',
 SAVE_YC_RETAILER_SOLD          TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45DAB98',
 UNLOCK_YC_RETAILER_SOLD        TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45C2B98',
 UPDATE_YC_RETAILER_SOLD        TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45CEB98',
 VALIDATE_YC_RETAILER_SOLD      TYPE /BOBF/ACT_KEY VALUE '005056941C4C1EDBA6C1665EC45D6B98',
      END OF YC_RETAILER_SOLD,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF YC_RETAILER_SOLD,
        BEGIN OF LOCK_YC_RETAILER_SOLD,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_YC_RETAILER_SOLD,
        BEGIN OF UNLOCK_YC_RETAILER_SOLD,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_YC_RETAILER_SOLD,
      END OF YC_RETAILER_SOLD,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF YC_RETAILER_SOLD,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45BCB98',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45B8B98',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45C8B98',
      END OF YC_RETAILER_SOLD,
      BEGIN OF YC_RETAILER_SOLD_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45E0B98',
      END OF YC_RETAILER_SOLD_LOCK,
      BEGIN OF YC_RETAILER_SOLD_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45DEB98',
      END OF YC_RETAILER_SOLD_MESSAGE,
      BEGIN OF YC_RETAILER_SOLD_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056941C4C1EDBA6C1665EC45E2B98',
      END OF YC_RETAILER_SOLD_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF YC_RETAILER_SOLD,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF YC_RETAILER_SOLD,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056941C4C1EDBA6C1665EC45AEB98' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'YC_RETAILER_SOLD' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF YC_RETAILER_SOLD,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056941C4C1EDBA6C1665EC45EEB98',
 CALC_FIELDS                    TYPE /BOBF/DET_KEY VALUE '005056941C4C1EDBA6C1B59D73300B98',
      END OF YC_RETAILER_SOLD,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 YC_RETAILER_SOLD               TYPE /BOBF/OBM_GROUP_KEY VALUE '005056941C4C1EDBA6C1A89E49DA8B98',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 YC_RETAILER_SOLD               TYPE /BOBF/OBM_NODE_KEY VALUE '005056941C4C1EDBA6C1665EC45B2B98',
 YC_RETAILER_SOLD_LOCK          TYPE /BOBF/OBM_NODE_KEY VALUE '005056941C4C1EDBA6C1665EC45BAB98',
 YC_RETAILER_SOLD_MESSAGE       TYPE /BOBF/OBM_NODE_KEY VALUE '005056941C4C1EDBA6C1665EC45B6B98',
 YC_RETAILER_SOLD_PROPERTY      TYPE /BOBF/OBM_NODE_KEY VALUE '005056941C4C1EDBA6C1665EC45C6B98',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF YC_RETAILER_SOLD,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  RETAILERID                     TYPE STRING VALUE 'RETAILERID',
  SKU                            TYPE STRING VALUE 'SKU',
  DESCRIPTION                    TYPE STRING VALUE 'DESCRIPTION',
  THEME                          TYPE STRING VALUE 'THEME',
  CREATED_BY                     TYPE STRING VALUE 'CREATED_BY',
  CREATED_ON                     TYPE STRING VALUE 'CREATED_ON',
  CREATED_TIME                   TYPE STRING VALUE 'CREATED_TIME',
  CHANGED_BY                     TYPE STRING VALUE 'CHANGED_BY',
  CHANGED_ON                     TYPE STRING VALUE 'CHANGED_ON',
  CHANGED_TIME                   TYPE STRING VALUE 'CHANGED_TIME',
      END OF YC_RETAILER_SOLD,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF YC_RETAILER_SOLD,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056941C4C1EDBA6C1665EC45B4B98',
      END OF YC_RETAILER_SOLD,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF YC_RETAILER_SOLD,
 VALIDATE_SKU                   TYPE /BOBF/VAL_KEY VALUE '005056941C4C1EDBA6C1A89E49DA2B98',
      END OF YC_RETAILER_SOLD,
    END OF SC_VALIDATION .
endinterface.