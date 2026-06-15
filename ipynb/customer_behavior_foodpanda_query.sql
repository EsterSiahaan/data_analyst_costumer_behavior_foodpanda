-- Menghitung total penjualan (total sales) berdasarkan kategori makanan untuk mengetahui kategori dengan pendapatan tertinggi.
SELECT category, SUM(price * quantity) AS total_sales
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY category
ORDER BY total_sales DESC;


-- Menghitung jumlah pesanan dan total pengeluaran setiap pelanggan untuk mengidentifikasi pelanggan dengan nilai transaksi tertinggi.
SELECT customer_id,
       COUNT(order_id) AS total_orders,
       SUM(price * quantity) AS total_spending
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY customer_id
ORDER BY total_spending DESC;


-- Menghitung jumlah pelanggan berdasarkan status churn untuk melihat distribusi pelanggan yang aktif dan yang berhenti menggunakan layanan.
SELECT churned,
       COUNT(*) AS total_customer
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY churned;


-- Menampilkan data pelanggan berdasarkan loyalty points, frekuensi pemesanan, dan jumlah pembelian untuk menganalisis tingkat loyalitas pelanggan.
SELECT customer_id,
       loyalty_points,
       order_frequency,
       quantity
FROM project_data_analisis.customer_behavior_foodpanda
ORDER BY loyalty_points DESC;


-- Menghitung rata-rata rating setiap restoran untuk mengetahui restoran dengan penilaian pelanggan terbaik.
SELECT restaurant_name,
       AVG(rating) AS avg_rating
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY restaurant_name
ORDER BY avg_rating DESC;


-- Menghitung jumlah pesanan berdasarkan status pengiriman untuk menganalisis performa proses delivery.
SELECT delivery_status,
       COUNT(*) AS total_delivery
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY delivery_status;


-- Menghitung total penjualan setiap bulan untuk melihat tren pendapatan dari waktu ke waktu.
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(price * quantity) AS total_sales
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY month
ORDER BY month;


-- Menghitung jumlah transaksi pada setiap metode pembayaran untuk mengetahui metode pembayaran yang paling sering digunakan pelanggan.
SELECT payment_method,
       COUNT(*) AS total_transactions
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY payment_method
ORDER BY total_transactions DESC;


-- Menghitung jumlah pelanggan unik berdasarkan gender untuk mengetahui distribusi pelanggan berdasarkan jenis kelamin.
SELECT gender,
       COUNT(DISTINCT customer_id) AS total_customer
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY gender;

-- Menghitung total jumlah menu yang terjual untuk mengetahui produk yang paling diminati pelanggan.
SELECT dish_name,
       SUM(quantity) AS total_sold
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY dish_name
ORDER BY total_sold DESC;


-- Menghitung total pendapatan berdasarkan kota untuk mengetahui kontribusi revenue dari setiap wilayah.
SELECT city,
       SUM(price * quantity) AS total_revenue
FROM project_data_analisis.customer_behavior_foodpanda
GROUP BY city
ORDER BY city DESC;