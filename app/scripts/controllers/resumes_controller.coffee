angular.module('app.controllers')
.controller('ResumesController', [
  '$scope', '$routeParams', 'Resumes'
  ($scope, $routeParams, Resumes)->

    $scope.resumes = Resumes.all()
])
