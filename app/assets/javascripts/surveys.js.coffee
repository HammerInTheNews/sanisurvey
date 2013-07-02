# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#surveys").dataTable(
  sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
  sPaginationType: "bootstrap"
  bProcessing: true
  sScrollX: "100%"
  bScrollCollapse: true
  bAutoWidth: false
  aoColumns: [
    sType: "html"
  , null, null, null]
  aaSorting: [[0, "asc"], [1, "asc"]]
  bServerSide: true
  sAjaxSource: "/admin/admins.json"
  oTableTools:
    aButtons: ["copy", "print",
      sExtends: "collection"
      sButtonText: "Save"
      aButtons: ["csv", "xls", "pdf"]
    ]
)