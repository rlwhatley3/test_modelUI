'use strict'

###*
 # @ngdoc overview
 # @name dndApp
 # @description
 # # dndApp
 #
 # Main module of the application.
###
angular
  .module 'dndApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.sortable',
    'ui.router',
    'restangular',
    'ngTable',
    'uiSwitch'
  ]
  .config ($routeProvider, $stateProvider, RestangularProvider) ->
    RestangularProvider.setBaseUrl('/api')
    RestangularProvider.setDefaultHeaders({'Content-Type': 'application/json'})
    # $routeProvider
    #   .when '/',
    #     templateUrl: 'views/main.html'
    #     controller: 'MainCtrl'
      # .when '/games',
      #   templateUrl: 'views/games.html'
      #   controller: 'GamesCtrl'
      # .otherwise
        # redirectTo: '/'
    $stateProvider.state('home', 
      url: "/home"
      templateUrl: 'views/main.html'
      controller: 'MainCtrl'
    )

    $stateProvider.state('about', 
      url: "/about"
      templateUrl: 'views/about.html'
      controller: 'AboutCtrl'
    )

    $stateProvider.state('characters',
      url: '/characters'
      templateUrl: 'views/characters/characterslist.html',
      controller: 'CharacterslistCtrl'
    )

    $stateProvider.state('characters.new',
      url: '/new'
      views:
        "@":
          templateUrl: 'views/characters/new.html'
          controller: 'CharacternewCtrl'
    )

    $stateProvider.state('characters.show', 
      url: '/:id'
      views:
        "@":
          templateUrl: 'views/characters/show.html'
          controller: 'CharactershowCtrl'
    )

    # /////////////Management\\\\\\\\\\\\\\\
    $stateProvider.state 'management',
      abstract: true
      url: '/management'
      templateUrl: 'views/management/index.html'
      controller: 'ManagementCtrl'

    $stateProvider.state 'management.races',
      url: '/races'
      templateUrl: 'views/management/race/index.html'

    $stateProvider.state 'management.backgrounds',
      url: '/backgrounds'
      templateUrl: 'views/management/background/index.html'

    $stateProvider.state 'management.classes',
      url: '/classes'
      templateUrl: 'views/management/class/index.html'
      controller: 'ManagementClassIndexCtrl'