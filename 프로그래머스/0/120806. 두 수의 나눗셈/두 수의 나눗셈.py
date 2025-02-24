def solution(num1, num2):
    answer = 0
    
    if num1 == 0 and num2 == 0:
        return 0
    else:
        return int((num1 / num2) * 1000)