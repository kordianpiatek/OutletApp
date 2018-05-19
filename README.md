# OutletApp
symfony 3.4 project

This is an implementation which will display large number of products with optimized website speed. 
1. initally, 4 products will be displayed on the webpage.
2. every time LOAD MORE CLOTHES button is pressed, multiple of 4 number of products will be displayed on the page.
3. There are following filter buttons:
  All, Women, Men, Kids, Baby.
  By clicking these buttons, product will be filtered and displayed.
4. Ajax is used to filter products and load more products.
5. Photos of products are stored in images folder and file path is stored in the database rather than storing image as blob type in the database. This is due to increase the website speed. 
  
Technologies used:
Symfony 3.4 - PHP MVC Framework,
jQuery,
Bootstrap,
JavaScript,
HTML5,
AJAX Methodology,
MySQL