"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num):
        """
        Your method documentation here
        """
        suma = 0  # indica cantidad de numeros a sumar
        for val in num: # rango  definido
            suma = suma + val  # suma de N numeros definidos
        return suma
