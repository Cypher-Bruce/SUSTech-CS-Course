# 时间控制模块
import time


class TimeController():
    def __init__(self):
        self.time_start = 0.0
        self.time_limit = 0.0

    def start_to_time(self):
        self.time_start: float = time.time()

    def set_time_limit(self, time_limit):
        self.time_limit = time_limit

    def have_more_time(self, ratio=0.9, 漏统计的时间=0.1):
        used = time.time() - self.time_start
        return used + 漏统计的时间 < ratio * self.time_limit

    def get_time_used(self):
        return time.time() - self.time_start

time_controller = TimeController()