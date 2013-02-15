# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# function drawVisualization() {
#   var data = new google.visualization.DataTable();
#   data.addColumn('string', 'Mes');
#   data.addColumn('number', 2010);
#   data.addColumn('number', 2011);
#   data.addRow(['Janeiro', 100,123]);
#   data.addRow(['Fevereiro', 100,123]);
#   data.addRow(['Março', 100,123]);
#   data.addRow(['Abril', 100,123]);
#   data.addRow(['Maio', 100,123]);
#   data.addRow(['Junho', 100,123]);
#   data.addRow(['Julho', 100,123]);
#   data.addRow(['Agosto', 100,123]);
#   data.addRow(['Setembro', 100,123]);
#   data.addRow(['Outubro', 100,123]);
#   data.addRow(['Novembro', 100,123]);
#   data.addRow(['Dezembro', 100,123]);
#   
#   var formatter = new google.visualization.TableNumberFormat(
#       {prefix: "R$"});
#   formatter.format(data, 1); // Apply formatter to second column
#   formatter.format(data, 2);
#   
#   var ac = new google.visualization.AreaChart(document.getElementById('visualization'));
#   ac.draw(data, {
#     title : 'Monthly Coffee Production by Country',
#     isStacked: true,
#     width: 600,
#     height: 400
#   });
# }

drawChart = ->
  data = new google.visualization.DataTable()

  data.addColumn "string", "Mês"
  for month in ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    data.addRow [month]

  hash = $("#chart_div").data("chart")
  for k,v of hash
    data.addColumn "number", k
    for k1,v1 of hash[k]
      data.setCell(parseInt(k1) - 1, data.getNumberOfColumns() - 1, parseInt(hash[k][k1]));

  formatter = new google.visualization.NumberFormat({prefix: 'R$'});

  for i in [1..(data.getNumberOfColumns() - 1)]
    formatter.format(data, i);

  chart = new google.visualization.LineChart(document.getElementById("chart_div"))
  chart.draw data,
    width: 440
    height: 240
    pointSize: 6
    colors: ["#DF6262", "#DF9B62", "#B34F87", "#4EB24E"]
    backgroundColor: "transparent"

google.load "visualization", "1", packages: [ "corechart" ]
google.setOnLoadCallback drawChart

$(document).ready ->
  $("#report_type").change ->
    $("#report_type_form").submit()
