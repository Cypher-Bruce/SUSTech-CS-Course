#pragma once

#include <string>

namespace uno {
    class Game;

    class Card {
    protected:
        /**
         * @brief The color of the card
         */
        std::string color;

    public:
        /**
         * @brief Gets the string representation of the card
         * @return The formatted string
         */
        virtual std::string to_string() const = 0;

        /**
         * @brief Gets the point of the card
         * @return The point
         */
        virtual const int get_point() const = 0;

        /**
         * @brief Gets the color of the card
         * @return The color
         */
        const std::string &get_color() const {
            return color;
        }

        /**
         * @brief Checks if the card can be played
         * @param game The game instance
         * @return true if the card can be played, false otherwise
         */
        virtual bool is_available(const Game &game) const = 0;

        /**
         * @brief Performs the effect of the card
         * @param game The game instance
         */
        virtual void effect(Game &game) const = 0;
    };

    /**
     * @brief A number card, holds a number and a color
     * @note Its string representation is the number followed by the color, e.g. "1B", "2R"
     */
    class NumberCard /* TODO */;
    /**
     * @brief A skip card, holds a color
     * @note Its string representation is "S" followed by the color, e.g. "SB", "SR"
     */
    class SkipCard /* TODO */;

    /**
     * @brief A reverse card, holds a color
     * @note Its string representation is "R" followed by the color, e.g. "RB", "RR"
     */
    class ReverseCard /* TODO */;

    /**
     * @brief A draw two card, holds a color
     * @note Its string representation is "D" followed by the color, e.g. "DB", "DR"
     */
    class DrawTwoCard /* TODO */;
}
