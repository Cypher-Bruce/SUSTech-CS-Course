#pragma once

#include <initializer_list>
#include <iostream>
#include <stack>
#include <string>
#include <vector>

#include "card.hpp"
#include "player.hpp"

namespace uno {

    class Game {
    private:
        /**
         * The players in the game
         */
        std::vector<Player *> players;

        /**
         * The index of the current player
         */
        int current_player_index;

        /**
         * The direction of the game, 1 for right, -1 for left
         */
        int direction = 1;

        /**
         * The draw pile. Initially holds all 50 cards
         */
        std::stack<const Card *> draw;

        /**
         * The discard pile. Initially empty
         */
        std::stack<const Card *> discard;

    public:
        /**
         * @brief Creates a new game with the given players joining
         * @param players The players in the game, length must be between 2 and 4 (inclusive)
         * @throws std::invalid_argument if the number of players is invalid
         * @note For the {@param players} as {@code {"P1", "P2", "P3", "P4"}}, they should sit in the order of:
         *       ```
         *        P1  --→  P2
         *         ↖︎       ↘︎
         *          P4  ←--  P3
         *       ```
         */
        Game(std::initializer_list<Player *> players);

        /**
         * @brief Sets up the game (check the game rules)
         */
        void setup();

        /**
         * @brief Plays the turn
         * @return true if the game ends, false otherwise
         */
        bool play();

        /**
         * @brief Gets the winner of the game
         * @return The name of the winner followed by its score, e.g. "Player 1 (500)"
         * @note If the game is not over, return an empty string ("")
         */
        std::string get_winner() const;

        /**
         * @brief Prints the current state of the game
         * @param os The output stream
         * @param game The game instance
         * @return The output stream
         * @note A sample output is:
         *      ```
         *      Draw: [9B, 9R, DR, 6R, 5B, SB, 3R, 6R, 7B, SR, 2R, 9B, 1B, 8R, 8B, 5B, 4R, 3B, 0R, 1R, 5R]
         *      Discard: [2B]
         *      Current: Player 2
         *      Direction: Right
         *      Player 1: [7R, 6B, 7B, 3R, 1R, 2B, RR]
         *      Player 2: [SR, 4R, 6B, RR, 8B, RB, 0B]
         *      Player 3: [9R, 4B, 5R, 8R, 4B, RB, 1B]
         *      Player 4: [DB, 2R, 3B, DR, 7R, SB, DB]
         *      ```
         *      For the draw and discard piles, the card on top should be shown at the start
         *      The players are represented by their name (not Player+index or so)
         */
        friend std::ostream &operator<<(std::ostream &os, const Game &game);

        friend class NumberCard;

        friend class SkipCard;

        friend class ReverseCard;

        friend class DrawTwoCard;
    };
}
