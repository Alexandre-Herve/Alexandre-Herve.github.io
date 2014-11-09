module = angular.module('alexcom.projects', [
  'ui.router',
  'templates-app'
])

module.config ($stateProvider) ->
  $stateProvider.state 'projects',
    url: '/projects'
    views:
      "main":
        controller: 'ProjectsCtrl'
        templateUrl: 'projects/projects.tpl.html'
    data:
      pageTitle: 'Projects'
    

class ProjectsCtrl extends BaseCtrl
  @register module, 'ProjectsCtrl'
  @inject '$location'
  initialize: ->
    @$location.search('project', 'Shapter')
