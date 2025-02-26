import math

def solution(numer1, denom1, numer2, denom2):
    common_denom = denom1 * denom2 # 공통 분모
    numer = numer1 * denom2 + numer2 * denom1 # 분자
    
    gcd = math.gcd(numer, common_denom) # numer, common_denom의 최대공약수
    return [numer // gcd, common_denom // gcd] # 기약분수