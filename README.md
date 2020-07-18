<div align="center">
    <img src="https://github.com/nguyenphuminh/Marble-Engine/blob/master/logo.png">
<div>A simple, lightweight maze game engine created in Batch</div>
</div>
## What is Marble ?
Marble is a simple, lightweight maze game engine created in Batch. You can create simple maze games with Marble.
<br/>
This is the full source code of Marble, hope you like it!

## Usage
To start using Marble, you need to call the engine file by typing:
    call engine.bat
<br/>
You need to use these commands to declare variables for the game in the core.bat file (Remember to put the core.bat file in the same directory as the engine.bat file).
<br/>

    set soption= (Set the type of game you want to make, you can change the value to tictactoe to create a Tic Tac Toe game)
    set soundwhenwin= (Set the sound played when you win)
    set winningpost= (Set the winning position)
    set character= (Set the character model)  
    set wall= (Set the barrier model)
    set floortexture= (Set the floor model)
    set x5y5= (Set the particular position with a model, you can change the postion from x1y1 to x11y15)
    set xspawn= (Set the spawn postion in the x coordinate)
    set yspawn= (Set the spawn postion in the x coordinate)
    set walllimit1= (Asign walllimit1 variable to x2y3 to make x2y3 a wall. Wall limits are from walllimit1 to walllimit165)

<b>Note: Position variables are from x1y1 to x11y15</b>

## License and Copyrights
This game engine/framework is licensed under the MIT License
