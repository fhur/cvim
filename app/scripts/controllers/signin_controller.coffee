angular.module('app.controllers')
.controller('SigninController', [
  '$scope'
  ($scope, $routeParams, Resumes)->

    $scope.resumes = Resumes.all()
])

