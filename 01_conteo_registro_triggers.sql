CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN COUNT(*) FROM peliculas;
END
$$;

SELECT count_total_movies();


CREATE OR REPLACE FUNCTION duplicate_records()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO aaab(bbba, ccca)
	VALUES (NEW.bbb, NEW.ccc);
	RETURN NEW;
END
$$;


CREATE TRIGGER aaa_changes
	BEFORE INSERT
	ON aaa
	FOR EACH ROW
	EXECUTE PROCEDURE duplicate_records();
	
INSERT INTO aaa(bbb, ccc)
VALUES('ab1', 'ac1');
	

