https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-dense_rank-function/
select price , dense_rank() over( order by price_list desc ) price_rank from product;
// using partiton by 
//category wise price rank
select price, dense_rank() over (partiton by category order by price_list desc ) price_rank from product ;
