//The code starts here

setFont( 'Papyrus', 16.5, 'bold')

// Variable Storage

$c = getControls()
$die = [1, 2, 3, 4, 5, 6]
$scores = []
$die2 = [1, 2, 3, 4, 5, 6]
$result = $die.Random()
$dice = new Image('dice.png')
$start = false
// Regular Screen
fill( :black )
def Roll()
    $result = $die.Random()
    $start = true
    $result2 = $die2.Random()
    $score = $result + $result2
    $scores.add($score)
end
onEachFrame() do
    fill(:black)
    if $start == true
        fillText("You rolled a " + $result + " and a " + $result2 + " for a score of " + $score + " your previous scores are: " +$scores+ ".", 10, 25)
    end
    setColor( :white )
    if getControls().isKeyPressed( :x )
        Roll()
    end
    fillText("Roll the Dice!", 15, 55)
    drawImage($dice, 50, 50)
    drawImage($dice, 425, 225, 10)
    fillText("Press X To roll!", 199, 355)
end

    class user
        def setScore(score)
            @score = score
        end
    end
c = getControls()
