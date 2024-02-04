# Hooray! Card Game UNO!

> You can find the code template in Blackboard / Assignments / Assignment 4.

In this assignment, we won’t describe each task step by step in detail,
you are expected to understand the problems by relating them to real life experience.
Codes written in OOP are very self-explanatory and well-divided,
so you can even code directly without looking at the documentation sometimes.

## Game Rules

Our game is a simplified version of the popular card game UNO.
Its deck contains 50 cards, of which there are 38 Number cards and 12 Action cards.

- 38 Number cards: 2 colors (blue, red), each color has one 0 card and two cards of 1-9.
    - Restriction: this card may only be played on a matching color or on another Number card whose value is the same.

- 4 Skip cards: 2 colors, each color has two cards.
    - Restriction: this card may only be played on a matching color or on another Skip card.
    - Effect: the next person in line to play forfeits his/her turn and is "skipped".

- 4 Reverse cards: 2 colors, each color has two cards.
    - Restriction: this card may only be played on a matching color or on another Reverse card.
    - Effect: the direction of play reverses (play to the right now passes to the left, and vice versa).

- 4 Draw-2 cards: 2 colors, each color has two cards.
    - Restriction: this card may only be played on a matching color or on another Draw-2 card.
    - Effect: the next person to play must draw 2 cards and forfeit his/her turn.
    - Note: if the DRAW pile is used up, shuffle the DISCARD pile and turn it over to regenerate the DRAW pile.

### Set Up

The "play table" contains two piles of cards: the DRAW pile and the DISCARD pile.
Initially, all cards are placed in the DRAW pile, once a card is played, it would be moved to the DISCARD pile.

Two to four players can join the game, sitting in a circle. First randomly choose a dealer, shuffle the DRAW pile,
and deal 7 cards from the pile to each player.

Now turn over the top card of the DRAW pile to start the DISCARD pile — this card, evan if it is an action card,
will NOT take any special effect (skip, reverse, or draw-2).

The player to the right of the dealer plays first. The play passes to the right until a Reverse card is played,
play will switch directions.

### Play the Round

The current player needs to play a card that matches the top card of the DISCARD pile by color or number.

If the player has multiple playable cards, he/she can choose to play any one of them.
In this assignment, you may use any strategy to choose the card to play (e.g. rand).

If the player has no playable card, he/she needs to draw a card from the DRAW pile and skip the turn
(if the DRAW pile is used up, shuffle the DISCARD pile and turn it over to regenerate the DRAW pile).

### Object

When the first player gets rid of all the cards in his/her hand, he/she becomes the "winner" and the game round is over.
All other players' cards are scored and the points are given to the winner.

| Card Type |   Points   |
|:---------:|:----------:|
|  Number   | Face Value |
|   Skip    |     20     |
|  Reverse  |     30     |
|  Draw-2   |     40     |

## Task Specification

To help you get started, we have provided you with a code template, which contains several documented classes and
member functions.

You need to design the member variables and implement the declared member functions.
Only the 5 member functions declared in class `uno::Game` are mandatory and cannot be modified,
you are free to add more member functions or modify the other provided prototypes as you want.

We will test your code progressively with a series of test cases:

0. Find out the correct sequence of header files to pass the compilation (10 pts)
1. Instantiate `Player` and `Game` (10 pts)
2. Set up the game and print the game status (20 pts)
3. Play the game (40 pts)
4. Get the winner after a player wins or run 100 rounds (20 pts)

## Submit the code

Please copy all the code except for the contents in `main.cpp` to the submission box.
Think carefully about the sequence of the header files, act as if you are the compiler.

_Hope all of you can grab the full score painlessly._ 
