angular.module('app.controllers')
.controller('SkillsController', [
  '$scope', 'Skills'
  ($scope, Skills)->

    $scope.skills = Skills.all()

    $scope.createSkill = ()->
      Skills.add(name: $scope.newSkillName)
      $scope.newSkillName = ""

])
