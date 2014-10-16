$pWidth = 36
$pHeight = 24
$pX = 50
$pY = getScreenHeight() / 2 - $pHeight / 2
$pVelocity = 0

$blue = :69f

$coin = new Sound('coin.wav')
$jump = new Sound('jump.wav')
$newHigh = new Sound('save_menu.wav')
$gameOver = new Sound('game_over.wav')
$100 = new Sound('100.wav')
$begin = new Sound('begin.wav')
$begin.play()

$floor = new Image('floor.png')
$pipeTop = new Image('pipe_top.png')
$pipeMid = new Image('pipe_middle.png')
$pipeBot = new Image('pipe_bottom.png')
$player = new Image('bird.png')
$harry = new image('harry.png')

$floorX = 0

$obstacles = []
$obstacleWidth = 32
$obstacleGap = 100
$score = 0
$highScore = 0
$rate = 75
$frameCount = $rate

$c = getControls()
$running = false
$started = false

setFont('courier', 18, 'bold')
onEachFrame() do
    fill($blue)
//    drawRotatedImage($harry, (new Time().milliseconds() / 2.8).toRadians(), getScreenWidth() / 4, getScreenHeight() / 2, true)
//    drawRotatedImage($harry, -(new Time().milliseconds() / 2.8).toRadians(), 3 * (getScreenWidth() / 4), getScreenHeight() / 2, true)
    
    if $started == false
        setColor(:fff)
        tick = new Time().milliseconds()
        if tick > 500
            tick = 1000 - tick
        end
        setAlpha(0.75 + tick / 2000)
        fillText('Click or press Space to start...', getScreenWidth() / 2, getScreenHeight() / 2, true)
        setAlpha(1)
    end
    
    if $frameCount == $rate
        $frameCount = 0
        newObstacle = {:x : getScreenWidth(), :y : rand(50, getScreenHeight() - $obstacleGap - 80), :passed : false}
        $obstacles.add(newObstacle)
    end
    
    if ($c.isLeftClick() || $c.isKeyPressed(:space)) && $pY > 0
        if $started == false
            $started = true
            $running = true
        end
        if $running == true
            $pVelocity = 5
            $jump.play()
            if ($started == true && $running == false)
                $pVelocity = 0
            end
        end
    end
    
    if $running == true
        $pVelocity = $pVelocity - 0.25
        $frameCount = $frameCount + 1
        $pY = $pY - $pVelocity
        $floorX = $floorX - 2
    elseif $started == true
        if $pY < getScreenHeight() - 30 - $pHeight
            $pVelocity = $pVelocity - 0.3
            $pY = $pY - $pVelocity
            if $pY > getScreenHeight() - 30 - $pHeight
                $pY = getScreenHeight() - 30 - $pHeight
            end
        else
            $pY = getScreenHeight() - 30 - $pHeight
        end
    end
    
    setColor(:fff)
    $obstacles.each() do |obstacle|
        drawImage($pipeBot, obstacle[:x], obstacle[:y] - 32)
        drawImage($pipeTop, obstacle[:x], obstacle[:y] + $obstacleGap)
        drawImage($pipeMid, obstacle[:x], 0, 32, obstacle[:y] - 32)
        drawImage($pipeMid, obstacle[:x], obstacle[:y] + $obstacleGap + 32, 32, obstacle[:y] + $obstacleGap + 32)
//      fillRect(obstacle[:x], 0, $obstacleWidth, obstacle[:y])
//      fillRect(obstacle[:x], obstacle[:y] + $obstacleGap, $obstacleWidth, getScreenHeight() - obstacle[:y] - $obstacleGap - 30)
        if $running == true
            obstacle[:x] = obstacle[:x] - 2
            if obstacle[:x] < $pX && obstacle[:passed] == false
                $score = $score + 1
                obstacle[:passed] = true
                if $score == 100
                    $100.play()
                elseif ($score - 1 == $highscore && $highscore > 0)
                    $newHigh.play()
                else
                    $coin.play()
                end
            end
            if obstacle[:x] < -200
                $obstacles.delete(obstacle)
            end
            if isRectOverlap($pX, $pY, $pWidth, $pHeight, obstacle[:x], -100, $obstacleWidth, obstacle[:y] + 100) || isRectOverlap($pX, $pY, $pWidth, $pHeight, obstacle[:x], obstacle[:y] + $obstacleGap, $obstacleWidth, getScreenHeight() - obstacle[:y] - $obstacleGap - 30)
                $running = false
                $gameOver.play()
            end
        end
    end
    
    setColor(:fff)
    drawImage($floor, $floorX, getScreenHeight() - 30)
    drawImage($floor, $floorX + 312, getScreenHeight() - 30)
    drawImage($floor, $floorX + 624, getScreenHeight() - 30)
    if $floorX == -312
        $floorX = 0
    end
    
    if $pY >= getScreenHeight() - 30 - $pHeight
        $pY = getScreenHeight() - 30 - $pHeight
        if $running == true
            $running = false
            $begin.stop()
            $gameOver.play()
        end
    end
    
    setColor(:fff)
    tick = (new Time().milliseconds() / 125).floor()
    if tick > 3
        tick = tick - 4
    end
    drawRotatedImage($player, -$pVelocity / 8, 0 + $pWidth * tick, 0, $pWidth, $pHeight, $pX, $pY.floor())
    
    setColor(:fff)
    fillText('Score: ' + $score, 10, 10)
    if $score > $highscore
        score = $score
    else
        score = $highscore
    end
    fillText('Highscore: ' + score, getScreenWidth() - 10, 10, :right, :top)
    
    if $running == false && $started == true
         setColor(:fff)
         fillText('You\'re a disappointment...', getScreenWidth() / 2, getScreenHeight() / 2 - 15, true)
         fillText('Click or press space to restart.', getScreenWidth() / 2, getScreenHeight() / 2 + 15, true)
         if ($c.isLeftClick() || $c.isKeyPressed(:space)) && $gameOver.getPosition() >= 1000
             if $score > $highscore
                 $highscore = $score
             end
             $score = 0
             $obstacles = []
             $frameCount = 0
             $started = false
             $pY = getScreenHeight() / 2 - $pHeight / 2
             $pVelocity = 0
         end
    end
end
