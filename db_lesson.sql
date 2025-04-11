Q1
CREATE TABLE departments (
    -> department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20) NOT NULL,
    -> created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );

Q2
ALTER TABLE people ADD COLUMN department_id INT UNSIGNED NULL, MODIFY COLUMN department_id INT(10) UNSIGNED NULL AFTER email;

Q3
(departments)
INSERT INTO departments (name) VALUES ('営業'),('開発'),('経理'),('人事'),('情報システム');

(people)
MariaDB [db_lesson]> INSERT INTO `people` (`name`, `email`, `age`, `department_id`) VALUES (NULL, NULL, NULL, 1),
    -> (NULL, NULL, NULL, 1),
    -> (NULL, NULL, NULL, 1),
    -> (NULL, NULL, NULL, 2),
    -> (NULL, NULL, NULL, 2),
    -> (NULL, NULL, NULL, 2),
    -> (NULL, NULL, NULL, 2),
    -> (NULL, NULL, NULL, 3),
    -> (NULL, NULL, NULL, 4),
    -> (NULL, NULL, NULL, 5);

(reports)
INSERT INTO `reports` (`content`, `person_id`, `created_at`) VALUES ('Report content 13', 13, NOW()),
    -> ('Report content 14', 14, NOW()),
    -> ('Report content 15', 15, NOW()),
    -> ('Report content 16', 16, NOW()),
    -> ('Report content 17', 17, NOW()),
    -> ('Report content 18', 18, NOW()),
    -> ('Report content 19', 19, NOW()),
    -> ('Report content 20', 20, NOW()),
    -> ('Report content 21', 21, NOW()),
    -> ('Report content 22', 22, NOW());

Q4
UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 1 WHERE person_id = 2;
UPDATE people SET department_id = 1 WHERE person_id = 3;
UPDATE people SET department_id = 1 WHERE person_id = 4;
UPDATE people SET department_id = 1 WHERE person_id = 6;
UPDATE people SET department_id = 1 WHERE person_id = 12;

Q5
SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;

Q6
このSQL文は「peopleテーブルから、department_id（部署ID）が1の人たちの名前、メールアドレス、年齢を取得し、それらを昇順で並べる」という指示をしています。

データベース内の「people」テーブルの中の「name」「email」「age」という3つのカラムを指定しており、それぞれ名前、メールアドレス、年齢についての情報が格納されています。
ここからデータを取り出す際に、「department_id」カラムの値が「1」であるレコードだけを対象としています。
最後に、取り出されたデータは「created_at」カラムの値を基準に並べ替えられます。並べ替えは古い日時から新しい日時へと昇順で行われます。