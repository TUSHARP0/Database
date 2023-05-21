/* write a procedure to find min,max,avg of salary and number of employees in the given deptno. */

DELIMITER //
CREATE PROCEDURE DISPLAY_VAL(IN DNO INT)
BEGIN
SELECT DEPTNO,MIN(SAL),MAX(SAL),AVG(SAL),COUNT(*)
FROM EMP
WHERE DEPTNO=DNO
GROUP BY DEPTNO;
END //
DELIMITER ;

CALL DISPLAY_VAL(20,@MIN,@MAX,@AVG,@COUNT);
