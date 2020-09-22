# Tiny
Tiny is a lua package made to be used with the LÖVE2D framework, to provide it with very simple game engine features, such as:
Colliders, animations, sprites, state machines, vectors, etc.

## Motivation
I wanted to have a layer in between the framework (in this case LÖVE2D) and the actual game code, trying to avoid repeating code over
and over again, reducing boilerplate code and improving code clarity.
I wanted to achieve all of this while keeping the package complexity down to the bare minimum.

For example, if I need realistic 2D physics simulation, I use LÖVE2D's physics module (Box2D), but if I just need very simple AABB collisions, 
I can use the tiny package and avoid the performance hit.

## Repository
The src folder contains the following:
* 3rdparty/: The tiny package uses Object-oriented programming everywhere, so it needs Class to be defined beforehand. 
This folder contains the Class module, copied from the [HUMP package](https://github.com/vrld/hump) (Copyright 2010-2018 Matthias Richter), which I chose for OOP.
* api/: This folder contains the API for this package. More on how to use this later.
* assets/: This folder contains an asset pack made by [Balmer](https://opengameart.org/users/balmer) used for the examples.
* tiny/: This folder contains the tiny package.
* main.lua: Creates a tiny.SceneManager, to demonstrate some of the features of the package in different scenes.
* tiny_api.lua
* util.lua: Utility script that contains functions that I often use.
* Scene\*.lua: Scene objects that will help to demonstrate features of the package.
