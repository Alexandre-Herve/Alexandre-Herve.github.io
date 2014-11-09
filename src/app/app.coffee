module = angular.module "alexcom", [
  'ui.router',
  'ui.bootstrap',

  'alexcom.home',
  'alexcom.header',
  'alexcom.resume',
  'alexcom.projects',
  'alexcom.workflow'
]

module.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise "/home"

module.controller "AppCtrl", ($scope, $location) ->

  $scope.$on '$stateChangeSuccess', ( event, toState ) ->
    $scope.pageTitle = toState.data.pageTitle \
    + ' | Alexandre' \
    if angular.isDefined toState.data.pageTitle

  $scope.nav = (path) ->
    $location.path path


class BaseCtrl
  @register: (app, name) ->
    app.controller name || @name, @

  @inject: (args...) ->
    @$inject = args

  constructor: (args...) ->
    for key, index in @constructor.$inject
      @[key] = args[index]

    for key, fn of @constructor.prototype
      continue if key in ['constructor', 'initialize'] or key[0] is '_'
      @$scope[key] = @constructor.prototype[key] = fn.bind?(@) || _.bind(fn, @)

    @initialize?()
