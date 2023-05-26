SELECT t1 .Name as name, 
group_concat(t3.product_name) FROM customer t1 JOIN subscription t2 ON t1.id = t2.customer_id JOIN product t3 ON t2.product_id=t3.ID WHERE t1.id IN (
  SELECT customer_id FROM subscription GROUP BY customer_id HAVING COUNT(customer_id) >1 
)
GROUP BY t1.name;

-- Pertama yang harus kita lakukan untuk mendapatkan data seperti pada gambar diatas yang harus kita lakukan adalah kita menggabungkan data dari ‘product_name’ dari table ‘product’. 
-- Lalu kita lakukan join diantara table customer, subscription dan product dengan menggunakan kode ‘JOIN’. 
-- Kemudian kita lakukan query menggunakan ‘WHERE’ untuk mengambil data ‘customer_id’ yang memiliki data lebih dari 1. 
-- Lalu yang terakhir, kita menggunakan GROUP BY untuk mengelompokkan hasil berdasarkan ‘customer_id’.

-- data bisa dilihat pada dqlab sql module 5 capter 2  