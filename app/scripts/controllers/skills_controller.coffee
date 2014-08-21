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

    $scope.shouldEdit = (field)->
      edit = $scope.edit || {}
      return edit[field]

    $scope.editField = (field)->
      $scope.edit = $scope.edit || {}
      $scope.edit[field] = true

    $scope.clearEdits = ()->
      $scope.edit = {}
])
