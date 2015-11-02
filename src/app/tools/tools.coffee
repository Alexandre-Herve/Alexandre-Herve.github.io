angular.module('alexcom.tools', [
  'ui.router',
  'templates-app'
])

  .config(($stateProvider) ->
    $stateProvider.state( 'tools',
      url: '/tools'
      views:
        main:
          controller: 'ToolsCtrl'
          templateUrl: 'tools/tools.tpl.html'
      data:
        pageTitle: 'Tools'
    )
  )

  .controller('ToolsCtrl', ( $scope ) -> )
