jQuery ->
  $('#linelists').dataTable
    sPaginationType: "full_numbers"
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#linelists').data('source')