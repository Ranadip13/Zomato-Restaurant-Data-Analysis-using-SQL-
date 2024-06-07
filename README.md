# Zomato-Restaurant-Data-Analysis-using-SQL
The Zomato Restaurant Data Analysis initiative is dedicated to conducting an in-depth exploration and examination of restaurant data sourced from Zomato, a prominent online platform for food delivery and restaurant discovery. By harnessing the power of SQL for data manipulation and querying, this endeavour strives to unveil valuable insights that can guide strategic business decisions and foster a deeper comprehension of the restaurant landscape within a specific geographic area. Through meticulous analysis of this comprehensive dataset, the project aims to uncover patterns, trends, and opportunities that can potentially shape the future course of the industry and enhance the overall dining experience for consumers.

Datasets: This data analysis project utilizes two datasets.
1.	Zomato – Containing comprehensive details of restaurants affiliated with Zomato. Containing 9551 rows and 13 columns: RestaurantID, Res_identify, CountryCode, City, Cuisines, Has_Table_booking, Has_Online_delivery, Is_delivering_now, Switch_to_order_menu, Price_range, Votes, Average_Cost_for_two, Rating
2.	CountryTable – containing 15 rows and 2 columns: CountryCode, Country

Through this comprehensive analysis, the project aims to offer a deeper understanding of the Zomato restaurant ecosystem, enhance user experiences, and optimize business strategies.
While analyzing Zomato restaurant data, the focus was on the following aspects:
-	City Ratings Analysis: Identified cities with poor restaurant ratings to help Zomato target areas for improvement.
-	Affordable and Highly Rated Restaurants: Enlisted the most affordable and highly rated restaurants city-wise to assist users in finding value-for-money dining options.
-	Offline Services Evaluation: Identified restaurants with poor offline services to enhance customer satisfaction.
-	Restaurant Categorization: Grouped restaurants based on average cost for two into categories such as Luxurious Expensive, Very Expensive, Expensive, High, Medium High, and Average, then quantified the number of restaurants in each category.
-	Top Rated Restaurants: Listed the top 5 restaurants with the highest rating and maximum votes to highlight premier dining options.
-	High-Rated Cities Identification: Identified cities with at least 3 restaurants having ratings >= 4.9, sorted alphabetically in case of ties.
-	Top Countries by Restaurant Count: Identified the top 5 countries with the most restaurants linked with Zomato.

### Results:
	In the above analysis, cities with poor restaurant ratings and restaurants with poor offline services were identified. This analysis can assist Zomato in taking necessary actions to enhance their services in those areas.
	Additionally, the most affordable and highly rated restaurants were identified city-wise, and restaurants were categorized into various cost brackets, such as Luxurious Expensive, Very Expensive, Expensive, High, Medium High, and Average. This categorization aids customers in selecting restaurants according to their preferences.
	Furthermore, the top 5 countries with the highest number of restaurants linked with Zomato were identified. This information enables Zomato to concentrate on countries with a low number of restaurants linked with their platform to expand their business.
	Moreover, Zomato can assist its customers by providing information about the best restaurants offering online delivery in any city or allowing customers to order specific cuisines from highly rated restaurants in any city.
