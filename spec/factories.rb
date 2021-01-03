# coding: utf-8

FactoryBot.define do
  factory :client do
    sequence(:name) {|i| "Nícolas Iensen #{i}" }
  end

  factory :company do
    sequence(:name) {|i| "Porto Seguros #{i}"}
  end

  factory :insurance do
    client
    company
    value { 1000 }
    commission { 20 }
    renovation { false }
    endorsement { false }
    start_at { Date.today }
    kind { Insurance::KINDS["auto"] }
  end
end
