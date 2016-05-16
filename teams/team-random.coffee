random_Value = -> ['Yes','No','NA','Maybe'][4.random()]

get_Data = ()->
  data =
    metadata :
      team      : 'Team Random'
    activities:
      Governance:
        'SM.1.1' : random_Value()

  add_Activity = (domain, practices)->
    for practice in practices
      data.activities[domain] ?= {}
      data.activities[domain][practice] = random_Value()

  governance_Activities = ['SM.1.1' , 'SM.1.4' , 'SM.2.3' ,
                           'CP.1.1' , 'CP.1.2' , 'CP.2.1' , 'CP.2.2' , 'CP.2.4' , 'CP.2.5' , 'CP.3.2' , 'CP.3.2.1', 'CP.3.2.2',
                           'T.1.1'  , 'T.1.2'  , 'T.1.6'  , 'T.1.7'  , 'T.2.5'  , 'T.2.6'  , 'T.3.2'  , 'T.3.4']

  add_Activity 'Governance', governance_Activities
  data

module.exports = get_Data
