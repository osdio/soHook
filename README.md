Just a hook javascript tools. 

This is an example:

```
hook = require 'shook'

test1 = ()->
  hook.doAction()
  console.log 'do some things'


hookAction = ()->
  console.log 'this is hook action!'
hookAction2 = () ->
  console.log 'this is hook action2'
hook.addAction test1, hookAction, 1
hook.addAction test1, hookAction2, 2

test1()
hook.removeAction test1, hookAction
test1()


```