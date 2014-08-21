angular.module('app.directives')
.directive('skill', ()->
  return {
    templateUrl: "/partials/skill.html"
  }
)
.directive('skillList', ()->
  return {
    restrict: 'E'
    templateUrl: "/partials/skill_list.html"
  }
)
