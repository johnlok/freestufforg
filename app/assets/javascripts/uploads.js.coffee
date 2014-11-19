# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  #disable auto discover
  Dropzone.autoDiscover = false

  $("#new_upload").dropzone
    maxFilesize: 5
    paramName: "upload[image]"
    addRemoveLinks: true

