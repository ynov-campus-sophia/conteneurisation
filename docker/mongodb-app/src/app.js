const { MongoClient } = require('mongodb');

// Connection URL
//const url = 'mongodb://localhost:27017';
const url = process.env.DB_URL;
const client = new MongoClient(url);

// Database Name
const dbName = 'demo';

async function main() {
  // Use connect method to connect to the server
  await client.connect();
  console.log('Connected successfully to server');
  const db = client.db(dbName);
  const collection = db.collection('documents');
  const insertResult = await collection.insertMany([{ a: 1 }, { a: 2 }, { a: 3 }]);
  console.log('Inserted documents =>', insertResult);
  // the following code examples can be pasted here...

  return 'done.';
}

main()
  .then(console.log)
  .catch(console.error)
  .finally(() => client.close());
