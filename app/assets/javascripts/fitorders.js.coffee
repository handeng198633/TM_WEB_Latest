jQuery ->
  $('#fitorders').dataTable
    sPaginationType: "full_numbers"
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#fitorders').data('source')