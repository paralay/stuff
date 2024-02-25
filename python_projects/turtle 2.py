from turtle import *
class patern:
    def __init__(self, length,c1, c2, c3, active_color, pensize, augment, colorsize, degree, background): 
        
#------------------------------------------------------------------------------------------------------#
        #arguments : - length la longeur de la première ligne
        # - c2, c1 et c3; 3 arguments colors au format 255 (superieur à 0 inferieur à 255)
        # - active_color (de 0 à 2) qui correspond a la première couleur active et inactive_color (de 0 à 2) la couleur qui se désactive
        # (active_color ne doit pas etre de la même valeur que a inactive color)
        # - pensize la première taille du crayon
        # - augment est la taille que le crayon vas augmenter
        # - colorsize est la taille du dégradé de couleur (!=0)
        # - degree est l'inclinaison que vas faire le dessin
        # - bgcolor est la couleur du fond en hexa
        #------------------------------------------------------------------------------------------------------#

        self.back = background
        bgcolor(self.back)
        
        colormode(255)
        self.L = length
        self.switch = False
        self.s2 = active_color
        if self.s2>1:
            self.s3 = 0
        else:
            self.s3 = self.s2+1
        self.pensize = pensize
        self.augment = augment
        self.colorsize = colorsize
        self.degree = degree
        self.liste = [c1+self.colorsize, c2+self.colorsize, c3+self.colorsize]
#------------------------------------------------------------------------------------------------------#
#Initialisation, voir ci-dessus pour arguments
#------------------------------------------------------------------------------------------------------#
        
    def p1(self):
        for i in range(4):
            pencolor((self.liste[0], self.liste[1], self.liste[2]))
            
            forward(self.L)
            left(90)
            speed(200)
    
#------------------------------------------------------------------------------------------------------#       
#P1 est la methode qui dessine un carré
#------------------------------------------------------------------------------------------------------#
            
    def p2(self):
        bgcolor(self.back)
        pensize(self.pensize)
        self.p1()
        self.L+=3
        left(self.degree)
        
        self.color(self.liste[self.s2])
        
        if self.switch:
            self.liste[self.s2]+=self.colorsize
        else:
            self.liste[self.s2]-=self.colorsize

        
        if self.liste[self.s3] > self.colorsize+1:
            self.liste[self.s3]-=self.colorsize
            

#------------------------------------------------------------------------------------------------------#        
#P2 dessine les carrés a l'infini tout en changant la couleur grace a la methode color()
#------------------------------------------------------------------------------------------------------#

    def color(self, x):
        if x < self.colorsize+5:
            self.switch = True
        elif x > 250-self.colorsize:
            self.switch = False
            self.pensize +=self.augment
            
            if self.s2 < 2:
                self.s2 +=1
            else:
                self.s2 = 0
            if self.s3 < 2:
                self.s3 += 1
            else:
                self.s3 = 0
     
#------------------------------------------------------------------------------------------------------#
#La methode color() définie quelle couleur mettre et comment la changer
#------------------------------------------------------------------------------------------------------#
                
        
dessin0 = patern(10,1,1,1,0,4,1,5,2,"#000000")
dessin1 = patern(5, 1,50,1 ,2,7,4,10,35,"#FFFFFF")
dessin2 = patern(5, 1,100,1 ,1,15,8,10,45,"#03fcec")
x = int(input("quel dessin faire ?" ''))
reset()
if x == 1:
    for i in range(200):
        dessin0.p2()
elif x == 2:
    for i in range(70):
        dessin1.p2()
else:
    for i in range(60):
        dessin2.p2()










