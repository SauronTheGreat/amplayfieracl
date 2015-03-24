if Meteor.isServer


  Meteor.publish('roles',()->
    this.ready()
    roles.find()
  )
  Meteor.publish('capabilities',()->
    this.ready()
    capabilities.find()
  )

  @addCapabilities = (cname,ccode)->
    capabilities.insert({name:cname,code:ccode})
  @resetCapabilities = ()->
    capabilities.remove({})