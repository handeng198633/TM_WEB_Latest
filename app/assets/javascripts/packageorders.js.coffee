jQuery ->
  $('#packageorders').dataTable
    sPaginationType: "full_numbers"
    responsive: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#packageorders').data('source')