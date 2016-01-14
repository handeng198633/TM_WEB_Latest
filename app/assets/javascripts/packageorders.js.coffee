jQuery ->
  $('#packageorders').dataTable
    sPaginationType: "full_numbers"
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#packageorders').data('source')