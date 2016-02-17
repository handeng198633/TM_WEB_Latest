jQuery ->
  $('#planetickets').dataTable
    sPaginationType: "full_numbers"
    responsive: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#planetickets').data('source')
