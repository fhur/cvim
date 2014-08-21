angular.module('app.controllers')
.controller('SkillsController', [
  '$scope', '$routeParams', 'Skills'
  ($scope, $routeParams, Skills)->

    $scope.skills = Skills.all()

    $scope.createSkill = ()->
      Skills.add(name: $scope.newSkillName)
      $scope.newSkillName = ""

    $scope.find = ()->
      id = parseInt($routeParams.id)
      $scope.skill = Skills.find(id)

])
