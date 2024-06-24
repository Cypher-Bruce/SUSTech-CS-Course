"""
Plot tools 2D
@author: huiming zhou
@author: 叶璨铭 (增加gif功能)
"""

import os
import sys
import matplotlib.pyplot as plt
import numpy as np
import imageio
import glob

# sys.path.append(os.path.dirname(os.path.abspath(__file__)) +
#                 "/../../Search_based_Planning/")

class Plotting:
    def __init__(self, xI, xG, obs, xy_reso=1, save_fig=False, image_path=None, gif_path=None, sampling_period=15):
        resolve = lambda x: (x[0] / xy_reso, x[1]/xy_reso)
        self.xI, self.xG = resolve(xI), resolve(xG) # 起点坐标元组和终点坐标元组
        self.obs = obs   # 障碍物坐标元组列表
        self.fig_num = 0
        self.save_fig=save_fig
        self.image_path=image_path
        self.gif_path=gif_path
        self.sampling_period = sampling_period
        # self.image_buffer = [] # 先画完再gif
    def clear_image_path(self):
        png_files = glob.glob(str(self.image_path/'*.png'))
        for png_file in png_files:
            try:
                os.remove(png_file)
            except OSError as e:
                print(f"Error:{ e.strerror}")
    def generate_gif(self, algs, fps=25):
        pic_lst = sorted(os.listdir(self.image_path), key=lambda x: int(x[:-4]))
        # print(pic_lst)
        gif_images = []
        for name in pic_lst:
            if name.endswith('png'):
                filename = os.path.join(self.image_path, name)
                gif_images.append(imageio.imread(filename))  # 读取图片
        imageio.mimsave(self.gif_path/f'{algs}.gif', gif_images, fps=fps)
        
    def update_obs(self, obs):
        self.obs = obs

    def animation(self, path, visited, name):
        self.plot_grid(name)
        self.plot_visited(visited)
        self.plot_path(path)
        plt.show()

    def animation_lrta(self, path, visited, name):
        self.plot_grid(name)
        cl = self.color_list_2()
        path_combine = []

        for k in range(len(path)):
            self.plot_visited(visited[k], cl[k])
            plt.pause(0.2)
            self.plot_path(path[k])
            path_combine += path[k]
            plt.pause(0.2)
        if self.xI in path_combine:
            path_combine.remove(self.xI)
        self.plot_path(path_combine)
        plt.show()

    def animation_ara_star(self, path, visited, name):
        self.plot_grid(name)
        cl_v, cl_p = self.color_list()

        for k in range(len(path)):
            self.plot_visited(visited[k], cl_v[k])
            self.plot_path(path[k], cl_p[k], True)
            plt.pause(0.5)

        plt.show()

    def animation_bi_astar(self, path, v_fore, v_back, name):
        self.plot_grid(name)
        self.plot_visited_bi(v_fore, v_back)
        self.plot_path(path)
        plt.show()

    def plot_grid(self, name):
        obs_x = [x[0] for x in self.obs]
        obs_y = [x[1] for x in self.obs]

        plt.plot(self.xI[0], self.xI[1], "bs")
        plt.plot(self.xG[0], self.xG[1], "gs")
        plt.plot(obs_x, obs_y, "sk")
        plt.title(name)
        plt.axis("equal")

    def plot_visited(self, visited, cl='gray'):
        if self.xI in visited:
            visited.remove(self.xI)

        if self.xG in visited:
            visited.remove(self.xG)

        count = 0

        for x in visited:
            count += 1
            plt.plot(x[0], x[1], color=cl, marker='o')
            plt.gcf().canvas.mpl_connect('key_release_event',
                                         lambda event: [exit(0) if event.key == 'escape' else None])

            if count < len(visited) / 3:
                length = 20
            elif count < len(visited) * 2 / 3:
                length = 30
            else:
                length = 40
            #
            # length = 15
            if count%self.sampling_period==0 and self.save_fig:
                plt.savefig(self.image_path/f'{self.fig_num}.png')
                self.fig_num+=1
            if count % length == 0:
                plt.pause(0.001)
                
        plt.pause(0.01)

    def plot_path(self, path, cl='r', flag=False):
        path_x = [path[i][0] for i in range(len(path))]
        path_y = [path[i][1] for i in range(len(path))]

        if not flag:
            plt.plot(path_x, path_y, linewidth='3', color='r')
        else:
            plt.plot(path_x, path_y, linewidth='3', color=cl)
        
        plt.plot(self.xI[0], self.xI[1], "bs")
        plt.plot(self.xG[0], self.xG[1], "gs")
        if self.save_fig:
            plt.savefig(self.image_path/f'{self.fig_num}.png')
            self.fig_num+=1
        plt.pause(0.01)

    def plot_visited_bi(self, v_fore, v_back):
        if self.xI in v_fore:
            v_fore.remove(self.xI)

        if self.xG in v_back:
            v_back.remove(self.xG)

        len_fore, len_back = len(v_fore), len(v_back)

        for k in range(max(len_fore, len_back)):
            if k < len_fore:
                plt.plot(v_fore[k][0], v_fore[k][1], linewidth='3', color='gray', marker='o')
            if k < len_back:
                plt.plot(v_back[k][0], v_back[k][1], linewidth='3', color='cornflowerblue', marker='o')

            plt.gcf().canvas.mpl_connect('key_release_event',
                                         lambda event: [exit(0) if event.key == 'escape' else None])

            if k % 10 == 0:
                plt.pause(0.001)
        plt.pause(0.01)

    @staticmethod
    def color_list():
        cl_v = ['silver',
                'wheat',
                'lightskyblue',
                'royalblue',
                'slategray']
        cl_p = ['gray',
                'orange',
                'deepskyblue',
                'red',
                'm']
        return cl_v, cl_p

    @staticmethod
    def color_list_2():
        cl = ['silver',
              'steelblue',
              'dimgray',
              'cornflowerblue',
              'dodgerblue',
              'royalblue',
              'plum',
              'mediumslateblue',
              'mediumpurple',
              'blueviolet',
              ]
        return cl
