# Karashuta
<p align="center">
    <img src="readme/Karashuta_Banner.PNG" alt="Karashuta Banner"><br>
</p>

Karashuta is a game that was developed during my 1. Semester at the [S4G School for Games](https://www.school4games.net/) using Gdscript and the Godot Engine. This was also the first game I developed as part of a team together with 5 other devs. You an check out the games website [here](https://karashuta.school4games.net/)

# Gameplay


https://github.com/BasKrueger/Karashuta_/assets/147401575/48d4fd5d-09cc-4ce0-8c73-6fd9cbc7a369


Karashuta is a top down bullet shooter at its core. The special thing is that you can switch your shield to absorb enemy bullets of the same color to make you stronger. But beware: Enemies use the same shield technology. 
Other features include:
- random run generation
- overcharge abilities that are build up by absorbing bullets
- unlock new Story pieces in the main hub throughout multiple runs
- Face a hardcore survival Arena at the end of each run
- Surviving 4 Arenas unlocks your way to the final boss and the Story conclusion

# How to run
Clone this repository and open the "project.godot" file inside the project folder with Godot 3.5.1 .Alternatively you can download a release build version [here](https://s4g.itch.io/karashuta).

# Highlight: random run Generation
<p align="center">
    <img src="readme/RunGeneration.gif" alt="Run Generation Gif"><br>
</p>

Runs always consist of 2 randomly picked easy, mid and hard levels, aswell as a survival arena at the end. Using simple Vector math made it easy to move each level snippet to the right position to match the defined end point of the previous and the defined start point of the next level.

# My responsibilities in this project included:
- random run generation
- entire UI programming
- hub functionalites (unlocking interactable Story snippets and way to final boss)
- System to design bullet patterns
- Final boss (modified version of existing enemy AI)
- Survival Arena Level
- Player controls, shoot and color absorb mechanic
