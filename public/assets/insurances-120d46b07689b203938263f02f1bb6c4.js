var drawChart;drawChart=function(){var e,t,n,r,i,s,o,u,a,f,l,c,h,p,d,v;t=new google.visualization.DataTable,t.addColumn("string","Mês"),p=["Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"];for(l=0,h=p.length;l<h;l++)u=p[l],t.addRow([u]);r=$("#chart_div").data("chart");for(s in r){a=r[s],t.addColumn("number",s),d=r[s];for(o in d)f=d[o],t.setCell(parseInt(o)-1,t.getNumberOfColumns()-1,parseInt(r[s][o]))}n=new google.visualization.NumberFormat({prefix:"R$"});for(i=c=1,v=t.getNumberOfColumns()-1;1<=v?c<=v:c>=v;i=1<=v?++c:--c)n.format(t,i);return e=new google.visualization.LineChart(document.getElementById("chart_div")),e.draw(t,{width:440,height:240,pointSize:6,colors:["#DF6262","#DF9B62","#B34F87","#4EB24E"],backgroundColor:"transparent"})},google.load("visualization","1",{packages:["corechart"]}),google.setOnLoadCallback(drawChart),$(document).ready(function(){return $("#report_type").change(function(){return $("#report_type_form").submit()})});