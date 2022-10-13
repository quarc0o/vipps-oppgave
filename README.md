# Vipps Summer Internship - Technical case - iOS

This option for the assignment will be delivered as an iOS app.

You can use this project as a starting point or create your own. You can use any dependencies you deem neccessary (SPM or Cocoapods).


This project supports both UIKit and SwiftUI, and you can use any of these frameworks.
_Note:_ You can choose to use UIKit with either storyboards, xibs or programmatically. It's set up to run the storyboard but you can easily change the initial `UIViewController` in the `AppDelegate`.

To run a specific framework (UIKit or SwiftUI) select the apropriate build scheme.

<img width="306" alt="image" src="https://user-images.githubusercontent.com/3596859/195642458-540134f7-a89a-4555-b13a-f5b0babd67dd.png">


## The task  
In this task you will be retrieving information from the [Rest countries API](https://restcountries.com/) and showing it in the app.

### Part 1:  
Using an HTTP GET method, query [https://restcountries.com/v2/name/{name}](https://restcountries.com/v2/name/%7Bname%7D), where you replace _{name}_ with the name of a country of your choice.

Parse the response you get and use it to show the following in the app:
* The country name  
* The country capital  
* The number of alternative spellings of the country name (`altSpellings`)

### Part 2:  
Add a search field and a button to the app so that the user can search for any country they want, and show the data from part 1.

The UI does not have to be advanced, a simple input field with a button and some text fields is enough.
