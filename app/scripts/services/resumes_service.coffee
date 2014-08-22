angular.module('app.services')
.factory('Resumes', ()->
  new class Resumes
    constructor:()->
      @resumes = [
        { date: new Date() }
        { date: new Date() }
      ]

    all: ()->
      @resumes

)

