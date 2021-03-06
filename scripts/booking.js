// Generated by CoffeeScript 1.3.3
(function() {

  YUI().add('booking', function(Y) {
    return Y.Booking = Y.Base.create('booking', Y.Model, [], {
      netGain: function() {
        return this.get('price') - this.get('cost');
      }
    }, {
      ATTRS: {
        cost: {
          value: 0
        },
        price: {
          value: 0
        }
      }
    });
  }, '0.1', {
    requires: ['model']
  });

}).call(this);
