##EkumenInitialProject

App with tools: front-end( Bootstrap and AngularJS), back-end(PHP), and a little simulator html for the App.

This app is a "Monitoring System Overflows Lakes/Rivers", this web shows data about altitude in 7 rivers/lagoons to monitoring its overflows. Also this project has a web test "simulatorSensors.html" to simulate the sending of data since the hardware.

**Components**

* index.html - principal web.
* app.module.js - principal module.
* control.controller.js - principal controller
* googlemap.factory.js - service for management google maps
* plot.factory.js - service for draw grpahic in real time.
* server.factory.js - service for get data about sensors.
* stylesMain.css - styles add for this web.
* getDataDevices.php - get data of database, information about all devices and current altitude of river/lagoon
* bufferData.php - receive data of hardware and save this data in database.

**Libraries, Api and Frameworks Reference**

* Bootstrap 3.3.6 - [http://getbootstrap.com/]
* AngularJS 1.4.8 - [https://angularjs.org/]
* Jquery 1.11.3 - [https://jquery.com/]
* google maps - [https://developers.google.com/maps/documentation/javascript/]
* plot jquery - [http://www.flotcharts.org/]
* navbar generation - [http://work.smarchal.com/twbscolor/css]

**Test**

You can test this project of 2 different ways:

* import the database "initekumenapp.sql" and change "user" and "password" in the files PHP.
```sh
//$connection = mysql_connect("Address Host","user","password");
$connection = mysql_connect("localhost","root","pablo");
```
* or enter to this page to test it [http://www.zacetrex.com/pabloFiles/AppStartEkumen/src/client] and optionally this page [http://www.zacetrex.com/pabloFiles/AppStartEkumen/src/client/test/simulatorSensors.html] to simulate the send of data.

