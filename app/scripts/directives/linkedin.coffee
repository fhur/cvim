
angular.module('app.directives')
.directive('linkedInLoad', ()->
  return {
    restrict: 'E'
    template: """
      <script type="text/javascript" src="http://platform.linkedin.com/in.js">
        api_key: 75rr1q4o3sec6s
      </script>
    """
  }
)
.directive('linkedInLogin', ()->
  return {
    restrict: 'E'
    template: """
      <script type="in/Login">
        Hello, <?js= firstName ?> <?js= lastName ?>.
      </script>
    """
  }
)
