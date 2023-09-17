import mysql from 'mysql2';

const connection = mysql.createConnection({
  host: 'localhost', // Change to your MySQL host
  user: 'root',      // Your MySQL username
  password: '', // Your MySQL password
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }

  console.log('Connected to MySQL');

  // Create the "imdb" database
  connection.query('CREATE DATABASE imdb', (createErr) => {
    if (createErr) {
      console.error('Error creating database:', createErr);
    } else {
      console.log('Database "imdb" created');
    }

    // Close the MySQL connection
    connection.end();
  });
});
