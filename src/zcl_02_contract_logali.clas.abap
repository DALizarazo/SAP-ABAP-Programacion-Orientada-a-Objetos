CLASS zcl_02_contract_logali DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-DATA currency TYPE c LENGTH 3.

    METHODS set_client IMPORTING iv_client   TYPE string
                                 iv_location TYPE string
                       EXPORTING ev_status   TYPE string
                       CHANGING  cv_process  TYPE string.

    METHODS get_client EXPORTING ev_client TYPE string.

    CLASS-METHODS set_cntr_type IMPORTING iv_cntr_type TYPE string.
    CLASS-METHODS get_cntr_type EXPORTING ev_cntr_type TYPE string.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.

    CLASS-DATA cntr_type TYPE string.

ENDCLASS.


CLASS zcl_02_contract_logali IMPLEMENTATION.
  METHOD set_client.
    " TODO: parameter IV_LOCATION is never used (ABAP cleaner)
    " TODO: parameter EV_STATUS is never cleared or assigned (ABAP cleaner)
    " TODO: parameter CV_PROCESS is never used or assigned (ABAP cleaner)

    client = iv_client.
  ENDMETHOD.

  METHOD get_client.
    ev_client = client.
  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.
ENDCLASS.




