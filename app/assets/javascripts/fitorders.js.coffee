jQuery ->
  $('#fitorders').dataTable
    sPaginationType: "full_numbers"
    responsive: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#fitorders').data('source')