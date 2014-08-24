'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/skills', { templateUrl: '/partials/skills.html'} )
    .when('/skills/:id', { templateUrl: '/partials/skill_details.html' })
    .when('/resumes', { templateUrl: '/partials/resumes.html' })
    .when('/resumes/:id', { templateUrl: '/partials/resumes.html' })
    .when('/signin', { templateUrl: '/partials/signin.html' })
    # Catch all
    .otherwise({redirectTo: '/skills'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
.config(($linkedInProvider)->
  $linkedInProvider.set('appKey', '75rr1q4o3sec6s')
)
