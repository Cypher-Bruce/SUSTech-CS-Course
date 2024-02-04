#include <iostream>

#include "player.hpp"
#include "game.hpp"

int main() {
    srand(time(nullptr));

    //
    // Task 1
    //
    uno::Player p1("Player 1");
    uno::Player p2("Player 2");
    uno::Player p3("Player 3");
    uno::Player p4("Player 4");

    uno::Game game({&p1, &p2, &p3, &p4});

    //
    // Task 2
    //
    game.setup();
    std::cout << game << std::endl;

    std::cout << std::endl;

    //
    // Task 3
    //
    for (int i = 0; !game.play() && i < 100; i++) {
        std::cout << game << std::endl;
    }

    //
    // Task 4
    //
    std::cout << game << std::endl
              << game.get_winner() << std::endl;
    return 0;
}
