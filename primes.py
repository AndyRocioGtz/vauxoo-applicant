"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(num):
        """
        Your method documentation here
        """
        if num < 2; 			#si este número es menor que 2 no es primo
        	return False		#por lo tanto devolverá Falso
        for i in range(2,num):	#un rango desde el  dos hasta el numero que se defina
        	if num % i == 0:	#si el resto da 0 no es primo, por lo que devolerá Falso
        		return False
        return True				#de lo contrario regresará True
    print is_prime(1)			#imprime resultado
        # your primes code here
