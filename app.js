// Generated by CoffeeScript 1.7.1
(function() {
  $(function() {
    var addToSimonArray, checkChoice, clearGame, clickCounter, endGame, levelCounter, newLevel, runLevel, simonArray, userArray;
    simonArray = [];
    userArray = [];
    clickCounter = 0;
    levelCounter = 1;
    addToSimonArray = function() {
      var max, min, x;
      min = 0;
      max = 4;
      x = 2;
      return simonArray.push(x);
    };
    clearGame = function() {
      simonArray = [];
      userArray = [];
      return clickCounter = 0;
    };
    newLevel = function() {
      userArray = [];
      clickCounter = 0;
      addToSimonArray();
      levelCounter++;
      return console.log(levelCounter);
    };
    endGame = function() {
      console.log("Game Over");
      return clearGame();
    };
    checkChoice = function() {
      console.log(userArray);
      console.log(simonArray);
      console.log(clickCounter);
      if (userArray[clickCounter] === simonArray[clickCounter]) {
        console.log(true);
        return clickCounter++;
      } else {
        console.log(false);
        return endGame();
      }
    };
    runLevel = function() {
      addToSimonArray();
      return $(".game-button").on("click", function(e) {
        var choice;
        choice = parseInt($(this).data('index'));
        userArray.push(choice);
        checkChoice();
        if (userArray.length === simonArray.length) {
          return newLevel();
        }
      });
    };
    return $('#start-game').on('click', function(e) {
      clearGame();
      $(this).hide();
      return runLevel();
    });
  });

}).call(this);
