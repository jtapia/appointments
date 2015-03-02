# Flash Messages

FlashMessages = ->

  # Bindings
  $('#alert-message a.close').on 'click', (e) ->
    e.preventDefault()
    $(@).parents('#alert-message').slideUp 'slow'

window.FlashMessages = FlashMessages