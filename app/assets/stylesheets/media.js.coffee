$ ->
  Dropzone.autoDiscover = false

  mediaDropzone = new Dropzone("#media-dropzone")

  mediaDropzone.on "success", (file, responseText) ->
    value = parseInt($('#photo_count').val())
    value++
    $('#photo_count').val(value)