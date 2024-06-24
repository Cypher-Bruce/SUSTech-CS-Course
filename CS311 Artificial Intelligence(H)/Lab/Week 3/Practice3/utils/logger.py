import logging

# 此处修改颜色
FMTDCIT = {
    'ERROR': "\033[31mERROR\033[0m",
    'INFO': "\033[37mINFO\033[0m",
    'DEBUG': "\033[1mDEBUG\033[0m",
    'WARN': "\033[33mWARN\033[0m",
    'WARNING': "\033[33mWARNING\033[0m",
    'CRITICAL': "\033[35mCRITICAL\033[0m",
}


class Filter(logging.Filter):
    def __init__(self, **kwargs) -> None:
        super().__init__(**kwargs)

    def filter(self, record: logging.LogRecord) -> bool:
        record.levelname = FMTDCIT.get(record.levelname)
        return True


filter = Filter()


def getLogger(
        name: str,
        level: int = logging.INFO,
        fmt: str = "%(asctime)s - %(name)s - %(levelname)s - %(message)s",
        fmt_date: str = "%H:%M:%S"
) -> logging.Logger:
    formatter = logging.Formatter(fmt, fmt_date)
    ch = logging.StreamHandler()
    ch.setLevel(level)
    ch.setFormatter(formatter)
    ch.addFilter(filter)

    ret = logging.getLogger(name)
    ret.setLevel(level)
    ret.addHandler(ch)
    return ret


# logger = getLogger(__name__, logging.DEBUG)  # 调试使用这个级别
logger = getLogger(__name__, logging.INFO)  # 正常用这个级别