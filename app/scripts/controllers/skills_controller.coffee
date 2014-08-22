angular.module('app.controllers')
.controller('SkillsController', [
  '$scope', '$routeParams', 'Skills'
  ($scope, $routeParams, Skills)->

    $scope.skills = Skills.all()

    $scope.createSkill = ()->
      Skills.add(name: $scope.newSkillName)
      $scope.newSkillName = ""

    # returns the user by the id in the $routeParams
    $scope.find = ()->
      id = parseInt($routeParams.id)
      $scope.skill = Skills.find(id)

    # returns true if a field has been marked for editing
    # by the editField method
    $scope.shouldEdit = (field)->
      edit = $scope.edit || {}
      return edit[field]

    # edits a field with the given identifier
    $scope.editField = (field)->
      $scope.edit = $scope.edit || {}
      $scope.edit[field] = true

    # clears any editable fields
    # @return void
    $scope.clearEdits = ()->
      $scope.edit = {}
      $scope.changes = true

    # @return {boolen} true if a field has been edited
    $scope.hasChanges = ()->
      return $scope.changes

    # TODO implement this method
    $scope.saveChanges = ()->
      $scope.changes = false
])
