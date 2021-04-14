*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 10.04.2021 at 16:08:56
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: YTHEME_DET......................................*
DATA:  BEGIN OF STATUS_YTHEME_DET                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_YTHEME_DET                    .
CONTROLS: TCTRL_YTHEME_DET
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *YTHEME_DET                    .
TABLES: YTHEME_DET                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
