angular.module('app.services')
.factory('Skills', ()->
  new class Skills
    constructor:()->
      @skills = [
        {
          name: "5 years doing shit"
          id: 1
          description: "I did a lot of things blah blah blah"
        }
        {
          name: "did some stuff here and there"
          id: 2
          description: "I also did a lot of things here blah blah blah blah"
        }
      ]

    all: ()->
      return @skills

    add: (skill)->
      skill.description = "no description"
      skills = @all()
      lastSkill = skills[skills.length-1]
      skill.id = lastSkill.id+1
      @skills.push skill

)
