import sqlite3

conn = sqlite3.connect('employees.db')
cur = conn.cursor()

cur.execute("""
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    years_with_company INTEGER DEFAULT 0
)
""")

cur.executemany("""
INSERT INTO employees (first_name, last_name, email, years_with_company) VALUES (?, ?, ?, ?)
""", [
    ('Kevin', 'Bacon', 'kbacon@example.com', 2),
    ('Josh', 'Brolin', 'jbrolin@example.com', 1),
    ('Kim', 'Dickens', 'kdickens@example.com', 0),
])

cur.close()
conn.close()