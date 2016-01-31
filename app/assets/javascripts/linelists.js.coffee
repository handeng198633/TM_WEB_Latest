jQuery ->
  $('#linelists').dataTable
    sPaginationType: "full_numbers"
    responsive: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#linelists').data('source')