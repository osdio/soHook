exports.addAction = (method, action, index)->
  _initHook method
  actions = method.__myHook__.actions
  actions.push
    action: action
    index: index || 0
  actions.sort _compare

exports.doAction = ->
  method = arguments.callee.caller
  if !method.hasOwnProperty '__myHook__'
    return
  myArguments = method.arguments
  actions = method['__myHook__'].actions
  for action in actions
    action.action.apply method, myArguments

exports.removeAction = (method, actionToRemove)->
  if !method.hasOwnProperty '__myHook__' or method['__myHook__'].actions.length == 0
    return
  actions = method['__myHook__'].actions
  method['__myHook__'].actions = actions.filter (action)->
    action.action != actionToRemove


_compare = (value1, value2)->
  value2.index - value1.index

_initHook = (method)->
  if !method.hasOwnProperty '__myHook__'
    method.__myHook__ =
      actions: []

