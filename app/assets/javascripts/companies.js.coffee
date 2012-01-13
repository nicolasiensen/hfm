# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

drawChart = ->
  data = new google.visualization.DataTable()

  data.addColumn "string", "Mês"
  for month in ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    data.addRow [month]

  hash = $("#companies_chart").data("chart")
  for k,v of hash
    data.addColumn "number", k
    for k1,v1 of hash[k]
      data.setCell(parseInt(k1) - 1, data.getNumberOfColumns() - 1, parseInt(hash[k][k1]));

  formatter = new google.visualization.NumberFormat({prefix: 'R$'});

  for i in [1..(data.getNumberOfColumns() - 1)]
    formatter.format(data, i);

  chart = new google.visualization.LineChart(document.getElementById("companies_chart"))
  chart.draw data,
    width: 940
    height: 200
    pointSize: 6
    colors: ["#DF6262", "#4FB34F", "#B34F87"]
    backgroundColor: "transparent"

google.load "visualization", "1", packages: [ "corechart" ]
google.setOnLoadCallback drawChart
