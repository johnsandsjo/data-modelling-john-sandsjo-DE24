## Exercise 0.2

enteties
- book
    - title
    - author
    - ISBN
- members
    - membership_id
    - name
    - contact info

> **_NOTE_**
> 
> Using ISBN as a natural key and can be usd as primary key


<img src = "../../assets/exercise0_2b.png" width = 300>

Since many to many, we need to replace with a bridge table. In this case we could have put MemberBook as the table name. But here and sometimes you can find a more suitable name for the table. In this case; Borrow. 

<img src = "../../assets/ex0_22.png" width = 300>

### Relationship statements
- A Member can have zero, one or several borrowings
- A Borrowing can made by one and only one Member
- A Borrowing is linked to one and only one Book
- A book can be linked can be in zero, one or more Borrowings over time. 

---

## Exercise 0.3

### a) 
The entities are the Objects in this regard. 

### b)
- Customer *rents* Rental
- Rental *includes* Car

### c) 
*Describe the relationships between the entities (one-to-many, one-to-one and many-to-many).*
Cutomer to Rental is a one to many relationship. One Customer can have 1 or many rentals. But one rental can only have 1 customer
Rental to Car is one to many relationship. One Rental can only include one car but one car have many Rentals

