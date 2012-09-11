YUI(
  base: './scripts/'
  modules:
    booking:
      path: 'booking.js'

    bookingView:
      path: 'booking_view.js'

    appView:
      path: 'app_view.js'

  ).use 'event-base', 'appView', (Y) ->
    Y.on 'domready', ->
      new Y.AppView()
