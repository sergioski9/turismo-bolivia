class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @places = Place.all.take(4)
    @cities = ["Santa Cruz de la Sierra", "Potosí", "Oruro", "Pando", "Beni", "Tarija", "Sucre", "La Paz", "Cochabamba"]
  end
end
