from pathlib import Path
from matplotlib import pyplot as plt
import tomli #the lib to read config file
import sys
from agent import ProblemSolvingAgent
import plotting
from utils.map import mat2obs, read_map

file_folder = Path(__file__).parent # file is more accurate then cwd
test_folder = file_folder/'test_cases'
save_fig =True # whether to generate gif file. If true, the real time display would be much slower. 
image_path = file_folder / 'images'  # image and animation path  
gif_path = file_folder / 'gif'      # gif path
sys.path.append(str(file_folder)) # add the current directory to the path. 

# agent algorithm
agent = ProblemSolvingAgent() # The agent implementation, you should complete the agent.py
while True:
    case = input('Please input the test case number, or input q to quit. ') or '0'
    if case.strip()=='q':
        break
    # environment world
    with open(test_folder/f'case{case}.toml', 'rb') as f:
        config = tomli.load(f)
    world_config = config['world']
    map = read_map(world_config, test_folder)
    obstacles = mat2obs(map)
    # coordinates of origin and destination
    start_point = tuple(world_config['start_point'])
    goal_point  = tuple(world_config['goal_point'])
    # DepthFirstSearch, BreadthFirstSearch, UniformCostSearch(Dijkstra), Greedy BestFirstSearch, Astar
    algorithms = ['DFS', 'BFS', 'UCS', 'GBFS', 'Astar']
    while True:
        print('Please choose an algorithm to display, or input c to checkout another map, or input d to enable or disable gif saving. ')
        algorithm = input(f'Supported algorithms are {algorithms}') or 'DFS'
        if algorithm.strip()=='c':
            break
        elif algorithm.strip()=='d':
            save_fig = save_fig ^ True 
            print(f'save_fig={save_fig}')
        else:
            path, visited = agent.solve_by_searching(obstacles, start_point, goal_point, algorithm)
            plot = plotting.Plotting(start_point, goal_point, obstacles, 
                                    save_fig=save_fig, image_path=image_path, gif_path=gif_path,
                                    sampling_period = world_config['sampling_period'])
            if save_fig:
                plot.clear_image_path()
            plot.animation(path, visited, algorithm)
            plot.generate_gif(algorithm+case, fps=world_config['fps'])