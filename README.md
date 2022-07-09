# search-api

### It provides REST API to search products by search keyword and get results matching against below fields:
    - products 
        - name 
        - short description 
        - full description
    - categories
        - name
    - tags
        - name    

### Prerequisites to run this API in your local environment:
    - Must have Java 11
    - Must have Maven installed (to download required dependencies)
    - MySQL server (5.7.X or above versions)
    - Create database with name "eshopping_centre" and import scehma.sql & data.sql in that database (You can find these .sql files in db named folder under root directory.
    - Once above database setup is done, you can clone the code from this repository & setup in your local IDE. 
    - Install all mvn dependencies & adjust web server & database server ports in application.properties file
    - Run the SearchApiApplication file & access the search api at this endpoint: 
        - /api/v1/products/search?query=apple&page=0&size=1&sortBy=name


### Designed database reference ERD
    - ERD_eShoppingCentre.pdf (you can this ERD in root directory)


