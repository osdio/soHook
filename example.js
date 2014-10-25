// Generated by CoffeeScript 1.8.0
(function() {
  var hook, hookAction, hookAction2, test1;

  hook = require('./index');

  test1 = function() {
    hook.doAction();
    return console.log('do some things');
  };

  hookAction = function() {
    return console.log('this is hook action!');
  };

  hookAction2 = function() {
    return console.log('this is hook action2');
  };

  hook.addAction(test1, hookAction, 1);

  hook.addAction(test1, hookAction2, 3);

  test1();

  hook.removeAction(test1, hookAction);

  test1();

}).call(this);

//# sourceMappingURL=example.js.map
