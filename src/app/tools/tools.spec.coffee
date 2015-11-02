describe 'tools', () ->
  $state = $scope = $rootScope = $controller = createController = {}

  beforeEach window.angular.mock.module 'alexcom.tools'

  # describe the tools routing
  describe 'Tools Routing', () ->
    beforeEach inject ($injector) ->
      $state = $injector.get '$state'
      $rootScope = $injector.get '$rootScope'
      $state.go 'tools'
      $rootScope.$digest()

    it 'Should load the tools template', () ->
      expect( $state.current.views.main.templateUrl )\
        .toBe 'tools/tools.tpl.html'

    it 'Should load the tools controller', () ->
      expect( $state.current.views.main.controller )\
        .toBe 'ToolsCtrl'

    it 'Should have a tools pagetitle', () ->
      expect( $state.current.data.pageTitle )\
        .toBe 'Tools'


  # controller
  describe 'Tools Controller', () ->
    beforeEach inject ( $injector ) ->
      $state = $injector.get '$state'
      $rootScope = $injector.get '$rootScope'
      $scope = $rootScope.$new()
      $controller = $injector.get '$controller'
      createController = () ->
        return $controller 'ToolsCtrl',
          $scope: $scope

    it 'should have a tools Controller defined', () ->
      controller = createController()
      expect( controller ).toBeDefined()


