# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create :name => "Bradesco"
Company.create :name => "Generali"
Company.create :name => "Confiança"
Company.create :name => "Sul América"
Company.create :name => "Chubb"
Company.create :name => "Porto Seguros"
Company.create :name => "Azul"
Company.create :name => "Itaú"
Company.create :name => "Mapfre"
Company.create :name => "Mutual"
Company.create :name => "Excelsior"
Company.create :name => "Liberty"
Company.create :name => "HDI"
Company.create :name => "Met Life"
Company.create :name => "Tokio"
Company.create :name => "Unibanco"
Company.create :name => "Suhai"

kinds = {
  "auto" => "Auto",
  "auto " => "Auto",
  "carta verde" => "Carta Verde",
  "cartao" => "Cartão",
  "cond" => "Condomínio",
  "empresarial" => "Empresarial",
  "fianca" => "Fiança",
  "previdencia" => "Previdência",
  "r.civil" => "Responsabilidade Civil",
  "resid" => "Residência",
  "viagem" => "Viagem",
  "vida" => "Vida"
}

companies = {
  "azul" => "Azul",
  "brad" => "Bradesco",
  "chubb" => "Chubb",
  "conf" => "Confiança",
  "gen" => "Generali",
  "hdi" => "HDI",
  "itau" => "Itaú",
  "mapfre" => "Mapfre",
  "met life" => "Met Life",
  "porto" => "Porto Seguros",
  "tokio" => "Tokio",
  "unib" => "Unibanco"
}
