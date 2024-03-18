DROP TABLE IF EXISTS tablemeta;
CREATE TABLE tablemeta 
  (id TEXT PRIMARY KEY, 
  name TEXT UNIQUE NOT NULL, 
  columns TEXT NOT NULL, 
  getAllRule TEXT DEFAULT 'public',
  getOneRule TEXT DEFAULT 'public',
  createRule TEXT DEFAULT 'public',
  updateRule TEXT DEFAULT 'public', 
  deleteRule TEXT DEFAULT 'public');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username TEXT UNIQUE,
  password TEXT,
  role TEXT DEFAULT 'user');
  
INSERT INTO users (username, password)
VALUES ('elephantSeal', '$2b$10$CtstYKFneE87sgqhrJzrf.lp72G8agWuDA/uX/RUj2Jg0Gkz61V4.');

DROP TABLE IF EXISTS _admins;
CREATE TABLE _admins (
  id INTEGER PRIMARY KEY,
  username TEXT UNIQUE,
  password TEXT,
  role TEXT DEFAULT 'admin');

INSERT INTO _admins (username, password)
VALUES ('admin', '$2b$10$CtstYKFneE87sgqhrJzrf.lp72G8agWuDA/uX/RUj2Jg0Gkz61V4.');