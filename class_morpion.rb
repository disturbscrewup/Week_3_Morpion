#1ère partie :
  # Contrôle le jeu
  require_relative 'class_joueur'
  require_relative 'class_tableau'

  class Morpion
#*******************************************************************
          #Le mot clef 'class' définit une classe
          #La class doit OBLIGATOIREMENT commencer par une MAJUSCULE
          #Si vous ne respectez pas cela la class ne sera pas prise
          #en compte
#*******************************************************************
      # Initialiser
      def initialize
#*******************************************************************
          # def permet de déclarer des fonctions (méthodes)/procédures
          # chaque class doit contenir une fonction 'initialiser'
          # Initialiser est le constructeur.
          # Le constructeur sert à initialiser les objets créés par l'opérateur
          # new
#*******************************************************************

          # Mettre en place le tableau
          @tableau = Tableau.new

#*******************************************************************
          # Variable de classe :
            # Une variable de class doit avoir comme préfixe le caractère '@'
            # Ceci afin qu'elle soit accessible dans l'intégralité de la class
          # Création objet de classe :
            # Syntaxe : nom_de_objet = nom_de_la_classe.new
#*******************************************************************


          # Mettre en place les joueurs
          @joueur_x = Joueur.new("Madame X", :x, @tableau)
          @joueur_y = Joueur.new("Mister Y", :o, @tableau)
          # Assigner le joueur de départ
          @joueur_actuel = @joueur_x
      end


      # jouer
      def jouer
          # boucle Loop
          loop do
            # Appelez la variable d'instance @tableau
            @tableau.retourne_etat_du_tableau
            # Demande les coordonnées du joueur actuel
            @joueur_actuel.recuperer_position_case
            # Interrompt la boucle SI le jeu est terminé
            break if perdu
            # Changer de joueur
            switch_joueur
          end
        end


      # perdu
      def perdu
          # Vérifier victoire
          # Vérifier match nul
          victoire || match_nul
      end


      # victoire
      def victoire
          # la condition IF indique si le symbole du joueur actuel a
          # Une combinaison gagnante ?
          #(class Tableau method combinaison_gagnante)
          if @tableau.combinaison_gagnante?(@joueur_actuel.picto)
              # Affiche un message de victoire
              @tableau.retourne_etat_du_tableau
              puts "Félicitation #{@joueur_actuel.nom}, vous avez gagné !"
            true
          else
            false
          end
        end


      # match_nul
      def match_nul
          # SI la class Tableau nous retourne que le tableau est complet
          if @tableau.complet?
            # Afficher un message de tirage
            puts "Pas de chance, match nul"
            true
          else
            false
          end
        end


      # switch_joueur
      def switch_joueur
          # joueur_x >> joueur_y vice versa
          if @joueur_actuel == @joueur_x
             @joueur_actuel = @joueur_y
          else
             @joueur_actuel = @joueur_x
          end
      end

  #FIN
  end
