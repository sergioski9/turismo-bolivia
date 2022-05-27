class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @places = Place.all.take(4)
    @cities = ["Santa Cruz de la Sierra", "Potosí", "Oruro", "Pando", "Beni", "Tarija", "Sucre", "La Paz", "Cochabamba"]
    @query = params[:city]

    @city = Place.where(city: params[:places][:city]) if params[:city].present?

    if params[:query].present?
      sql_query = " \
        places.name @@ :query \
        OR places.city @@ :query \
        OR places.description @@ :query \
        OR categories.name @@ :query \
        OR publications.user.firt_name @@ :query \
        OR publications.user.last_name @@ :query \
      "
      @places = Place.joins([:publication, :place]).where(sql_query, query: "%#{params[:query]}%")
    end
  end
end
