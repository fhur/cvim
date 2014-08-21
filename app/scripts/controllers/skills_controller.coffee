angular.module('app.controllers')
.controller('SkillsController', [
  '$scope'
  ($scope)->
    $scope.skills = [
      {
        name: "5 years doing shit"
      }
      {
        name: "did some stuff here and there"
      }
    ]
])
