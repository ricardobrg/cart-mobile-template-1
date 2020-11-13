# Challenge


### Create an APP that gets and displays information from RockSpoon's Search API

The app will have two screens:
The first one allows the user to search for items (plates) using RockSpoon Search API (https://dev-api.rockspoon.io/search/v2/composed). The search can be performed using the search text field. 
The second screen displays information when an item is selected from the list.
Please consider the mockup below as a guide on how the page should be created.
* The hide option will remove that entry from the list. Ideally this should be persistent across multiple searches. In other words, if the user decides to hide on item it won't appear anymore. 

![Mobile.png](https://github.com/spoonrocker/cart-mobile-template/blob/main/Mobile.png)

### **The APP must have** ###

* __List of items page__: You can get it using the following call:

```sh
curl --location --request POST 'https://api.rockspoon.io/search/v2/composed' \
--header 'key: {key}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{ 
    "entity": "item",
    "page": 1,
    "size": 10,
    "params": {
        "term":["burger"],
        "tags": [ "cuisine\u003eamerican"]
    }
}'
```

* The page must get and display paginated results, with endless/infinite scroll (incrementing the `page` parameter).
* For each item, the App must show: Item's name, description, picture, and number of spoons.
* When selecting an item, the item details page must be displayed.
   
  
- __Item details page__. You can get it using the following call: 
```sh
curl 'https://api.rockspoon.io/catalog/consumer/item/{itemId}' \
  -H 'Accept: application/json' \
  -H 'key: {key}'
```
  * The item's page must show: Item's name, tags, price, availableFor, and sizes and prices.


### MUST have
* Use a build system (Gradle for Android, Fastlane for iOS)
* JSON -> Object mapping (GSON / Jackson / Moshi / etc for Android, Codable for Swift)
* Material Design (Android only)

### Nice to have
* Framework for API communication (Moya + RxMoya on Swift)
* Unit tests or screen tests
* Functional tests (that browse the app as a use case)
* API and image caching
* Support orientation change without losing state

### Submission process

You must implement the code and send a pull request to the repository. 
