# assignment

Challenges:
While decoding data of a HTTP response of a API there were many discrepancies such as missing values etc.
So I tried to use null checking etc but the issue was not resolving. In this yummly API there were food images which i wanted to use as 
cover for the recipe cards.

I tried two more API and various problem arose.
I finally found an API with decent data . (Recipe by API-Ninjas).
I then Used the API to make a list of Recipe titles and number of servings.
I then provided with ingredient list and instructions for the recipe.

# Approach

created main.dart file and added a home page and a detail page.
created a recipe widget and detail widget seperately after viewing the API response structure and data.
created a recipe class in which we will store the data from the response after decoding.
created a recipe api file in which I collect json response from API after stting up API key and host.
From there the json response is decoded and then made into a list of recipe class which is showed on the home page.
Built a list of items with LISTview builder and added a gesture detector to detect tapping o the widget.
After the widget is tapped navigator pushes the detail screen with a list of passed arguments.
These passed arguments then are used to display all information on the detail screen.
2

apk file is available for use as app.apk
