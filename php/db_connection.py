import mysql.connector
from mysql.connector import Error

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
