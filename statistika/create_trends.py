import numpy as np
import random

import matplotlib.pyplot as plt
import pandas as pd
from sklearn.datasets import make_regression

X,Y = make_regression(random_state=0,n_features=1, noise=10) # Ģenerē divus numpy masīvus ar troksni Y masīvā, lai simulētu reālus datus.

# Dati ir jātransformē. 
# Negatīviem nobraukumiem un patēriņiem nav nekādas jēgas.

# Šis ir vienkāršs datu mērogošanas piemērs.
X = X[:,0]
X = X + abs(X.min())
Y = Y + abs(Y.min())

# Paterins = koeficients * nobraukums + konstante
# Teiksim VW Passat 2005 uz 100 km patērē 4 - 6,3 l. 
# Funkcijas outputam jābūt ar mērvienību litri.
# Funkcijas inputs ir kilometri.
# Slīpuma koeficientam tad ir jābūt ar mērvienību, litri/kilometri
# VW Passat patēŗiņa slīpuma koeficients tad būs aptuveni 5l uz 100 km jeb vnk 0.05 l/km

# Koriģē Y vērtības, pēc defaulta make_regression() slīpuma koeficients ir 40. Lai tās atbilstu reālistiskam nobraukumam,
# Būtu jādala ar 40 un jāreizina ar 0.05 (t.i. jādala ar vēl 20). Rezultātā dala ar 800.
Y = Y/800


df = pd.DataFrame.from_dict({'X':X,'Y':Y})
df.to_csv('linear.csv')
