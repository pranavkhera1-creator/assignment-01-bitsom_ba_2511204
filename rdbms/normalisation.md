Normalisation is the process of dividing a large table into smaller related tables to reduce repeated data and improve consistency . 

Insert Anomaly:  
insert anomaly occurs when new information cannot be added without entering unrelated data. for example : in the csv file, product details are stored in columns product_id , product_name, category and unit_price together with order details. If a new product such as product_id P0009 needs to be added but no customer has ordered it yet , it cannot be inserted because order_date and quantity are also required in the same row

Update Anomaly: 
update anomaly occurs when the same information appears in multiple rows and must be updated everywhere. For example : sales_rep_id SR03 with sales_rep_name Ravi Kumar appears in multiple rows . if Ravi Kumar changes his email in column sales_rep_email, every row containing SR03 must be updated. Missing one row will create inconsistent data. 

Delete Anomaly: 
delete anomaly occurs when deleting one row also removes important related data. For example : if the only row containing product_id P008 (Webcam) is deleted , product details such as product_name , category and unit_price may also be lost from the table. 


