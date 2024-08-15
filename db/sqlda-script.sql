CREATE TABLE countries (
    key INTEGER NOT NULL,
    name TEXT,
    founding_year INTEGER,
    capital TEXT
);
CREATE TABLE customer_survey (
    rating INTEGER,
    feedback TEXT
);
CREATE TABLE customers (
    customer_id INTEGER,
    title TEXT,
    first_name TEXT,
    last_name TEXT,
    suffix TEXT,
    email TEXT,
    gender TEXT,
    ip_address TEXT,
    phone TEXT,
    street_address TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    latitude REAL,
    longitude REAL,
    date_added DATETIME
);
CREATE TABLE emails (
    email_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    email_subject TEXT,
    opened INTEGER,
    clicked INTEGER,
    bounced INTEGER,
    sent_date DATETIME,
    opened_date DATETIME,
    clicked_date DATETIME
);
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    model TEXT,
    year INTEGER,
    product_type TEXT,
    base_msrp REAL,
    production_start_date DATETIME,
    production_end_date DATETIME
);
CREATE TABLE sales (
    customer_id INTEGER,
    product_id INTEGER,
    sales_transaction_date DATETIME,
    sales_amount REAL,
    channel TEXT,
    dealership_id INTEGER
);
CREATE TABLE salespeople (
    salesperson_id INTEGER PRIMARY KEY,
    dealership_id INTEGER,
    title TEXT,
    first_name TEXT,
    last_name TEXT,
    suffix TEXT,
    username TEXT,
    gender TEXT,
    hire_date DATETIME,
    termination_date DATETIME
);
CREATE TABLE top_cities_data (
    city TEXT,
    number_of_customers INTEGER,
    female INTEGER,
    male INTEGER
);
CREATE TABLE public_transportation_by_zip (
    level_0 INTEGER,
    Id INTEGER,
    zip_code TEXT,
    public_transportation_pct REAL,
    public_transportation_population INTEGER
);
CREATE TABLE closest_dealerships (
    customer_id INTEGER,
    dealership_id INTEGER,
    distance REAL
);
CREATE TABLE customer_sales (
    customer_json JSON
);
CREATE TABLE dealerships (
    dealership_id INTEGER PRIMARY KEY,
    street_address TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    latitude REAL,
    longitude REAL,
    date_opened DATETIME,
    date_closed DATETIME
);
