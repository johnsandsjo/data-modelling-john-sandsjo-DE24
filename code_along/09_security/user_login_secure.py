from connect_postgres import connect_postgres
from sqlalchemy import text

username = input("Enter username: ")
password = input("Enter password: ")

with connect_postgres().connect() as conn:
    result = conn.execute(
        text(
            #remove the f string
            "SELECT * FROM users WHERE username = '{username}' AND password = '{password}';"
            ), {"username": username, "password": password}
        ).fetchall()
    
    if result: #exploit truthy here with a filled vs not tuple
        print("login successful")
        print("you can eat all the icecream you want")
    else:
        print("another failure")

# bob' OR '1' ='1 
# ' OR '1' = '1' --
# '; DROP TABLE users; --