---
--- Test our functions.
---
\i sql/install.sql
\i data/winequality-red.sql

SELECT pgml.version();

-- Train twice
-- SELECT pgml.train('wine_quality_red', 'quality');

-- SELECT * FROM pgml.model_versions;

-- \timing
-- WITH latest_model AS (
-- 	SELECT name || '_' || id AS model_name FROM pgml.model_versions ORDER BY id DESC LIMIT 1
-- )
-- SELECT pgml.score(
-- 	(SELECT model_name FROM latest_model), -- last model we just trained
-- 	7.4, 0.7, 0, 1.9, 0.076, 11, 34, 0.99, 2, 0.5, 9.4 -- features as variadic arguments
-- ) AS score;

\timing

SELECT pgml.model_regression('Red Wine', 'wine_quality_red', 'quality');
