jQuery ->
  $('#traintickets').dataTable
    sPaginationType: "full_numbers"
    responsive: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#traintickets').data('source')
