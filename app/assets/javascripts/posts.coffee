# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
  $('.unsubscribe').remove()
  $('a:contains("Unsubscribe")').remove()
  $('a:contains("unsubscribe")').remove()
  $('a:contains("subscription")').remove()
  $('span:contains("root@inbound.listboxer.com")').remove()
  $('a:contains("click")').remove()
