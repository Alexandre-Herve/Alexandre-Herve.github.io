module = angular.module('alexcom.resume', [
  'ui.router',
  'templates-app'
])

module.config ($stateProvider) ->
  $stateProvider.state 'resume',
    url: '/resume'
    views:
      "main":
        controller: 'ResumeCtrl'
        controllerAs: 'resume'
        templateUrl: 'resume/resume.tpl.html'
    data:
      pageTitle: 'Resume'
  

module.controller 'ResumeCtrl', () ->
  class ResumeCtrl
    this.sections = [
      title: 'Experience'
      steps: [
        title: 'Web Developer'
        institution: 'Small Improvements GmbH'
        description: 'Small Improvements is a lean performance and peer management software based in Berlin. I have joined the team for 5 months as an AngularJS developer.'
      ,
        title: 'Feelance'
        description: 'Working on multiple projects with AngularJS, notably Hunteed and Ouicar'
        highlight: 'Made two apps in a single month for Ouicar, and they went to production bug free'
      ,
        title: 'Co-founder'
        institution: 'Shapter'
        description: 'Students must take many choices all
        along their studies, and choosing is hard. Shapter
        was an attempt to give them a unique platform where
        they could have feedback for every
        choice they have to take. I especially took care of product
        management, front-dev and UI design in addition to
        all the problematics inherent to the life of a
        startup.'
        highlight: '"Shapter, you are my heroes !!" a
        student from Centrale Lyon'
      ,
        title: 'Assistant music producer'
        institution: 'RV Productions'
        description: 'Working alongside my father,
        the exceptionnal french jazz pianist Antoine
        Hervé to organize venues, sell shows, produce discs
        etc. I also reorganized the IT structure of the
        company.'
      ,
        title: 'Research internship'
        description: 'My job was to design a collagen fiber traction
        test that fitted under an atomic force microscope. I
        produced a working prototype and had a very fine overview of
        the functionning of a research lab in the UK.'
        institution: 'Eastman Dental Institute'
        highlight: 'It went so well that my placement tutor offered me
        to come back for a PhD whenever I wanted :-)'
      ]
    ,
      title: 'Education'
      steps: [
        title: 'General Engineering'
        institution: 'École Centrale de Lyon'
        description: 'Gives you a broad engineering and
        managerial culture, from mechanical engineering
        to data processing, human sciences, fluid
        mechanics etc. I spcialized in nanotechnology.'
        highlight: 'Got elected at the students Union !'
      ,
        title: 'Prépa maths and physics'
        institution: 'lycée charlemagne'
        description: 'Ultra intensive maths and physics
        course to prepare for the national engineering
        schools exam. 60 hours work per week minimunm,
        high pressure. Extremly challenging. And a lot
        of fun !'
        highlight: 'Went from 47th over 50 to 7th in
        maths in one year, then reached A+ level /
        top-10 school'
      ,
        title: 'A-level: baccalauréat'
        institution: 'Lycée Charlemagne'
        highlight: 'Mention très bien (with honors).
         19/20 in both maths and physics'
      ]

    ]
