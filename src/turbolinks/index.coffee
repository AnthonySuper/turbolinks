#= require ./BANNER
#= export Turbolinks
#= require_self
#= require ./helpers
#= require ./controller
#= require ./start

@Turbolinks =
  supported: do ->
    window.history.pushState? and window.requestAnimationFrame?

  visit: (location, options) ->
    Turbolinks.controller.visit(location, options)

  clearCache: ->
    Turbolinks.controller.clearCache()

  setProgressBarDelay: (delay) ->
    if Turbolinks.controller.adapter.hasOwnProperty("progressBarDelay")
      Turbolinks.controller.adapter.progressBarDelay = delay
