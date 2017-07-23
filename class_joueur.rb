#2ème partie :
  # Gère toutes les fonctionnalités liées aux joueurs
<<<<<<< HEAD
  require_relative 'class_tableau'

  class Joueur
    # configuration des accesseurs - methode particulière
    # permet d'accéder aux variables d'instance de l'objet
    # pour les lire ou les modifier
    attr_accessor :nom, :picto


      # Initialiser
      def initialize(nom, picto, tableau)
          # Définit le type de pictogramme (par exemple X ou O)
          # On utilisera la méthode raise pour le renvoi d'exception
          # pour gérer les erreurs.
          # Ici, cela s'applique au joueur qui
          # n'utiliserait pas le bon marqueur (X ou O)
        raise "Le pictogramme est incorrecte" unless picto.is_a?(Symbol)
=======
  class Joueur
    attr_accessor :nom, :picto

      # Initialiser
      def initialize(nom="Joueur_Anonyme", picto, tableau)
          raise "Le pictogramme utilisé doit être X ou O"
          unless picto.is_a?(Symbol)
>>>>>>> ac130148123fc2a986a11a645e7f1861174f8267
          @nom = nom
          @picto = picto
          @tableau = tableau
      end


      # recuperer_position_case
      def recuperer_position_case
<<<<<<< HEAD
          # Loop
          loop do
            # interroger la position
            position = demander_position_case
            # SI format est OK (IF … TRUE)
            if position_valide(position)
                # SI le picto peut être placé sur le tableau
                # (position est OK) && (picto est OK)
                if @tableau.ajouter_un_picto(position, @picto)
                    # On interrompt la boucle (BREAK)
=======
          loop do
            position = demander_position_case
            if position_valide(position)
                if @tableau.ajouter_un_picto(position, @picto)
>>>>>>> ac130148123fc2a986a11a645e7f1861174f8267
                    break
                end
            end
          end
      end


      # demander_position_case
      def demander_position_case
<<<<<<< HEAD
          # Affiche un message demandant la position
          puts"#{@nom}(#{@picto}), cocher la case - saisir les coordonnées (x, y) :"
          # recueillir la valeurs saisie
            # on utilisera gets.strip en lieu et place de
            # gets.chomp pour supprimer les espaces avant et après la chaine

            # La methode map quant à elle permet d'effectuer le traitement des
            # éléments saisis par le joueur et de retourner le résultat
            # &: retournera le résultat de l'appel to_i sur cet élément

=======
          puts"#{@nom}(#{@picto}), cocher la case - saisir les coordonnées (x, y) :"
>>>>>>> ac130148123fc2a986a11a645e7f1861174f8267
          gets.strip.split(",").map(&:to_i)
      end


      # position valide
      def position_valide(position)
<<<<<<< HEAD
          # A MOINS QUE (UNLESS), les coordonnées sont au format appropriées
            # Le .size utilisé est un alias du .length sans doute plus commun
            # par préférence perso j'applique le .size au hash, tableau etc.
            # et .length aux chaines de caractères
            # Ceci repose sur le raisonnement suivant :
              # un objet n'a pas une longueur mais une taille
              # à l'inverse il est normal de supposer que les textes
              # ont une longueur

          if position.is_a?(Array) && position.size == 2
            true
          else
              # Message d'erreur d'affichage
=======
          if position.is_a?(Array) && position.size == 2
            true
          else
>>>>>>> ac130148123fc2a986a11a645e7f1861174f8267
              puts "La saisie de la position n'est pas au format attendu !"
          end
      end

<<<<<<< HEAD
  #FIN
end
=======

  #FIN
  end
>>>>>>> ac130148123fc2a986a11a645e7f1861174f8267
