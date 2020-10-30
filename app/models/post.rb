class Post < ApplicationRecord

  #Titel und Inhalt müssen vorhanden sein
  validates :titel, :content, :presence => true

  #Titel soll eine min. Länge von 5 Zeichen haben
  validates :titel, :length => { :minimum => 5 }

  #Titel soll einzigartig sein
  validates :titel, :uniqueness => true
end
