// Generated by CoffeeScript 1.3.3
(function() {

  YUI({
    base: './scripts/',
    modules: {
      booking: {
        path: 'booking.js'
      },
      bookingView: {
        path: 'booking_view.js'
      },
      appView: {
        path: 'app_view.js'
      }
    }
  }).use('appView', function(Y) {
    return new Y.AppView();
  });

}).call(this);
