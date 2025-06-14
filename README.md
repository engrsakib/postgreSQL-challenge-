# 📘 PostgreSQL সম্পর্কে প্রশ্নোত্তর (বাংলা)

এই ডকুমেন্টে PostgreSQL সম্পর্কিত ১০টি গুরুত্বপূর্ণ প্রশ্ন ও তার উত্তর তুলে ধরা হয়েছে সহজ ভাষায়, যাতে একজন শিক্ষার্থী বা ডেভেলপার নিজের শেখার যাত্রায় আত্মবিশ্বাসী হতে পারেন।

---

### 1️⃣ **PostgreSQL কী?**

PostgreSQL একটি শক্তিশালী, ওপেন সোর্স রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS), যা ACID কমপ্লায়েন্ট এবং extensible। এটি SQL ও NoSQL উভয় ধরনের ডেটা সাপোর্ট করে এবং বড় বড় প্রজেক্টে ব্যবহারযোগ্য।

---

### 2️⃣ **PostgreSQL-এ Database Schema এর উদ্দেশ্য কী?**

একটি স্কিমা হলো ডেটাবেসের মধ্যে একটি লজিকাল গ্রুপ। এটি ডেটাবেসের টেবিল, ফাংশন, ভিউ ইত্যাদিকে অর্গানাইজ করতে সাহায্য করে এবং ইউজার পারমিশনও আলাদা রাখতে সহায়তা করে।

---

### 3️⃣ **Primary Key ও Foreign Key কী?**

* **Primary Key:** একটি টেবিলের প্রতিটি রোকে ইউনিকভাবে চিহ্নিত করে। null বা ডুপ্লিকেট হতে পারে না।
* **Foreign Key:** অন্য টেবিলের প্রাইমারি কীকে রেফার করে, যাতে টেবিলগুলোর মধ্যে সম্পর্ক তৈরি হয়।

---

### 4️⃣ **VARCHAR এবং CHAR এর মধ্যে পার্থক্য কী?**

* `CHAR(n)`: Fixed length স্টোরেজ নেয় (ফাঁকা অংশও রিজার্ভ করে)।
* `VARCHAR(n)`: Variable length স্টোরেজ নেয় (শুধু প্রয়োজনমতো)।

```sql
name CHAR(10);
email VARCHAR(50);
```

---

### 5️⃣ **SELECT স্টেটমেন্টে WHERE ক্লজের ব্যবহার কী?**

`WHERE` ক্লজ দিয়ে নির্দিষ্ট শর্তের উপর ভিত্তি করে রো নির্বাচন করা যায়।

```sql
SELECT * FROM users WHERE age > 18;
```

---

### 6️⃣ **LIMIT এবং OFFSET কী কাজে লাগে?**

* `LIMIT`: কতগুলো রো ফেরত আনবে তা নির্ধারণ করে।
* `OFFSET`: শুরু থেকে কতগুলো রো বাদ দিয়ে তারপর থেকে রেজাল্ট দেখাবে।

```sql
SELECT * FROM products LIMIT 10 OFFSET 20;
```

---

### 7️⃣ **UPDATE স্টেটমেন্ট দিয়ে কীভাবে ডেটা পরিবর্তন করা যায়?**

`UPDATE` দিয়ে ডেটাবেসের টেবিলের ডেটা আপডেট করা যায়।

```sql
UPDATE users SET name = 'Sakib' WHERE id = 1;
```

---

### 8️⃣ **JOIN অপারেশনের গুরুত্ব ও কাজ কী?**

`JOIN` অপারেশনের মাধ্যমে একাধিক টেবিলের মধ্যে সম্পর্কযুক্ত ডেটা আনা যায়।

```sql
SELECT u.name, o.amount
FROM users u JOIN orders o
ON u.id = o.user_id;
```

---

### 9️⃣ **GROUP BY ক্লজ কী এবং কখন ব্যবহার হয়?**

`GROUP BY` ক্লজ ডেটাকে গ্রুপ করে সেই গ্রুপের উপর অ্যাগ্রিগেট ফাংশন চালাতে সাহায্য করে।

```sql
SELECT category, COUNT(*) FROM products GROUP BY category;
```

---

### 🔟 **COUNT(), SUM(), AVG() ফাংশনের কাজ কী?**

এগুলো অ্যাগ্রিগেট ফাংশন, যা ডেটার উপর গণনামূলক কাজ করে:

* `COUNT()`: রো গুনে
* `SUM()`: মান যোগ করে
* `AVG()`: গড় নির্ণয় করে

```sql
SELECT COUNT(*), SUM(price), AVG(price) FROM products;
```

---

## ✍️ লেখক পরিচিতি:

**👤 Name:** Md. Nazmus Sakib <br/>
 MERN Stack Developer | Content Writer | Problem Solver <br/>
**🎓 Student:** CSE, Dhaka International University <br/>
**🌐 protfolio:** [engrsakib.com](https://www.engrsakib.com) <br/>
**📄 resume:** [Google Drive Link](https://drive.google.com/file/d/1A39zoQ1uwNVbCGnjjdEJlw5hJXzeZUYt/view)

