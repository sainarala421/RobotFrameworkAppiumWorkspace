import os


def get_canonical_path(abspath):

    canpath = os.path.realpath(abspath)
    return canpath
