# coding: utf-8

Factory.define :client do |f|
  f.name "Nícolas Iensen"
end

Factory.define :company do |f|
  f.sequence(:name) {|i| "Porto Seguros #{i}"}
end

Factory.define :insurance do |f|
  f.client
  f.company
  f.value 1000
  f.commission 20
  f.renovation false
  f.endorsement false
  f.start_at Date.today
  f.kind Insurance::KINDS[:auto]
end
