"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(num):
        """
        Your method documentation here
        """
        sum=0								  #indica cantidad de numeros a sumar
        num= int (input("ingresa un numero")) #solicita el ingreso de N numeros
        for i in range(1,num+1):			  #rango  definido 
        	sum=sum+i 						  #suma de N numeros definidos
        print(sum)							  #resultado de la suma
        # your sum code here
        
