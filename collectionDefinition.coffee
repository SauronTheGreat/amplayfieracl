@roles = new Meteor.Collection('myroles')
@capabilities = new Meteor.Collection('capabilities')


@roles.allow
  insert:(userId, role) ->
    Meteor.users.findOne(userId).role is 'admin'
  update:(userId, doc, fieldNames, modifier)->
    Meteor.users.findOne(userId).role is 'admin'
  remove:(userId, doc)->
    Meteor.users.findOne(userId).role is 'admin'





