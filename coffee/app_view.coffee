YUI().add 'appView', (Y) ->
  Y.AppView = Y.Base.create 'appView', Y.View, [],

    initializer: ->
      p = new Y.Booking
        price: 100
        cost: 50

      p_view = new Y.BookingView
        container: Y.Node.create('<div class="booking" />')
        model: p

      p_view.render()

, '0.1', requires: ['view', 'booking', 'bookingView']
