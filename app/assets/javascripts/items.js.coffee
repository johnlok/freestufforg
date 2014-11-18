# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $('#resetModal').click (e) ->
    e.preventDefault
    $('#confirmation').hide()
    $('#formSubmission').show()
    $('#listing_form').closest('form').find("input[type=text], textarea").val("");

  $('#submitListing').click (e) ->
    e.preventDefault
    $('#confirmation').show()
    $('#formSubmission').hide()



App = angular.module("freeItems", [])

App.controller("ListController", ["$scope", "$http", ($scope, $http) ->
  $scope.itemCount = 0

  $http.get('/items.json')
    .success (data) ->
      $scope.items = data
    .error (data) ->
      console.log "oh noes" + data
  ])

