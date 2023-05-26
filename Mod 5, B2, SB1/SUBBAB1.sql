-- Pada pelayanan terdapat customer yang mendapatkan pinalty yang diakibatkan telat membayar.
-- Carilah customer-customer id dan jumlah pinalty dari yang dibayarkan oleh customer yang mendapatkan pinalty.

SELECT customer_id, SUM(pinalty)
from invoice
GROUP BY customer_id
HAVING SUM(pinalty)>20000

-- Pada gambar diatas, untuk mendapatkan data customer dan data harga denda yang harus di bayar kita harus menulis kode SELECT customer_id, SUM(pinalty). 
-- Kemudian kita tuliskan kode FROM invoice, yang artinya kita akan mendapatkan data transaksi, 
-- lalu kita tulis kode GROUP BY agar kita bisa mengelompokkan baris yang memiliki nilai yang sama ke dalam baris  ringkasan, 
-- lalu HAVING SUM(pinalty)>20000, agar daftar harga yang harus di bayar terkelompokkan dengan data yang ada di customer_id.

-- data bisa dilihat pada dqlab sql module 5 capter 2  