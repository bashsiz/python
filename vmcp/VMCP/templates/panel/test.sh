#!/bin/bash

time_str=(12h , 1d , 2d , 3d , 7d , 1M , 2M , 3M , 1y , 2y)

for _time_str in ${time_str[@]};
do
html_text="""

<!DOCTYPE html>
<html>
<head>
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
<style>
body {
  margin: 0;
  font-family: \"Lato\", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 9%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

div.content {
  margin-left: 9%;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

</style>
</head>
<body>


<div class=\"topnav\">
  <a class=\"active\" href=\"/l12h.html\">Home</a>
</div>

<div style=\"padding-left\">
<div class=\"sidebar\">
  <a class=\"active\" href=\"/mng1_$_time_str.html\">Last 12 Hours</a>
  <a href=\"/mng1_1d.html\">Last 1 Day</a>
  <a href=\"/mng1_2d.html\">Last 2 Day</a>
  <a href=\"/mng1_3d.html\">Last 3 Day</a>
  <a href=\"/mng1_7d.html\">Last 7 Day</a>
  <a href=\"/mng1_1M.html\">Last 1 Month</a>
  <a href=\"/mng1_2M.html\">Last 2 Month</a>
  <a href=\"/mng1_3M.html\">Last 3 Month</a>
  <a href=\"/mng1_1y.html\">Last 1 Year</a>
  <a href=\"/mng1_2y.html\">Last 2 Year</a>
</div>

<div class=\"content\">
<iframe src=\"http://log.cc.rasana.ir/app/kibana#/dashboard/cbdd0260-f622-11e8-b9f8-0fcef5068bf8\?embed=true&_g=(refreshInterval:(pause:!f,value:5000),time:(from:now-$_time_str,mode:quick,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:15,i:'1',w:48,x:0,y:0),id:'7985f820-f611-11e8-b9f8-0fcef5068bf8',panelIndex:'1',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'2',w:48,x:0,y:30),id:'2a3dddf0-f152-11e8-9211-576e1cf2add5',panelIndex:'2',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'3',w:24,x:24,y:45),id:'9e3dc260-f152-11e8-9211-576e1cf2add5',panelIndex:'3',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'4',w:24,x:0,y:45),id:c35de5e0-f55b-11e8-b35b-f34bcaf1d223,panelIndex:'4',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'5',w:48,x:0,y:15),id:fb9c9a40-f624-11e8-b9f8-0fcef5068bf8,panelIndex:'5',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'7',w:24,x:24,y:60),id:'483d8110-f153-11e8-9211-576e1cf2add5',panelIndex:'7',type:visualization,version:'6.4.0'),(embeddableConfig:(),gridData:(h:15,i:'8',w:24,x:0,y:60),id:d32b3050-f154-11e8-9211-576e1cf2add5,panelIndex:'8',type:visualization,version:'6.4.0')),query:(language:lucene,query:''),timeRestore:!f,title:mng,viewMode:view)\" height=\"100%\" width=\"100%\"></iframe>
</div>
</div>

</body>
</html>

"""

#echo "$html_text" > "mng1_"$_time_str".html"

done 
