// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
{
product_id: "E1001",
name: "Samsung 55 inch Smart TV",
category: "Electronics",
price: 45000,
brand: "Samsung",
warranty_years: 2
},

{
product_id: "C2001",
name: "Men's Denim Jacket",
category: "Clothing",
price: 2999,
brand: "Levis"
},

{
product_id: "G3001",
name: "Organic Milk",
category: "Groceries",
price: 60,
brand: "Amul",
expiry_date: ISODate("2024-12-15")
}
]);


// OP2: find() — retrieve Electronics with price > 20000

db.products.find({
category: "Electronics",
price: { $gt: 20000 }
});


// OP3: find() — groceries expiring before 2025-01-01

db.products.find({
category: "Groceries",
expiry_date: { $lt: ISODate("2025-01-01") }
});


// OP4: updateOne() — add discount_percent

db.products.updateOne(
{ product_id: "E1001" },
{ $set: { discount_percent: 10 } }
);


// OP5: createIndex() — index on category

db.products.createIndex({ category: 1 });
