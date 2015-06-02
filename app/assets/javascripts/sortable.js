$(function(){
  $('#sortable').sortable();
  $('#sortable').disableSelection();
  $('#sortForm').on('submit', photoSorter.submit)
})

var photoSorter = {
  submit: function(e){
    $("#newOrder").val($("#sortable").sortable("toArray"))
  }
}