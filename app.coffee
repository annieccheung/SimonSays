$ ->

  # Create simonArray
  simonArray = []
  #Create userArray
  userArray = []
  #number of clicks for each level
  clickCounter

  #Start Game
  $('#start-game').on 'click', (e) ->
    clearGame()
    $(@).hide()
  
  #Add to Simon Array - add a random number between 0-3 to the array simonArray
  addToSimonArray: ->
    simonArray.push #(RANDOM NUMBER GENERATED BETWEEN 0-3)

  clearUserArray: ->

  #display pattern with lights
  runLevel: ->
    addToSimonArray()
    #flash buttons in simonArray
    #tell user it's their turn
    clickCounter = 0
    
    if win
      clearUserArray()
    addToSimonArray()
    #set userArray to null
    userArray = []

    checkChoice: (choice) ->
      if userArray([clickCounter]) == simonArray[(clickCounter)]
        true
      else
        endGame()
    
    $(".game-button").on "click", (e) ->
      clickCounter++
      choice = $(@)
      userArray.push choice
      checkChoice()

    #1.add data-index of button clicked to userArray
    #2 check the value of that index with the same index in simonArray
    # if true
    # else endGame

    #once userArray.length = simonArray.length, level complete, add new number to simonArray

  endGame: ->

  clearGame: ->


 

  #Add to User Array - when user clicks a game-button, add the data-index of that button to the array userArray
  #value in index(x) of UserArray == value in index(x) of simonArray
  
  
    console.log "Clicked button" + getRandom()
    for num in userArray
      if num == value



