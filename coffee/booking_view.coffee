YUI().add 'bookingView', (Y) ->

  Y.BookingView = Y.Base.create 'bookingView', Y.View, [],
    events:
      'input':
        change: 'update'

    template: 'Kosten: <input type="number" name="cost" value="{cost}" /><br />
      Preis: <input type="number" name="price" value="{price}" /><br />
      Gewinn: <span id="netGain">{netGain}</span>'

    initializer: ->
      @get('model').after('change', @render, @)

    render: ->
      container = @get('container')
      model = @get('model')


      if !container.inDoc()
        html = Y.Lang.sub @template,
          cost: model.get 'cost'
          price: model.get 'price'
          netGain: model.netGain()
        Y.one('#content').append(container.setHTML(html))
      else
        container.one("#netGain").setHTML(model.netGain())

      return this

    update: ->
      container = @get('container')

      cost = container.one('input[name=\'cost\']').get('value')
      price = container.one('input[name=\'price\']').get('value')

      @get('model').setAttrs
        cost: cost
        price: price

, '0.1', requires: ['view']
