# Petit script R pour étudier les plateformes de blogging
# du planete-sf.org.

# Realiser par Thom a partir des données de la pages d'accueill.

# Licence GPLv3

# Pour une execution simple sur Linux :
# R -q --vanilla < plateforme.r

# importation des donnees

p.sf = read.csv("planete-sf.csv", header=TRUE, sep=";")

# Pour afficher les donnees :
# plateforme.planete.sf
# Pour afficher la première colonne
# plateforme.planete.sf[,1]

# Nombre de blog concerne par l'étude

nombreblog = length(p.sf[,1])

blogging=c("canalblog", "hautfort", "over-blog", "blogspot", "wordpress")

# compteur compte le nombre de blog sur des plateformes de blogging
# tandis que anticompteur est là pour vérifier que je ne me gourre pas dans les comptes

compteur = 0
anticompteur = 0


for (i in 1 : nombreblog)
{
	for (j in 1 : 5)
	{
		if (p.sf[i,2] == blogging[j])
		{
			compteur=compteur + 1
		}
	}
	if (p.sf[i,2] == "perso")
	{
		anticompteur = anticompteur + 1
	}

}

nombreblog
compteur

# On verifie qu'on n'a pas necessairement faux
verif = (compteur + anticompteur == nombreblog)
verif

pourcentage = compteur / nombreblog
pourcentage

antipourcentage = 1 -  pourcentage
antipourcentage
