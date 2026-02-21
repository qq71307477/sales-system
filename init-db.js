const Database = require('better-sqlite3');
const fs = require('fs');
const path = require('path');

const DB_PATH = path.join(__dirname, 'sales.db');
const db = new Database(DB_PATH);

console.log('数据库初始化完成');
db.close();
