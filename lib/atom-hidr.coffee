AtomHidrView = require './atom-hidr-view'

module.exports =
  atomHidrView: null

  activate: (state) ->
    @atomHidrView = new AtomHidrView(state.atomHidrViewState)

  deactivate: ->
    @atomHidrView.destroy()

  serialize: ->
    atomHidrViewState: @atomHidrView.serialize()
