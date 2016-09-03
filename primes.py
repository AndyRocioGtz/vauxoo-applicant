"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num):
        """
        Your method documentation here
        """
        if num < 2:  # si este numero es menor que 2 no es primo
            return False  # por lo tanto devolvera Falso
        for div in range(2, num):  # un rango desde el  dos hasta
                                   # el numero que se define
            if num % div == 0:  # si el resto da 0 no es primo,
                return False    # por lo que devolvera Falso
        return True  # de lo contrario regresara True
