from random import randint
from . import algo
import sys


def main():
    args = sys.argv[1:]
    array = [randint(0, 10000000) for x in range(10000000)]
    match args[0]:
        case "find":
            print("Finding")
        case "sort":
            match args[1]:
                case "quick":
                    print( algo.sort.quick.main(array))
                    return
        case _:
            Exception("NO SUCH COMMAND!")
    
main()