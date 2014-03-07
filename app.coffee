$ ->

  # Create simonArray
  simonArray = []
  # #Create userArray
  userArray = []
  #number of clicks for each level
  clickCounter = 0
  levelCounter = 1


  # #Add to Simon Array - add a random number between 0-3 to the array simonArray
  addToSimonArray = ->
    min = 0
    max = 4
    # x = Math.floor(Math.random() * (max - min + 1)) + min
    x = 2
    simonArray.push x

  clearGame = ->
    simonArray = []
    userArray = []
    clickCounter = 0

  newLevel = ->
    userArray = []
    clickCounter = 0
    addToSimonArray()
    levelCounter++
    console.log levelCounter

  endGame = ->
    console.log "Game Over"
    clearGame()


  checkChoice = ->
    console.log userArray
    console.log simonArray
    console.log clickCounter

    if userArray[clickCounter] == simonArray[clickCounter]
      console.log true
      clickCounter++
    else
      console.log false
      endGame()

  runLevel = ->

    addToSimonArray()

    $(".game-button").on "click" , (e) ->
      choice = parseInt ($(@).data('index'))
      userArray.push choice
      checkChoice()

      if userArray.length == simonArray.length
        newLevel()


    #Start Game
  $('#start-game').on 'click', (e) ->
    clearGame()
    $(@).hide()
    runLevel()