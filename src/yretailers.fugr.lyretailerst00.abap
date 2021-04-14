*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 10.04.2021 at 16:03:41
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: YRETAILERS......................................*
DATA:  BEGIN OF STATUS_YRETAILERS                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_YRETAILERS                    .
CONTROLS: TCTRL_YRETAILERS
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *YRETAILERS                    .
TABLES: YRETAILERS                     .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
