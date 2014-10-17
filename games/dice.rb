

setFont( 'Chiller', 35, 'bold')

// Variable Storage

$c = getControls()
$die = rand(6)
$die2 = rand(6)
$dice = new Image('dice.png')
// Regular Screen
onEachFrame() do
    fill( :black )
    setColor( :white )
    fillText("Roll the Dice!", 10, 35)
    drawImage($dice, 50, 50)
    drawImage($dice, 425, 225, 10)
end
    class user
        def setScore(score)
            @score = score
        end
    end
c = getControls()
mouseX = c.getMouseX()
mouseY = c.getMouseY()

if getControls().isKeyDown( :x )
    console( " You rolled a " +$die+ "!")
end
