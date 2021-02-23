# Question 5

Based on the data and your ideas, plan strategies to double the total restaurant visitors in six months.

The strategies I find more relevant to double the total restaurant visitors go as follow:

- Restaurant availability: This strategy is born from the premise that, if there are more restaurants available, there are more visitors. It is possible that the low number of visitors in the first months of 2016 is explained by the limited availability of restaurants. This 6-month strategy seeks to at least double the base of restaurants available to reserve. The restaurant expansion strategy would be focused on diversifying options and being close to different key points in the city.

-  The fact that on average there are more visitors during week days during holidays, may imply that there would not be enough capacity to attend all visitors in a holiday. This is why the availability of restaurants during the week days during holidays can make the difference in reaching twice the number of customers.

- Target potential visitors. Investing on offering personalized recommendations and ads to potential visitors is a great option to increase visitors. I would consider on offering the top visited genres of restaurants by area.
- Understanding visitors who are loyal to the reservation system and restaurants is critical. It's regularly simpler and more effective to get somebody who has visited you once to do so again than getting new customers. I´ll focus on designing a loyalty program that rewards customers for reserving many times specially on weekdays since they are the days less visited.
- Restaurant awareness. The more people who know about you, the more customers you are likely to have. This strategy is focused on campaigns to scale content and reach new audiences. I would dedicate this plan in spreading the word about the different types of food offered by restaurants to make grow bottom genres such as Korean Food. 



# Question 6

Imagine that these restaurants are in your city (and not in Japan), what other data would you want to join in order of get more insights to increase the visitors?

The information that I would try to join is the following:

- Seasonal information beyond holidays. For example, vacation periods and big holidays periods like Christmas or Holy week.
- Weather information. It is very likely that on a rainy and cold day people will not book at cold food restaurants. This to first offer the type of food according to the climate.
- Shopping and crowded areas. A restaurant is more likely to be visited if it is in an area with a lot of traffic or with more things to do.
- Sports events. I think of a flag to establish if the restaurant has facilities to enjoy a sporting event, as well as a calendar of events.
- Additional information of each restaurant, such as whether it belongs to a large chain, if it has valet parking, if it is pet-friendly or if it has a children's area.



# Question 7

How many channels can you think of downloading a DiDi Rides APP and how will you estimate the quality and cost of each channel?



For this question, I assume a channel is the platform where the app is promoted and the customer is redirected to official mobile stores to download de app.

I can think about promoting the app in top social media platforms, such as Facebook, Instagram, Twitter and search engines as Google. Also I would consider in-app banners, for example in different mobile games. For public spaces and traditional advertising, I can think of QR codes to track downloads and quality of this channel.

I would estimate the quality of each channel by the number of downloads driven by each channel. The cost may be estimated for ads platforms by the expected impressions and click rate set by each ad. Ads in public spaces cost may depend on the magnitude of people/car traffic.



# Question 8

We want to build up a model to predict “Possible Churn Users” for DiDi Rides APP (e.g.: no trips in the past 4 weeks). Please list all features that you can think about and the data mining or machine learning model or other methods you may use for this case.



The features I think may predict possible churn users are:

- Customer Info
  - Gender
  -  Age
  - City
  - Phone code (local/foreign)
- Purchase Info
  - Frequency of rides. 
    - Rides taken the first month.
    - Avg. Monthly Rides taken after the first month.
    - Total # of rides
  - Avg. distance by ride
  - Avg. spend by ride
  - Payment methods
  - % of rides taken in weekends
  - % of rides taken in weekdays
  - % of rides taken in the morning, afternoon and night
  - ''# Coupons used or referrals
  - Distinct origins and destinations

Experience

- Avg. Reviews of rider
- Avg. Reviews by driver
- ´# of Complaints
- ´# canceled trips



Since this is a problem of binary classification (“churn”, “no churn”), a ML classification model would be appropriate for this problem. Common logarithms used for binary classification include: Logistic Regression, k-Nearest Neighbors, SVM, Decision Trees.