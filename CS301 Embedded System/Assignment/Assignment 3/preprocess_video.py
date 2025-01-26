import cv2
import numpy as np
import os

# 视频文件的路径
video_path = r"C:\Users\Cyphe\Documents\SUSTech Assignment\Term 5\Embedded System\Assignment\Assignment 3\video_material.mp4"
# 输出帧的存储目录
output_dir = r"C:\Users\Cyphe\Documents\SUSTech Assignment\Term 5\Embedded System\Assignment\Assignment 3\Video Frames"

# 创建输出目录
os.makedirs(output_dir, exist_ok=True)

# 创建视频读取对象
cap = cv2.VideoCapture(video_path)

# 检查视频是否成功打开
if not cap.isOpened():
    print("Error: Could not open video.")
    exit()

# 读取视频帧
frame_count = 0
while True:
    ret, frame = cap.read()
    if not ret:
        break

    # 转换为RGB颜色空间
    frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

    # 缩放图片到45x60
    resized_frame = cv2.resize(frame_rgb, (60, 45), interpolation=cv2.INTER_AREA)

    # 获取图像的尺寸
    height, width = resized_frame.shape[:2]

    # 创建一个空的数组来存储16位的像素值
    frame_16bit = np.zeros((height, width), dtype=np.uint16)

    # 将RGB图像转换为16位真色彩（RGB565格式）
    for y in range(height):
        for x in range(width):
            r = np.uint16((resized_frame[y, x, 0] >> 3)) << 11  # 红色5位
            g = np.uint16((resized_frame[y, x, 1] >> 2)) << 5   # 绿色6位
            b = (resized_frame[y, x, 2] >> 3) & 0x1F            # 蓝色5位
            frame_16bit[y, x] = r | g | b

    # 保存预处理后的帧为NumPy数组
    output_path = os.path.join(output_dir, f"frame_{frame_count:04d}.npy")
    np.save(output_path, frame_16bit)

    frame_count += 1

# 释放视频读取对象
cap.release()
print(f"Frames saved to {output_dir}. Total frames: {frame_count}")