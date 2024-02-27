SELECT tname from tab; -- 접속 계정이 소유한 테이블 조회명령

SELECT 'BLACK' || 'PINK' FROM DUAL;

-- tmp1 테이블 
CREATE TABLE tmp1(
    no NUMBER(2),
    name VARCHAR2(10 CHAR)
);

-- 데이터 추가
INSERT INTO
    tmp1
VALUES(
    1, '제니'
);
INSERT INTO
    tmp1
VALUES(
    2, '제니'
);
UPDATE
    tmp1
SET
    name = '리사'
WHERE
    no = 2
;

INSERT INTO
    tmp1
VALUES(
    3, '쵸파'
);

-- 쵸파삭제
DELETE FROM tmp1 WHERE no = 3;

DROP TABLE tmp1;

-- scott 계정이 소유한 emp 테이블을 복사해서 emp 테이블을 만드세요
CREATE TABLE emp
AS
    SELECT
        *
    FROM
        scott.emp
;

SELECT tname FROM tab;

-- scott 계정의 dept 테이블 조회
SELECT
    *
FROM
    scott.dept
;

-- dept 테이블 복사
CREATE TABLE dept
AS
    SELECT
        *
    FROM
        scott.dept
;
CREATE TABLE salgrade
AS
    SELECT
        *
    FROM
        scott.salgrade
;
CREATE TABLE bonus
AS
    SELECT
        *
    FROM
        scott.bonus
;

-- 숙제 ] jennie 계정에 복사된 emp, dept, salgrade 테이블에 제약조건을 추가하세요


--------------------------------------------------------------------------------
-- hr 계정이 소유한 employees 테이블 조회
SELECT
    *
FROM
    hr.employees
;

CREATE SYNONYM ep FOR hr.employees;

SELECT
    *
FROM
    ep
;

-- scott 계정에서 작업
SELECT
    *
FROM
    EP
;

-- 동의어 삭제
DROP SYNONYM ep;
-- 공개 동의어 생성

CREATE PUBLIC SYNONYM ep FOR hr.employees;
--------------------------------------------------------------------------------

-- 10번사원들의 사원번호, 사원이름, 급여를 조회하는 뷰 d10을 만드세요.
CREATE VIEW d10
AS
    SELECT
        empno, ename, sal
    FROM  
        emp
    WHERE
        deptno = 10
;

-- 뷰를 통해서 조회
SELECT 
    *
FROM
    d10
;

-- MILLER 의 급여의 뷰를 통해서 1500으로 수정해보자.
UPDATE 
    d10
SET
    sal = 1500
WHERE
    ename = 'MILLER'
;
select * from emp ;

-- ROLLBACK
ROLLBACK;

-- 복합뷰
CREATE VIEW dCalc
AS
    SELECT
        deptno dno, SUM(sal) sum, TRUNC(AVG(sal),2) avg, MAX(sal) max, MIN(sal) min, COUNT(*) cnt
    FROM
        emp
    GROUP BY
        deptno
;

SELECT * FROM dCalc ;

-- 뷰를 이용해서 사원들의 사원이름, 직급, 부서급여합계, 부서평균급여, 부서원수를 조회하세요.
SELECT
    ename 사원이름, job 직급, sum 부서급여합계, avg 부서평균급여, cnt 부서원수
FROM
    emp e, dCalc c
WHERE
    e.deptno = c.dno
;