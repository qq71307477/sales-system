-- 销售系统数据库结构

CREATE TABLE IF NOT EXISTS inventory (
    sku TEXT PRIMARY KEY,
    barcode TEXT,
    brand TEXT,
    season TEXT,
    price REAL NOT NULL DEFAULT 0.0,
    stock TEXT,
    created_at TEXT DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE IF NOT EXISTS members (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    phone TEXT NOT NULL UNIQUE,
    points INTEGER DEFAULT 0,
    extra_data TEXT,
    created_at TEXT DEFAULT (datetime('now', 'localtime'))
);

CREATE TABLE IF NOT EXISTS sales_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_id TEXT,
    sku TEXT,
    barcode TEXT,
    brand TEXT,
    size TEXT,
    price REAL,
    final_price REAL,
    type TEXT DEFAULT 'sale',
    created_at TEXT,
    member_id INTEGER,
    points_earned INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS settings (
    config_key TEXT PRIMARY KEY,
    config_value TEXT
);

INSERT INTO settings (config_key, config_value) VALUES ('sizes', '["26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42"]');
