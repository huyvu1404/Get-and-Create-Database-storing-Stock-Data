import psycopg2
from psycopg2 import sql
from vnstock import *
from datetime import datetime, timedelta

db_info = {
    
    "dbname": "StockData",
    "user": "postgres",
    "password": ******,
    "host": "localhost",
    "port":5432
}

""" Connect to posgreSQL database """
conn = psycopg2.connect(**db_info)
cursor = conn.cursor()

""" Find timestamp of the newest record stored in database
    if there is no record in database. Return 01-01-2000 """
def newestStoredData(table_name):
    
    try:
        query = sql.SQL("""SELECT MAX(recordtime) from {}""").format(sql.Identifier(table_name))   
        cursor.execute(query)
        newest = cursor.fetchone()[0]
        if newest:
            return newest 
        else: 
            return pd.Timestamp("2000-01-01 00:00:00", tz="Asia/Ho_Chi_Minh")
        
    except psycopg2.Error as e:
        print("Error occurred: ",e)
        
""" Insert data into corresponding table """
def insertData(table_name, data):
    
    try:
        insert_query = ( """INSERT INTO  "{}" (recordtime, openprice, highestprice, lowestprice, closingprice, volume, ticker) 
                               VALUES (%s, %s, %s, %s, %s, %s, %s)"""
                           ).format(table_name)
        cursor.execute(insert_query, data)
        conn.commit() 
    except psycopg2.Error as e:
        print("Error occurred: ",e)
        conn.rollback()

""" Get data from source and store them in database """
def getAndStoreData(stock_name):
    
    df =  stock_historical_data(symbol=stock_name, start_date=str(datetime.today()-timedelta(days=3))[:10], end_date=str(datetime.today())[:10], resolution='1', type='stock')
    table_name = stock_name
    for i in df.index:
        dataInsert  = df.loc[i].copy() 
        if dataInsert["time"] > newestStoredData(table_name): # Only add new data; new data is data has time value greater than the highest one in database." 
                dataInsert[1:-1] = dataInsert[1:-1].astype(int) # Change type of column open, high, low, close, volume 
                insertData(table_name, dataInsert)

def main():
    
    stock_names = ["HPG", "SSI", "TCB", "VHM", "VIC"]
    for stock_name in stock_names:
        try:
            getAndStoreData(stock_name)       
        except Exception as e:
            print(f"Error occurred when insert data into table {stock_name}: ", e)
    cursor.close()
    conn.close()
                    
if __name__ == "__main__":
    
    main()
    
    
    


