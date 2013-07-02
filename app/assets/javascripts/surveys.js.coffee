# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('surveys').dataTable
    sScrollX: "100%"
    sScrollXInner: "110%"
    bScrollCollapse: true

jQuery ->
  $('surveys').dataTable
    sDom: "T<\"clear\">lfrtip"
    oTableTools:
      sSwfPath: "/swf/copy_csv_xls_pdf.swf"
    