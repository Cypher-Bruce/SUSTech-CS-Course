#pragma once

#include <string>
#include <utility>
#include <vector>

#include "card.hpp"

namespace uno {

    class Player {
    private:
        /**
         * @brief The name of the player
         */
        std::string name;

        /**
         * @brief The cards in the player's hand
         */
        std::vector<const Card *> hand;

    public:
        /**
         * @brief Creates a new player with the given name
         * @param name The name of the player
         */
        explicit Player(std::string name) : name(std::move(name)) {}
    };
}
