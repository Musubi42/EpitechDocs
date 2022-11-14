---
sidebar_position: 3
---

# Back

To add an API call go to `useless_Dashboard/api/local/src/main/java/useless_dashboard/api/controller`
Add a file controller name like so `api_yourServiceName.java`

In this newly created file add this template call API code :
``` java
package useless_dashboard.api.controller;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/yourServiceName")
public class ApiYourServiceName {
    @CrossOrigin(origins = "*")
    @GetMapping
    public @ResponseBody ResponseEntity<?> getYourSericeName(@RequestParam(required = false) String param) throws Exception {
        // If no category is specified, return a random joke
        String url = param == null ? "URL_to_your_service_name" : "URL_to_your_service_name?param=" + param;
        HttpRequest request = HttpRequest.newBuilder()
		.uri(URI.create(url))
		.header("accept", "application/json")
		.header("X-RapidAPI-Key", "API_KEY_of_your_service")
		.header("X-RapidAPI-Host", "host_of_your_api_service")
		.method("GET", HttpRequest.BodyPublishers.noBody())
		.build();
        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
        return ResponseEntity.ok(response.body());
    }
}
```

Run the API, and call to endpoint, if you get a JSON response well done, if not go to stackoverflow.