var drawChart;

drawChart = function() {
  var chart, data, formatter, hash, i, k, k1, month, v, v1, _i, _j, _len, _ref, _ref1, _ref2;
  data = new google.visualization.DataTable();
  data.addColumn("string", "Mês");
  _ref = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    month = _ref[_i];
    data.addRow([month]);
  }
  hash = $("#chart_div").data("chart");
  for (k in hash) {
    v = hash[k];
    data.addColumn("number", k);
    _ref1 = hash[k];
    for (k1 in _ref1) {
      v1 = _ref1[k1];
      data.setCell(parseInt(k1) - 1, data.getNumberOfColumns() - 1, parseInt(hash[k][k1]));
    }
  }
  formatter = new google.visualization.NumberFormat({
    prefix: 'R$'
  });
  for (i = _j = 1, _ref2 = data.getNumberOfColumns() - 1; 1 <= _ref2 ? _j <= _ref2 : _j >= _ref2; i = 1 <= _ref2 ? ++_j : --_j) {
    formatter.format(data, i);
  }
  chart = new google.visualization.LineChart(document.getElementById("chart_div"));
  return chart.draw(data, {
    width: 440,
    height: 240,
    pointSize: 6,
    colors: ["#DF6262", "#DF9B62", "#B34F87", "#4EB24E"],
    backgroundColor: "transparent"
  });
};

google.load("visualization", "1", {
  packages: ["corechart"]
});

google.setOnLoadCallback(drawChart);

$(document).ready(function() {
  return $("#report_type").change(function() {
    return $("#report_type_form").submit();
  });
});
