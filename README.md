# virtual_pet

**Group name:** “The Talking Tomatoes” <br>
**Members:** Aryana Singh and Zoe Jiang <br>

###### Brief description:
We would like to create a (visual) virtual pet (a cat) in Processing that the player can interact with in order to take care of it. There will be four moods that the player must consider: happiness, hunger, cleanliness, and sleepiness. Each level can be increased by clicking on its icon to transport you to the associated room (i.e. living room, kitchen, bathroom, bedroom) and then engaging in certain activities (i.e. playing, feeding, cleaning, putting to sleep). Over time, if the player does not tend to the pet, each mood constantly decreases slightly. There are also certain activities that can reduce these moods (i.e. hitting your pet by clicking its face decreases happiness, eating even after full decreases cleanliness, etc.).

###### Prototype:
https://docs.google.com/document/d/1zT0yE5kdDezPBd3Bx0NLJ2_vZuhQRmfpnMFUgeLkObY/edit?usp=sharing

###### Compile/run instructions:
[INSERT LATER]

###### Development Log:

**Aryana:** <br>
05/23 - Experimented with merging in order to get used to the commands. <br>
05/24 - Created the pet class and created the images for the random action animations. Also worked on code to animate the random actions, but it's not working as it should. <br>
05/25 - Fixed animation code for the random actions by creating a countdown in the main tab. All animation code has moved to the draw() method in the main tab. <br>
05/26 - Added images for a new random action: cat circling around. Merged work onto main. Added an animation for if the cat is hit. <br>
05/27 - Created clickable interface but then changed clickable to an abstract class. Added our empty methods according to the UML diagram. <br>
05/30 - Created 4 instances of the clickable class and uploaded images for each object. Made the clickable objects draggable so that the player can drag the objects to the cat. Also drew the frames for the interaction animations (the cat eating, playing, being washed, and sleeping) and then coded the animations. <br>
05/31 - Edited UML diagram and README file. <br>
06/01 - Added the closet tab. Made a closet class, abstract closetButton class, and abstract closeItem class. Added instance variables and basic methods.


**Zoe:** <br>
05/24 - Created the mood class and coded all the basic increase/decrease methods as per the UML diagram. Also added the circle displays for each of the 4 moods. <br>
05/25 - Drew icons mood displays: smiley face, knife and fork, and shower head. <br>
05/26 - Drew final icon for sleepy mood display: three Zs. Merged work onto main. <br>
05/27 - Fixed decrease method in mood class and adjusted constants. Added code so that the button's color is based on whether the mood percentage is good or too low. <br>
05/30 - Uploaded images for the room backgrounds. Added the constant decrease rates to the moods. Made each of the mood displays buttons so that the player can switch the room they are currently in. Edited those buttons so that they display the mood via pie chart. <br>
05/31 - Edited UML diagram and README file. <br>
