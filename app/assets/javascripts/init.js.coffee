# ############## #
# INIT
# ############## #

Appointments = {

  init: ->
    Modals()
    FlashMessages()
}

$ ->
  window.Appointments = Appointments
  Appointments.init()