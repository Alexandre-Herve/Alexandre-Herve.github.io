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
        title: 'Feelance - ReactJS, Redux, Webpack'
        startDate: 'Jan 2016'
        endDate: 'today'
        description: 'Main projects:'
        projects: [
          name: 'Auchan Direct'
          description: 'Webpack universal rendering
          infrastructure for development and production.
          React/Redux app scaffolding: React router,
          Redux Async Connect, Universal Api calls and so on.'
        ,
          name: 'Ouicar',
          description: 'Two months mission, still in progress (apr. 17).'
        ]
      ,
        title: 'Personal project'
        institution: 'Curious.so'
        startDate: 'Nov 2015'
        endDate: 'Feb 2016'
        description: 'A web platform to crowdsource questions.
        NodeJS, Koa, React Universal rendering, Redux, MongoDB.'
      ,
        title: 'Web Developer'
        institution: 'Small Improvements GmbH'
        startDate: 'Jun 2015'
        endDate: 'Oct 2015'
        description: 'Small Improvements is a lean performance and peer
        management software company based in Berlin. I joined the team for
        5 months as an AngularJS developer.'
        # highlight: 'We issued a pretty neat objective management module!'
      ,
        title: 'Feelance - AngularJS'
        startDate: 'Oct 2014'
        endDate: 'Apr 2015'
        description: 'Main projects:'
        projects: [
          name: 'Hunteed'
          description: 'Built hunteed.com from scratch and iterated on
          the product with the team.'
        ,
          name: 'Ouicar',
          description: 'One month to build two adaptative apps : car
          deposit and withdrawal. Payment, complex form validation,
          calendar management, unit and integration tests...'
        ]
        # highlight: 'The two adaptative apps I made in one month for Ouicar
        # went to production bug free.'
      ,
        title: 'Co-founder'
        institution: 'Shapter'
        startDate: 'Mar 2013'
        endDate: 'Sep 2014'
        description: 'Students must take many choices all
        along their studies, and choosing is hard. Shapter
        gave them a unique platform where
        they could have feedback for every
        choice they have to take. Co-founder, I especially took care of product
        management, front-dev on AngularJS and UI design in addition to
        all the problematics inherent to the life of a
        startup.'
        # highlight: '"Shapter, you are my heroes !!" a
        # student from Centrale Lyon.'
      ,
        title: 'Assistant music producer'
        startDate: 'Sep 2012'
        endDate: 'Mar 2013'
        institution: 'RV Productions'
        description: 'Working alongside my father,
        the french jazz pianist Antoine
        Hervé to organize venues, sell shows, produce discs
        etc. I also reorganized the IT structure of the
        company.'
      # ,
        # title: 'Research internship'
        # startDate: 'Apr 2011'
        # endDate: 'Jul 2011'
        # description: 'My job was to design a collagen fiber traction
        # test that fitted under an atomic force microscope. I
        # produced a working prototype and had a very fine overview of
        # the functionning of a research lab in the UK.'
        # institution: 'Eastman Dental Institute'
        # # highlight: 'It went so well that my placement tutor offered me
        # # to come back for a PhD :-)'
      ]
    ,
      title: 'Education'
      steps: [
        title: 'General Engineering'
        startDate: 'Nov 2012'
        endDate: 'Sep 2009'
        institution: 'École Centrale de Lyon'
        description: 'Gives you a broad engineering and
        managerial culture, from mechanical engineering
        to data processing, human sciences, fluid
        mechanics etc. I spcialized in nanotechnology.'
        # highlight: 'Got elected at the students Union !'
      ,
        title: 'Prépa maths and physics'
        institution: 'lycée charlemagne'
        startDate: 'Sep 2007'
        endDate: 'Jun 2009'
        description: 'Ultra intensive maths and physics
        course to prepare for the national engineering
        schools exam. 60 hours work per week minimunm,
        high pressure. Extremly challenging. And a lot
        of fun !'
        # highlight: 'Went from position 47 to 7 over 50 in
        # maths in one year, then reached top-10 school.'
      ,
        title: 'A-level: baccalauréat'
        startDate: 'Jun 2007'
        institution: 'Lycée Charlemagne'
        # highlight: 'Mention très bien (with honors).
         # 19/20 in both maths and physics.'
      ]
    ]
