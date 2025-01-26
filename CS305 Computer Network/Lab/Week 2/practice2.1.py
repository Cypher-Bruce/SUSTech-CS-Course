from math import log
def parse_address(address: str) -> int:
    address = address.split('.')
    if len(address) != 4:
        raise ValueError('Address is invalid: must have 4 parts')

    sum = 0
    for i in address:
        if not i.isdigit() or not 0 <= int(i) <= 255:
            raise ValueError('Address is invalid: each part must be an integer between 0 and 255')
        sum <<= 8
        sum += int(i)
    return sum

def deparse_address(address: int) -> str:
    string = ''
    for i in range(4):
        string = str(address & 255) + '.' + string
        address >>= 8
    string = string[:-1]
    return string


def validate_subnet_mask(subnet_mask: int) -> bool:
    # subnet_mask must be some continuous 1s followed by some continuous 0s
    num_zero = log((1 << 32) - subnet_mask, 2)
    if num_zero.is_integer():
        return True
    raise ValueError('Subnet mask is invalid')

def get_network_id_and_host_id(ip_address: str, subnet_mask: str) -> tuple[int, int]:
    ip_address = parse_address(ip_address)
    subnet_mask = parse_address(subnet_mask)
    validate_subnet_mask(subnet_mask)

    network_id = ip_address & subnet_mask
    host_id = ip_address & ~subnet_mask
    return network_id, host_id

if __name__ == '__main__':
    ip_address = input('Enter IP address: ')
    subnet_mask = input('Enter subnet mask: ')
    network_id, host_id = get_network_id_and_host_id(ip_address, subnet_mask)
    print('Network ID:', deparse_address(network_id))
    print('Host ID:', deparse_address(host_id))
