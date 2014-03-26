{View} = require 'atom'

module.exports =
class AtomHidrView extends View
  @content: ->
    @div class: 'atom-hidr overlay from-top', =>
      @div "The AtomHidr package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "atom-hidr:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "AtomHidrView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
