## For showing all databases

```
show dbs
```

## For switching or creating database

###### Syntax

```
use <database_name>
```

###### Example

```
use C221070
```

## For creating collection

###### Syntax

```
db.createCollection('<collection_name>')
```

###### Example

```
db.createCollection('customers')
db.createCollection('products')
```

## For inserting one document

###### Syntax

```
db.<collection_name>.insertOne(<document>)
```

###### Example 1

```
db.customers.insertOne({first_name: "Mohammad", last_name: "Sayem", status: "active"})
```

###### Example 2

```
db.products.insertOne({name: "Lipstick", amount: 20})
```

## For inserting many documents

###### Syntax

```
db.<collection_name>.insertMany([<document1>, <document2>, ...])
```

###### Example 1

```
db.customers.insertMany([
    {first_name: "Mohammad", last_name: "Sayem", status: "active"},
    {first_name: "John", last_name: "Doe", status: "inactive"},
    {first_name: "Jane", last_name: "Doe", status: "active"},
    {first_name: "John", last_name: "Smith", status: "active"},
    {first_name: "Jane", last_name: "Smith", status: "neutral"}
])
```

###### Example 2

```
db.products.insertMany([
    {name: "Lipstick", amount: 20},
    {name: "Eyeliner", amount: 100},
    {name: "Mascara", amount: 150},
    {name: "Foundation", amount: 250},
    {name: "Blush", amount: 600}
])
```

## For finding all documents

###### Syntax

```
db.<collection_name>.find()
```

###### Example

```
db.customers.find()
```

## For finding all documents with formatted output

###### Syntax

```
db.<collection_name>.find().pretty()
```

###### Example

```
db.customers.find().pretty()
```

## Question 1: Find the name of the customers whose status is neither active nor neutral

## Answer 1:

```
db.customers.find({$and : [{status: {$ne: "active"}}, {status: {$ne: "neutral"}}]})
```

or

```
db.customers.find({status: {$nin: ["active", "neutral"]}})
```

or

```
db.customers.find({status: {$not: {$in: ["active", "neutral"]}}})
```

or

```
db.customers.find({status: {$ne: "active", $ne: "neutral"}})
```

## Question 2: Find the details of product of unit price range 50-500

## Answer 2:

```
db.products.find({amount: {$gte: 50, $lte: 500}})
```
