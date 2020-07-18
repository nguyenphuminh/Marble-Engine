<div align="center">
    <img src="Resources/Branding/logo.png">
    <div><b>A simple, lightweight maze game engine created in Batch</b></div>
</div>

## What is Marble ?
Marble is a simple, lightweight maze game engine created in Batch. You can create simple maze games with Marble.
<br/>
This is the full source code of Marble, hope you like it!

## Usage
### To start using Marble, you need to call the engine file by typing:

    call engine.bat

<br/>
### You need to use these commands to declare variables for the game in the core.bat file (Remember to put the core.bat file in the same directory as the engine.bat file).
<br/>

    ::Set the type of game you want to make, you can change the value to tictactoe to create a Tic Tac Toe game
    set soption=
    ::Set the winning position
    set winningpost=
    ::Set the character model  
    set character=
    ::Set the barrier model
    set wall=
    ::Set the floor model
    set floortexture=
    ::Set the particular position with a model, you can change the postion from x1y1 to x11y15
    set x5y5=
    ::Set the spawn postion in the x coordinate
    set xspawn=
    ::Set the spawn postion in the y coordinate
    set yspawn=
    ::Asign walllimit1 variable to x2y3 to make x2y3 a wall. Wall limits are from walllimit1 to walllimit165
    set walllimit1=
    ::Go to a function when you win in the maze game
    set maze_scenewhenwin=
    ::Go to a function when you win in the tic tac toe game
    set ttt_scenewhenwin=
    ::Go to a function when you lose in the tic tac toe game
    set ttt_scenewhenlose=
    ::Go to a function when you draw in the tic tac toe game
    set ttt_scenewhendraw=

<b>Note: Position variables are from x1y1 to x11y15, Walllimit variable are from walllimit1 to walllimit165.</b>
<b>The character, wall, floortexture, xspawn, yspawn, walllimit(number), winningpost are necessary variables which are not pre-declared.</b> 

<br/>
### Marble has a plugin called "SOUND.EXE" which comes with it. It is used to generate sound effects. You can use it with this command:

    sound play "soundfile"

<br/>
### Marble's ERROR NAME(s)
<br/>
<br/>
|  Name   |   Meaning          |
| ------- | ------------------ |
|  0a1    | Missing files      |


## Development Team
<li>Lead Developer: Nguyen Phu Minh</li>
<li>Tester: Nguyen Phu Minh</li>
<li>Content Writer: Nguyen Phu Minh</li>

## Contributing guidelines
Please read the contributing guidelines <a href="https://github.com/nguyenphuminh/Marble-Engine/tree/master/.github/CONTRIBUTING.md">here</a>

## License and Copyrights
This game engine/framework is licensed under the MIT License
