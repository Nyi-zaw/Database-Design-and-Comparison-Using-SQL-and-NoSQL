// Categories Collection

db.createCollection("categories", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["categorieName"],
    ...           properties: {
    ...              categorieId: {
    ...                 bsonType: "int"
    ...              },
    ...              categorieName: {
    ...                 bsonType: "string",
    ...                 description: "must be a string and is required"
    ...              },
    ...              categorieDesc: {
    ...                 bsonType: "string"
    ...              },
    ...              categorieCreateDate: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
 });

  // Contact Collection

db.createCollection("contact", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["userId", "email", "phoneNo", "orderId", "message", "time"],
    ...           properties: {
    ...              contactId: {
    ...                 bsonType: "int"
    ...              },
    ...              userId: {
    ...                 bsonType: "int"
    ...              },
    ...              email: {
    ...                 bsonType: "string"
    ...              },
    ...              phoneNo: {
    ...                 bsonType: "long"
    ...              },
    ...              orderId: {
    ...                 bsonType: "int"
    ...              },
    ...              message: {
    ...                 bsonType: "string"
    ...              },
    ...              time: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });
    // ContactReply

db.createCollection("contactreply", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["contactId", "userId", "message", "datetime"],
    ...           properties: {
    ...              id: {
    ...                 bsonType: "int"
    ...              },
    ...              contactId: {
    ...                 bsonType: "int"
    ...              },
    ...              userId: {
    ...                 bsonType: "int"
    ...              },
    ...              message: {
    ...                 bsonType: "string"
    ...              },
    ...              datetime: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });
    // DeliveryDetails

db.createCollection("deliverydetails", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["orderId", "deliveryName", "deliveryPhoneNo", "deliveryTime", "dateTime"],
    ...           properties: {
    ...              id: {
    ...                 bsonType: "int"
    ...              },
    ...              orderId: {
    ...                 bsonType: "int"
    ...              },
    ...              deliveryBoyName: {
    ...                 bsonType: "string"
    ...              },
    ...              deliveryBoyPhoneNo: {
    ...                 bsonType: "long"
    ...              },
    ...              deliveryTime: {
    ...                 bsonType: "int"
    ...              },
    ...              dateTime: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });
    // OrderItems

db.createCollection("orderitems", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["orderId", "pastaId", "itemQuantity"],
    ...           properties: {
    ...              id: {
    ...                 bsonType: "int"
    ...              },
    ...              orderId: {
    ...                 bsonType: "int"
    ...              },
    ...              ramenId: {
    ...                 bsonType: "int"
    ...              },
    ...              itemQuantity: {
    ...                 bsonType: "int"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });
    // Orders

  db.createCollection("orders", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["userId", "address", "zipCode", "phoneNo", "amount", "paymentMode", "orderStatus", "orderDate"],
    ...           properties: {
    ...              orderId: {
    ...                 bsonType: "int"
    ...              },
    ...              userId: {
    ...                 bsonType: "int"
    ...              },
    ...              address: {
    ...                 bsonType: "string"
    ...              },
    ...              zipCode: {
    ...                 bsonType: "int"
    ...              },
    ...              phoneNo: {
    ...                 bsonType: "long"
    ...              },
    ...              amount: {
    ...                 bsonType: "int"
    ...              },
    ...              paymentMode: {
    ...                 enum: ["Cash", "Credit Card", "Debit Card", "Net
     Banking", "UPI"]
    ...              },
    ...              orderStatus: {
    ...                 enum: ["Pending", "Processing", "Delivered", "Ca
    ncelled"]
    ...              },
    ...              orderDate: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });

    db.createCollection("pasta", {
        ...     validator: {
        ...        $jsonSchema: {
        ...           bsonType: "object",
        ...           required: ["pastaName", "pastaPrice", "pastaDesc", "pastaCategorieId", "pastaPubDate"],
        ...           properties: {
        ...             pastaId: {
        ...                 bsonType: "int"
        ...              },
        ...              pastaName: {
        ...                 bsonType: "string"
        ...              },
        ...              pastaPrice: {
        ...                 bsonType: "int"
        ...              },
        ...              pastaDesc: {
        ...                 bsonType: "string"
        ...              },
        ...              pastaCategorieId: {
        ...                 bsonType: "int"
        ...              },
        ...              pastaPubDate: {
        ...                 bsonType: "date"
        ...              }
        ...           }
        ...        }
        ...     }
        ...  });

        db.createCollection("sitedetail", {
            ...     validator: {
            ...        $jsonSchema: {
            ...           bsonType: "object",
            ...           required: ["systemName", "email", "contact1", "contact2", "address", "dateTime"],
            ...           properties: {
            ...              tempId: {
            ...                 bsonType: "int"
            ...              },
            ...              systemName: {
            ...                 bsonType: "string"
            ...              },
            ...              email: {
            ...                 bsonType: "string"
            ...              },
            ...              contact1: {
            ...                 bsonType: "long"
            ...              },
            ...              contact2: {
            ...                 bsonType: "long"
            ...              },
            ...              address: {
            ...                 bsonType: "string"
            ...              },
            ...              dateTime: {
            ...                 bsonType: "date"
            ...              }
            ...           }
            ...        }
            ...     }
            ...  });
            
          // Users

test>  db.createCollection("users", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["username", "firstName", "lastName", "email", "phone", "userType", "password", "joinDate"],
    ...           properties: {
    ...              id: {
    ...                 bsonType: "int"
    ...              },
    ...              username: {
    ...                 bsonType: "string"
    ...              },
    ...              firstName: {
    ...                 bsonType: "string"
    ...              },
    ...              lastName: {
    ...                 bsonType: "string"
    ...              },
    ...              email: {
    ...                 bsonType: "string"
    ...              },
    ...              phone: {
    ...                 bsonType: "long"
    ...              },
    ...              userType: {
    ...                 enum: ["Admin", "Customer"]
    ...              },
    ...              password: {
    ...                 bsonType: "string"
    ...              },
    ...              joinDate: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });
    
     // ViewCart

test>  db.createCollection("viewcart", {
    ...     validator: {
    ...        $jsonSchema: {
    ...           bsonType: "object",
    ...           required: ["pastaId", "itemQuantity", "userId", "addedDate"],
    ...           properties: {
    ...              cartItemId: {
    ...                 bsonType: "int"
    ...              },
    ...              pastaId: {
    ...                 bsonType: "int"
    ...              },
    ...              itemQuantity: {
    ...                 bsonType: "int"
    ...              },
    ...              userId: {
    ...                 bsonType: "int"
    ...              },
    ...              addedDate: {
    ...                 bsonType: "date"
    ...              }
    ...           }
    ...        }
    ...     }
    ...  });

    db.categories.insertMany([
        ...     {
        ...         categorieId: 1,
        ...         categorieName: "Spaghetti Bolognese",
        ...         categorieDesc: "Enjoy our classic Spaghetti Bolognese, featuring a rich and savory meat sauce served over al dente spaghetti, topped with freshly grated Parmesan cheese.",
        ...         categorieCreateDate: new Date("2021-03-17T18:16:28Z")
        ...     },
        ...     {
        ...         categorieId: 2,
        ...         categorieName: "Fettuccine Alfredo",
        ...         categorieDesc: "Indulge in our creamy Fettuccine Alfredo, made with a rich Alfredo sauce and tender fettuccine noodles, garnished with parsley and grated Parmesan.",
        ...         categorieCreateDate: new Date("2021-03-17T18:17:14Z")
        ...     },
        ...     {
        ...         categorieId: 3,
        ...         categorieName: "Penne Arrabbiata",
        ...         categorieDesc: "Savor the spicy flavors of our Penne Arrabbiata, featuring penne pasta tossed in a fiery tomato sauce with garlic, red chili peppers, and olive oil.",
        ...         categorieCreateDate: new Date("2021-03-17T18:17:43Z")
        ...     },
        ...     {
        ...         categorieId: 4,
        ...         categorieName: "Lasagna",
        ...         categorieDesc: "Delight in our classic Lasagna, layered with rich meat sauce, creamy béchamel, and tender pasta sheets, baked to perfection with a golden cheese topping.",
        ...         categorieCreateDate: new Date("2021-03-17T18:19:10Z")
        ...     },
        ...     {
        ...         categorieId: 5,
        ...         categorieName: "Carbonara",
        ...         categorieDesc: "Experience the authentic taste of our Carbonara, made with pancetta, eggs, Parmesan cheese, and black pepper, served over spaghetti for a creamy delight.",
        ...         categorieCreateDate: new Date("2021-03-17T21:58:58Z")
        ...     },
        ...     {
        ...         categorieId: 6,
        ...         categorieName: "Pesto Pasta",
        ...         categorieDesc: "Explore our fresh Pesto Pasta, featuring a vibrant basil pesto sauce made with pine nuts, garlic, Parmesan, and olive oil, tossed with your choice of pasta.",
        ...         categorieCreateDate: new Date("2021-03-18T07:55:28Z")
        ...     },
        ...     {
        ...         categorieId: 7,
        ...         categorieName: "Seafood Pasta",
        ...         categorieDesc: "Indulge in our Seafood Pasta, a delightful mix of shrimp, mussels, and calamari in a savory tomato or creamy
         sauce, served over linguine or fettuccine.",
        ...         categorieCreateDate: new Date("2021-03-18T08:06:30Z")
        ...     },
        ...     {
        ...         categorieId: 8,
        ...         categorieName: "Baked Ziti",
        ...         categorieDesc: "Quench your craving with our Baked Ziti, featuring ziti pasta baked with layers of marinara sauce, ricotta, and mozzarella cheese until bubbly and golden.",
        ...         categorieCreateDate: new Date("2021-03-18T08:13:47Z")
        ...     }
        ... ]);

        db.contact.insertOne({
            ...     contactId: 1,
            ...     userId: 2,
            ...     email: 'customer1@gmail.com',
            ...     phoneNo: NumberLong("1234567890"),
            ...     orderId: 1,
            ...     message: 'Nice You guys are doing great..',
            ...     time: new Date("2023-01-30T20:39:41Z")
            ... });
            {
              acknowledged: true,
              insertedId: ObjectId('66473fc1cb38aa811946b7a1')
            }

            db.contactreply.insertMany([
                ...     {
                ...         id: 1,
                ...         contactId: 1,
                ...         userId: 2,
                ...         message: "Thank you for shopping with us",
                ...         datetime: new Date("2023-01-30T20:40:08Z")
                ...     }
                ... ]);
                
                db.deliverydetails.insertMany([
                    ...     {
                    ...         id: 1,
                    ...         orderId: 1,
                    ...         deliveryName: 'John Doe',
                    ...         deliveryPhoneNo: 9876543210,
                    ...         deliveryTime: 30,
                    ...         dateTime: new Date("2023-05-10T10:15:00Z")
                    ...     },
                    ...     {
                    ...         id: 2,
                    ...         orderId: 2,
                    ...         deliveryName: 'Jane Smith',
                    ...         deliveryPhoneNo: 8765432109,
                    ...         deliveryTime: 35,
                    ...         dateTime: new Date("2023-05-11T12:30:00Z")
                    ...     },
                    ...     {
                    ...         id: 3,
                    ...         orderId: 3,
                    ...         deliveryName: 'Michael Johnson',
                    ...         deliveryPhoneNo: 7654321098,
                    ...         deliveryTime: 20,
                    ...         dateTime: new Date("2023-05-12T14:45:00Z")
                    ...     },
                    ...     {
                    ...         id: 4,
                    ...         orderId: 4,
                    ...         deliveryName: 'Emily Brown',
                    ...         deliveryPhoneNo: 6543210987,
                    ...         deliveryTime: 15,
                    ...         dateTime: new Date("2023-05-13T16:00:00Z")
                    ...     },
                    ...     {
                    ...         id: 5,
                    ...         orderId: 8,
                    ...         deliveryName: 'David Wilson',
                    ...         deliveryPhoneNo: 5432109876,
                    ...         deliveryTime: 25,
                    ...         dateTime: new Date("2023-05-14T18:15:00Z")
                    ...     }
                    ... ]);
                    
                    db.createCollection("orderitems", {
                        ...     validator: {
                        ...        $jsonSchema: {
                        ...           bsonType: "object",
                        ...           required: ["orderId", "pastaId", "itemQuantity"],
                        ...           properties: {
                        ...              id: {
                        ...                 bsonType: "int"
                        ...              },
                        ...              orderId: {
                        ...                 bsonType: "int"
                        ...              },
                        ...              ramenId: {
                        ...                 bsonType: "int"
                        ...              },
                        ...              itemQuantity: {
                        ...                 bsonType: "int"
                        ...              }
                        ...           }
                        ...        }
                        ...     }
                        ...  });
                        
    // Inserting data into the "orders" collection

test>  db.orders.insertMany([
    ...      {
    ...          orderId: 1,
    ...          userId: 2,
    ...          address: 'London, UK',
    ...          zipCode: 111111,
    ...          phoneNo: NumberLong("2079461234"),
    ...          amount: 198,
    ...          paymentMode: 'Cash',
    ...          orderStatus: 'Pending',
    ...          orderDate: ISODate('2023-01-30T20:35:27.000Z')
    ...      },
    ...
    ...      {
    ...          orderId: 2,
    ...          userId: 2,
    ...          address: 'Manchester, UK',
    ...          zipCode: 111111,
    ...          phoneNo: NumberLong("1611234567"), // Adjusting phone number to integer
    ...          amount: 447,
    ...          paymentMode: 'Cash',
    ...          orderStatus: 'Pending',
    ...          orderDate: ISODate('2023-02-09T22:21:44.000Z')
    ...      },
    ...
    ...      {
    ...          orderId: 3,
    ...          userId: 2,
    ...          address: 'Birmingham, UK',
    ...          zipCode: 222222,
    ...          phoneNo: NumberLong("1611234567"), // Adjusting phone number to integer
    ...          amount: 1463,
    ...          paymentMode: 'Cash',
    ...          orderStatus: 'Delivered', // Adjusted to 'Delivered' as
     per enum
    ...          orderDate: ISODate('2023-02-24T08:55:22.000Z')
    ...      },
    ...
    ...      {
    ...          orderId: 4,
    ...          userId: 2,
    ...          address: 'Leeds, UK',
    ...          zipCode: 333333,
    ...          phoneNo: NumberLong("1611234567"), // Adjusted phone number to string
    ...          amount: 697,
    ...          paymentMode: 'Cash',
    ...          orderStatus: 'Processing',
    ...          orderDate: ISODate('2023-02-24T08:58:57.000Z')
    ...      },
    ...
    ...      {
    ...          orderId: 5,
    ...          userId: 2,
    ...          address: 'Glasgow, UK',
    ...          zipCode: 444444,
    ...          phoneNo: NumberLong("1611234567"), // Adjusted phone number to integer
    ...          amount: 99,
    ...          paymentMode: 'Cash',
    ...          orderStatus: 'Delivered',
    ...          orderDate: ISODate('2023-02-24T10:38:51.000Z')
    ...      }  ]);
     
    // Inserting data into the "pasta" collection
    db.pasta.insertMany([
        ...       {
        ...           pastaId: 1,
        ...           pastaName: 'Fettuccine Alfredo',
        ...           pastaPrice: 159,
        ...           pastaDesc: 'A creamy Alfredo sauce served with fettuccine pasta, butter, Parmesan cheese, and garlic.',
        ...           pastaCategorieId: 1,
        ...           pastaPubDate: new Date('2021-03-17T21:22:07Z')
        ...       },
        ...       {
        ...           pastaId: 2,
        ...           pastaName: 'Rigatoni Bolognese',
        ...           pastaPrice: 139,
        ...           pastaDesc: 'A hearty meat sauce made with ground beef, tomatoes, onions, carrots, and celery, served with rigatoni pasta.',
        ...           pastaCategorieId: 1,
        ...           pastaPubDate: new Date('2021-03-17T21:23:05Z')
        ...       },
        ...       {
        ...           pastaId: 3,
        ...           pastaName: 'Linguine Pesto',
        ...           pastaPrice: 169,
        ...           pastaDesc: 'A vibrant pesto sauce made with fresh basil, pine nuts, garlic, Parmesan cheese, and olive oil, tossed with linguine pasta.',
        ...           pastaCategorieId: 1,
        ...           pastaPubDate: new Date('2021-03-17T21:23:48Z')
        ...       },
        ...       {
        ...           pastaId: 4,
        ...           pastaName: 'Lasagna',
        ...           pastaPrice: 189,
        ...           pastaDesc: 'Layers of lasagna noodles, meat sauce, ricotta cheese, mozzarella cheese, and Parmesan cheese, baked to perfection.',
        ...           pastaCategorieId: 1,
        ...           pastaPubDate: new Date('2021-03-17T21:25:00Z')
        ...       },
        ...       {
        ...           pastaId: 5,
        ...           pastaName: 'Pappardelle with Wild Mushroom Sauce',
        ...           pastaPrice: 179,
        ...           pastaDesc: 'Wide ribbons of pappardelle pasta served with a savory mushroom sauce made with assorted wild mushrooms, cream, and herbs.',
        ...           pastaCategorieId: 1,
        ...           pastaPubDate: new Date('2021-03-17T21:26:15Z')
        ...       }
        ...   ]);

        // Inserting data into the "sitedetail" collection
        db.sitedetail.insertMany([
            ...     {
            ...         tempId: 1,
            ...         systemName: 'Italy pasta',
            ...         email: 'italypasta@gmail.com',
            ...         contact1: NumberLong("1234567890"),
            ...         contact2: NumberLong("9876543210"),
            ...         address: 'Sample Address',
            ...         dateTime: new Date('2024-05-16T00:00:00Z')
            ...     }
            ... ]);


             // Inserting data into the "users" collection
 db.users.insertMany([
...   {
...     id: 1,
...     username: 'nyi',
...     firstName: 'zaw',
...     lastName: 'nyi',
...     email: 'nyizaw@gmail.com',
...     phone: NumberLong("9898989898"),
...     userType: 'Customer', // Assuming '1' corresponds to a regular customer
...     password: '$2y$10$AAfxRFOYbl7FdN17rN',
...     joinDate: new Date('2022-09-13T11:40:58Z')
...   },
...   {
...     id: 2,
...     username: 'nicky',
...     firstName: 'nicky',
...     lastName: '1',
...     email: 'nicky@gmail.com',
...     phone: NumberLong("1234567890"),
...     userType: 'Customer', // Assuming '0' corresponds to a regular customer
...     password: '$2y$10$2klu7oTnY3Yl.',
...     joinDate: new Date('2023-09-09T20:34:18Z')
...   }
... ]);

 //Question 1

 db.users.aggregate([
    ...      { $lookup: { from: 'orders', localField: 'id', foreignField: 'userId', as: 'user_orders' } },
    ...      { $unwind: { path: '$user_orders', preserveNullAndEmptyArrays: true } },
    ...      { $lookup: { from: 'orderitems', localField: 'user_orders.orderId', foreignField: 'orderId', as: 'order_items' } },
    ...      { $unwind: { path: '$order_items', preserveNullAndEmptyArrays: true } },
    ...      { $lookup: { from: 'pasta', localField: 'order_items.pastaId', foreignField: 'pastaId', as: 'pasta_info' } },
    ...      { $unwind: { path: '$pasta_info', preserveNullAndEmptyArrays: true } },
    ...      { $match: {
    ...          'user_orders.orderDate': { $gte: ISODate('2023-02-01T00:00:00Z') },
    ...          'pasta_info.pastaPrice': { $gt: 100 }
    ...      } },
    ...      { $project: { _id: 0, username: 1, orderId: '$user_orders.orderId', pastaId: '$order_items.pastaId', pastaName: '$pasta_info.pastaName' } }
    ...  ]);



     //Question 2

db.orders.aggregate([
...      { $project: { _id: 0, orderId: 1, address: 1, type: 'Order' } },
...      { $unionWith: { coll: 'contact', pipeline: [
...          { $project: { _id: 0, contactId: '$contactId', email: '$email', type: 'Contact' } }
...      ] } }
...  ]);
[
  { orderId: 1, address: 'London, UK', type: 'Order' },
  { orderId: 1, address: 'London, UK', type: 'Order' },
  { orderId: 2, address: 'Manchester, UK', type: 'Order' },
  { orderId: 3, address: 'Birmingham, UK', type: 'Order' },
  { orderId: 4, address: 'Leeds, UK', type: 'Order' },
  { orderId: 5, address: 'Glasgow, UK', type: 'Order' },
  { contactId: 1, email: 'customer1@gmail.com', type: 'Contact' }
]

//Question 3

db.users.aggregate([
    ...      {
    ...          $lookup: {
    ...              from: "orders",
    ...              localField: "id",
    ...              foreignField: "userId",
    ...              as: "orders"
    ...          }
    ...      },
    ...      {
    ...          $project: {
    ...              _id: 0,
    ...              username: 1,
    ...              order_ids: "$orders.orderId"
    ...          }
    ...      }
    ...  ]);

    //Question 4

db.orders.aggregate([
    ...    {
    ...      $match: {
    ...        orderDate: {
    ...          $gte: ISODate("2023-01-01T00:00:00.000Z"),
    ...          $lt: ISODate("2023-04-01T00:00:00.000Z")
    ...        }
    ...      }
    ...    },
    ...    {
    ...      $project: {
    ...        order_year: { $year: "$orderDate" },
    ...        order_month: { $month: "$orderDate" }
    ...      }
    ...    },
    ...    {
    ...      $group: {
    ...        _id: { year: "$order_year", month: "$order_month" },
    ...        order_count: { $sum: 1 }
    ...      }
    ...    },
    ...    {
    ...      $project: {
    ...        _id: 0,
    ...        order_year: "$_id.year",
    ...        order_month: "$_id.month",
    ...        order_count: 1
    ...      }
    ...    },
    ...    {
    ...      $sort: { order_year: 1, order_month: 1 }
    ...    }
    ...  ])

     //Question 5
    db.orders.aggregate([
        ...   {
        ...     $lookup: {
        ...       from: "orderitems",
        ...       localField: "orderId",
        ...       foreignField: "orderId",
        ...       as: "orderitems"
        ...     }
        ...   },
        ...   {
        ...     $unwind: "$orderitems"
        ...   },
        ...   {
        ...     $lookup: {
        ...       from: "pasta",
        ...       localField: "orderitems.pastaId",
        ...       foreignField: "pastaId",
        ...       as: "pasta"
        ...     }
        ...   },
        ...   {
        ...     $unwind: "$pasta"
        ...   },
        ...   {
        ...     $lookup: {
        ...       from: "categories",
        ...       localField: "pasta.pastaCategorieId",
        ...       foreignField: "categorieId",
        ...       as: "category"
        ...     }
        ...   },
        ...   {
        ...     $unwind: "$category"
        ...   },
        ...   {
        ...     $group: {
        ...       _id: {
        ...         order_month: {
        ...           $cond: {
        ...             if: { $eq: ["$orderDate", null] },
        ...             then: "Total",
        ...             else: { $dateToString: { format: "%Y-%m", date: "$orderDate" } }
        ...           }
        ...         },
        ...         categorie_name: {
        ...           $cond: {
        ...             if: { $eq: ["$category.categorieName", null] },
        ...             then: "Total",
        ...             else: "$category.categorieName"
        ...           }
        ...         }
        ...       },
        ...       total_orders: { $sum: 1 },
        ...       total_amount: { $sum: "$amount" }
        ...     }
        ...   },
        ...   {
        ...     $sort: { "_id.order_month": 1, "_id.categorie_name": 1 }
        
        ...   },
        ...   {
        ...     $limit: 17
        ...   },
        ...   {
        ...     $project: {
        ...       order_month: "$_id.order_month",
        ...       categorie_name: "$_id.categorie_name",
        ...       total_orders: 1,
        ...       total_amount: 1,
        ...       _id: 0
        ...     }
        ...   }
        ... ]);