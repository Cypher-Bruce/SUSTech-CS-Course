import numpy as np
from PIL import Image
import numpy as np

def read_map(world_config, test_folder):
    img = Image.open(test_folder/world_config['world_map']).convert('L')
    img = img.resize( (world_config['world_height'], world_config['world_width']), Image.NEAREST)
    map_matrix = np.array(img)
    map_matrix = 255 - map_matrix
    map_matrix[map_matrix>255/2] = 255
    map_matrix[map_matrix<255/2] = 0
    map_matrix[:, 0] = 255
    map_matrix[:, -1] = 255
    map_matrix[0, :] = 255
    map_matrix[-1, :] = 255
    return np.fliplr(map_matrix.T)
def mat2obs(mat:np.ndarray, threshold=25):
    """_summary_
        convert the matrix to obstacles.
    Args:
        mat (np.ndarray): _description_
            2D matrix representing the grid map, 
            where the values of each positions are 
            the occupancy of the environment, whose greater values denote less transparency. 
            
    Returns:
        _type_: _description_
        The list of obstacles that are not able to be move on, with each obastacles represented by a tuple of (x, y).
    """
    q = np.where(mat>=threshold)
    return [(i, j) for i, j in zip(q[0], q[1])]