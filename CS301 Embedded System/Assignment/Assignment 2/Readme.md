## This project implements Hamming Code (8, 4), and completes two error detection task in part two.

To briefly introduce the difference:
1. One extra parity bit is added to the beginning of original hamming code
2. To keep the other bits' number unchanged, this bit is named "bit 0"
3. This parity bit is responsible for global parity
4. Extra $p_{overall}$ and $c_{overall}$ is calculated for this parity bit