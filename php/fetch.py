import sys
import mysql.connector
from mysql.connector import Error
from groq import Groq  # Pastikan Anda memiliki akses ke library atau API yang sesuai

def create_connection():
    """Membuat koneksi ke database MySQL."""
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="expo"
        )
        return connection
    except Error as e:
        print("Gagal membuat koneksi:", e)
        return None

def fetch_sales_data():
    """Mengambil data penjualan dan menggabungkan dengan data produk termasuk rating."""
    conn = create_connection()
    if conn is not None:
        cursor = conn.cursor()
        try:
            cursor.execute("""
                SELECT p.nama, SUM(pen.jumlah) AS total_jumlah, SUM(pen.total_harga) AS total_harga, AVG(p.rating) AS average_rating
                FROM penjualan pen
                JOIN produk p ON pen.id_produk = p.id_produk
                GROUP BY pen.id_produk
                ORDER BY SUM(pen.total_harga) DESC
            """)
            sales_data = cursor.fetchall()
            return sales_data
        except Error as e:
            print("Error:", e)
        finally:
            cursor.close()
            conn.close()
    else:
        print("Koneksi database gagal.")

def get_ai_recommendation(sales_data, user_prompt):
    """Mengirim data ke AI untuk mendapatkan rekomendasi produk berdasarkan penjualan dan rating."""
    product_details = ', '.join([f"{nama_produk} dengan total penjualan {total_sales} dan rating rata-rata {average_rating:.1f}" for nama_produk, _, total_sales, average_rating in sales_data])
    messages = [
        {
            "role": "system",
            "content": "Anda adalah AI rekomendasi untuk perawatan kesehatan kulit. Jawab pertanyaan manajer.",
        },
        {
            "role": "user",
            "content": f"{user_prompt} Berdasarkan data penjualan dan rating kita, produk dengan penjualan dan rating terbaik adalah {product_details}.",
        }
    ]
    client = Groq(api_key="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")
    chat_completion = client.chat.completions.create(messages=messages, model="llama3-8b-8192")
    return chat_completion.choices[0].message.content

def main():
    if len(sys.argv) > 1:
        user_prompt = sys.argv[1]
    else:
        user_prompt = "Apa rekomendasi produk selanjutnya?"

    sales_data = fetch_sales_data()
    if sales_data:
        recommendation = get_ai_recommendation(sales_data, user_prompt)
        print(recommendation)
    else:
        print("Tidak ada data penjualan yang ditemukan.")

if __name__ == "__main__":
    main()
