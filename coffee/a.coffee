define ->
  a = null

  YUI().use 'json', (Y) ->
    a = Y.JSON.parse("3")
    console.log a

  return a
