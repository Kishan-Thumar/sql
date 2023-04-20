# sql
SQL Queries &amp; Concepts

This repository contains the brief about the concepts (its notes) learned and problems solved on LeetCode.

### Equi Join and Non-Equi Join

**Equi Join**: Will retrieve only the data that is equal in both the tables or only retrieves the matching column values; It uses an equality operator to join multiple tables; 

```sql
SELECT *
FROM TableName11
JOIN TableName2
ON TableName1.ColumnName **=** TableName2.ColumnName;
```

**Non-Equi join**: Retrieves data without using the equality operator; Can use other operators except the equality one in the non-equi join to join multiple tables.

```sql
SELECT *
FROM TableName1
JOIN TableName2
ON TableName1.ColumnName **[> |  < |  >= | <= | != | BETWEEN ]** TableName2.ColumnName;
```

### Sub-Query

```sql
**SELECT * FROM `new_schema`.`orders`
WHERE user_id = (
  SELECT id FROM `new_schema`.`users`
  WHERE name = 'John'
);**
```

### **Correlated Sub-queries -**

- Used for row-by-row processing. Each subquery is executed once for every row of the outer query.
- One way of reading every row in a table and comparing values in each row against related data.
- It is used whenever a subquery must return a different result or set of results for each candidate row considered by the main query. In other words, you can use a correlated subquery to answer a multipart question whose answer depends on the value in each row processed by the parent statement.

### ***EXAMPLES SOLVED***: [001](https://github.com/Kishan-Thumar/sql/blob/master/534_Game_Play_Analysis_III/myql_subquery.sql), [002](https://github.com/Kishan-Thumar/sql/tree/master/512_Game_Play_Analysis_II)

### Window Function

![Window Function Categories: (source-[Here](https://cdn.sanity.io/images/oaglaatp/production/e0d2b575fa404eec7c9bedcae9c3818261ffe1ab-1200x800.png?w=1200&h=800&auto=format))](images/window_functions.png)

Window Function Categories: (source-[Here](https://cdn.sanity.io/images/oaglaatp/production/e0d2b575fa404eec7c9bedcae9c3818261ffe1ab-1200x800.png?w=1200&h=800&auto=format))

***EXAMPLES SOLVED***: [001](https://github.com/Kishan-Thumar/sql/blob/master/534_Game_Play_Analysis_III/mysql_window_fn.sql)

### Sub Queries Vs CTS

|  | Common Table Expression (CTE) | Sub-Queries |
| --- | --- | --- |
| Complexity | Can be used recursively | Limited nesting levels |
| Reusability | Can be reused in multiple queries | Cannot be reused |
| Performance | Generally faster for complex queries | Can slow down query performance |
| Readability | Can improve readability of complex queries | Can make queries harder to read |
| Availability of columns | Can define additional columns in CTE that are not in underlying tables | Only columns from underlying tables can be accessed |

When to use Sub-Queries:

- Use when a simple query is needed to filter or aggregate data
- Use when data from sub-query is needed in the main query and nested levels are not required

When to use **Common Table Expression**:

- Use when complex queries need to be broken down into smaller, more manageable parts
- Use when data from sub-query is needed in the main query and nested levels are required.
- The recursion feature can be implemented with `RECURSIVE` and `UNION ALL`


```sql
WITH RECURSIVE [cte_name] (column, ...) AS (
  [non-recursive_term]
UNION ALL
  [recursive_term])
SELECT ... FROM [cte_name];

# Fibonacci Example
WITH RECURSIVE fib(f1, f2) AS ( 
    SELECT 0, 1 
    UNION ALL
    SELECT f2, (f1+f2) FROM fib ) 
SELECT f1 FROM fib LIMIT 10;
```

### EXAMPLES SOLVED: [002](https://github.com/Kishan-Thumar/sql/tree/master/512_Game_Play_Analysis_II)