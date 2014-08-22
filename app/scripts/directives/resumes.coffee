angular.module('app.directives')
.directive('resume', ()->
  return {
    templateUrl: "/partials/resume.html"
  }
)
.directive('resumeList', ()->
  return {
    restrict: 'E'
    templateUrl: "/partials/resume_list.html"
  }
)

