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


