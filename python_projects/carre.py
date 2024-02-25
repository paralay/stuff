# Fonction pour générer une liste de carrés
def generer_carres(n):
    carres = [i**2 for i in range(1, n+1)]
    return carres

# Demander à l'utilisateur le nombre de carrés à générer
nombre_carrés = int(input("Combien de carrés souhaitez-vous générer? "))

# Générer la liste de carrés
liste_carres = generer_carres(nombre_carrés)

# Afficher la liste de carrés
print(f"Liste des carrés jusqu'à {nombre_carrés}: {liste_carres}")