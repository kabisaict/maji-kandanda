app        = require('../../app')
Marionette = require('backbone.marionette')

HomeApp = app.module('home')
HomeApp.startWithParent = false

class HomeApp.Router extends Marionette.AppRouter
  appRoutes:
    ''       : 'home'
    'assignment1-debugger' : 'debuggerPage'

API =
  home: ->
    IndexPage = require './views/index_page'
    app.mainRegion.show new IndexPage()
  debuggerPage: ->
    DebuggerPage = require './views/debugger_page'
    app.mainRegion.show new DebuggerPage()

HomeApp.addInitializer ->
  new HomeApp.Router
    controller: API

module.exports = HomeApp
