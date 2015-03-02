# Modals

Modals = ->

  # Bindings
  $('#navbar .nav a').on 'click', (e) ->
    e.preventDefault()
    $('#login-modal').modal 'toggle'


window.Modals = Modals
