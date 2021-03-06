'use strict'

### Directives ###

# register the module with Angular
angular.module('app.directives', [
  # require the 'app.service' module
  'app.services'
])

.directive('ngEnter', ()->
  (scope, element, attrs)->
    element.bind("keydown keypress",  (event)->
      if event.which == 13
        scope.$apply ()->
          scope.$eval(attrs.ngEnter)
        event.preventDefault()
    )
)
