---
sidebar_position: 2
---

# Front

## Add a new widget

Step to add a new widget [^1]


- <input type="checkbox"/><a href="#1-create-a-service-button">1 Create a service button</a>
- <input type="checkbox"/><a href="#2-create-a-widget-for-the-dashboard">2 Create a widget for the dashboard</a>
- <input type="checkbox"/><a href="#3-create-a-get-function">3 Create a get function to the service api</a>
- <input type="checkbox"/><a href="#4-add-a-click-listener">4 Add a click listener on the button</a>

For the first step add the code in this file `useless_dashboard/public/Dashboard/index.html`.
For all the other step, the code must be added to this file `useless_dashboard/public/Dashboard/index.js`.


### 1 Create a service button

The service must be the exact HTML, change the ID, Path for the logo and the name. But nothing else.

``` html
<li class="bg-dark_lighter rounded-xl">
    <div class="mb-5 flex items-center pl-3 py-3 pr-2 text-gray-50 rounded-xl hover:bg-thirdary cursor-pointer" id="name_of_the_service">
        <span class="inline-block mr-3">
            <svg class="text-white w-5 h-5" viewbox="0 0 525 525" fill="none" xmlns="http://www.w3.org/2000/svg">PATH_for_the_logo_of_your_widget</svg>
        </span>
        <span>name_of_the_service</span>
    </div>
</li>
```


### 2 Create a widget for the dashboard

Under the functions `addJokes, addNews, addSatellite, addStocks` add your function.
Based on the upper function create the different element to create your widget. <br/><br/>
It must have a gear logo on the top right of the widget, to let the user update the widget


### 3 Create a get function

Create the get function based on this example :

``` javascript
function getYourServiceName(param = "", refresh = 10, key = "") {
    var URL = param == "" ? "http://localhost:9090/api/service" : `http://localhost:9090/api/service?param=${param}`;
    $.ajax({type: "GET", url: URL, data: "", dataType: "json", success: function(data) {
        const Updates = {};
        var Key = key == "" ? push(child(ref(database), `${auth.currentUser.uid}/Widgets/Service`)).key : key;
        // Update the UI
        Updates["Refresh"] = refresh;
        // Other field to update
        update(ref(database, `${auth.currentUser.uid}/Widgets/Service/${Key}`), Updates);
    }, error: function(data) {
    
    }});
}
```

### 4 Add a click listener

Add the click event listener for your service, to call the API,
``` javascript
$("#yourServiceName").click(function() {
    getYourServiceName();
});
```

[^1]: Follow along by clicking on the checkbox, once you have finiched a step.