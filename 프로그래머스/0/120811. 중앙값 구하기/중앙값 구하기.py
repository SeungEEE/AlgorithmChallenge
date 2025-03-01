import math

def solution(array):
    array.sort()
    median = len(array) // 2 
    return array[median]