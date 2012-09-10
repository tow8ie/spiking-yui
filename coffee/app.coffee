YUI(
  base: './scripts/'
  modules:
    booking:
      path: 'booking.js'

    bookingView:
      path: 'booking_view.js'

    appView:
      path: 'app_view.js'

  ).use 'appView', (Y) ->
    new Y.AppView()
