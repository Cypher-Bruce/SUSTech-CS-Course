# The requirements for this assignment are as follows:
## In class, we learned about the Bellman-Ford-Moore algorithm and its efficient implementation: the push-based implementation with O(n) extra space (also known as SPFA). We also learned how one can extend SPFA to detect negative cycles. However, in practice, this implementation is still not fast enough. In this assignment, you are asked to learn and describe an optimization technique proposed by Tarjan. This clever technique is known as Tarjan's subtree disassembly trick. Please read pages 304-307 in your textbook and do the following:
1. Write the pseudocode of this improved algorithm (SPFA + Tarjan's trick).
2. Describe its core idea and critical procedures in your own words.
3. Analyze its running time and space complexity.
4. Explain (with examples) why Tarjan's trick could gain a considerable speedup, even for graphs with no negative cycles.