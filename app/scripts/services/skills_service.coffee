angular.module('app.services')
.factory('Skills', ()->
  new class Skills
    constructor:()->
      @skills = [
        {
          name: "5 years doing shit"
          id: 1
          description: "I did a lot of things blah blah blah"
          from: "August 2012"
          to: "November 2013"
        }
        {
          name: "did some stuff here and there"
          id: 2
          description: "I also did a lot of things here blah blah blah blah"
          from: "December 2013"
          to: "January 2014"
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

    find: (id)->
      for skill in @all()
        return skill if skill.id == id
      return null

)
