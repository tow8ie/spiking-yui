YUI().add 'booking', (Y) ->

  Y.Booking = Y.Base.create 'booking', Y.Model, [], {
    netGain: ->
      @get('price') - @get('cost')
  },
  {
    ATTRS:
      cost:
        value: 0

      price:
        value: 0
  }

, '0.1', requires: ['model']
