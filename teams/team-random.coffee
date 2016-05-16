random_Value = -> ['Yes','No','NA','Maybe'][4.random()]

get_Data = ()->
  data =
    metadata :
      team      : 'Team Random'
    activities  : {}      

  add_Activity = (domain, practices)->
    for practice in practices
      data.activities[domain] ?= {}
      data.activities[domain][practice] = random_Value()

  governance_Activities   = ['SM.1.1'  , 'SM.1.4'  , 'SM.2.3'  ,
                             'CP.1.1'  , 'CP.1.2'  , 'CP.2.1'  , 'CP.2.2'   , 'CP.2.4'  , 'CP.2.5'  , 'CP.3.2'  , 'CP.3.2.1', 'CP.3.2.2',
                             'T.1.1'   , 'T.1.2'   , 'T.1.6'   , 'T.1.7'    , 'T.2.5'   , 'T.2.6'   , 'T.3.2'   , 'T.3.4'                ]

  intelligence_Activities = ['AM1.2'   , 'AM1.2.1' , 'AM1.3'   , 'AM1.4'
                             'SDF1.1'  , 'SDF.1.1' , 'SDF.1.2' , 'SDF.1.2.1'
                             'SR.1.1'  , 'SR.1.2'  , 'SR.1.3'  , 'SR.2.4'   , 'SR.2.4.1', 'SR.2.6'  , 'SR.2.5'                           ]

  ssdl_Activities         = ['AA.1.1'  , 'AA.1.4'  ,
                             'CR.1.1'  , 'CR.1.2'  , 'CR.1.5'  , 'CR.2.2'   ,
                             'ST.1.1'  , 'ST.1.3'  , 'ST.1.3.1', 'ST.2.1'   , 'ST.2.3'  , 'ST.2.5'  , 'ST.2.6'  , 'ST.3.4'  , 'ST.3.5'   ]

  deployment_Activities   = ['PT.1.1'  , 'PT.1.2'  , 'PT.2.2'  , 'PT.2.3'   ,
                             'SE.1.1'  , 'SE.1.1.1', 'SE.1.1.2', 'SE.1.4'   , 'SE.2.2'  , 'SE.2.4'  , 'SE.3.2'  , 'SE.3.3'  ,
                             'CMVM.1.1', 'CMVM.1.2', 'CMVM.2.1', 'CMVM.2.2' , 'CMVM.2.3', 'CMVM.3.1', 'CMVM.3.2'                         ]

  add_Activity 'Governance'  , governance_Activities
  add_Activity 'Intelligence', intelligence_Activities
  add_Activity 'SSDL'        , ssdl_Activities
  add_Activity 'Deployment'  , deployment_Activities
  data

module.exports = get_Data
