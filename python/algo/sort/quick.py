# Python3 implementation of QuickSort from http://algolist.ru/sort/quick_sort.php (from C++ realization)
import sys
  
# Function to find the partition position
def main(array: list) -> list:
    sys.setrecursionlimit(len(array)*2)
    return sort_quick(array=array)


def sort_quick(array: list) -> list:
    if len(array) < 2:
        return array
    
    end_index = len(array) - 1
    pivot = array[end_index]
    array.pop()
    right_split = []
    left_split = []
    
    for x in range(len(array)):
        if (array[x] < pivot):
            left_split.append(array[x])
        else:
            right_split.append(array[x])
    
    return sort_quick(left_split) + [pivot] + sort_quick(right_split)