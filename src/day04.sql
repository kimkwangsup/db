-- day04

/*
    ���ڿ� ó�� �Լ�
        
        REPLACE()
        ==> ���ڿ��� Ư�� �κ��� �ٸ� ���ڿ��� ��ü�ؼ� ��ȯ���ִ� �Լ�
        
            ���� ]
                REPLACE(������, ã�� ���ڿ�, ��ü ���ڿ�)
        TRIM()
        ==> ���ڿ� �߿��� �� �Ǵ� �ڿ� �ִ� ������ ���ڸ� ��� �����ϴ� �Լ�.
        
            ���� ]
                TRIM(������ ���� FROM ������)
                
            ���� ]
                ���� ���ڰ� ��, �ڿ� ���ӵǾ� ������ ��� ���� �� �ִ�.
            
            ���� ]
                ���� ������ ��, �ڿ� ���� ���ڰ� ���� ��찡 �ִ�.
                �̷� ��츦 ����Ͽ� �� �ڿ� �� ���� ���ڸ� ������ ��������
                ���� ����Ѵ�.
                
            1) LTRIM()
            2) RTRIM()
            
        ASCII()
        ==> ���ڿ� �ش��ϴ� �ƽ�Ű �ڵ� ���� ��ȯ���ش�.
        
            ���� ]
                ASCII(����)
        CHR()
        ==> ASCII �ڵ带 �Է��ϸ� �ڵ忡 �ش��ϴ� ���ڸ� ��ȯ���ִ� �Լ�
        
            ����]
                CHR(�ڵ尪)
        TRANSLATE()
        ==> REPLACE() �� ���������� ���ڿ� �� ������ �κ��� �ٸ� ���ڿ���
            ��ü���ִ� �Լ�
            
            ������ ]
                REPLACE() �ٲ� ���ڿ��� ���°� ��Ȯ�ϰ� ��ġ�ؾ� �ϰ�
                            ���ڿ� ��ü�� ��ü
                TRANSLATE() ���ڴ����� ó��
*/

-- REPLACE()
SELECT
    REPLACE('Hong Gil Dong', ' ', '!') ȫ�浿,
    REPLACE('Hong Gil Dong', 'Hong', 'Go') ���浿
FROM
    dual
;

-- TRIM
SELECT
    TRIM(' ' FROM '                 HONG GIL           DONG') ȫ�浿,
    REPLACE('HONG GIL                 DONG', ' ', '') �浿
FROM
    dual
;
-- ASCII
SELECT
    ASCII('GILDONG') �浵, CHR(ASCII('GILDONG')) �ƽ�Ű
FROM
    dual
;

--TRANSLATE()
SELECT
    TRANSLATE('ABCAABC', 'ABC', '123')
FROM
    dual
;

--------------------------------------------------------------------------------
/*
    ��¥ �Լ�
        ���� ]
            ����Ŭ������ ��¥ �����ʹ� 1970�� 1�� 1�� 0�� 0�� 0�ʸ� ��������
            ���� ������ ��¥ ������ �̿��ؼ� ������ �Ѵ�.
            
            ���� ]
                ����.�ð�
            
        ***
        ���� ]
            SYSDATE
            ==> ������ ���� ������ ����Ǵ� ������ 
                ��¥ / �ð��� ����ϰ� �ִ� ����

        ���� ]
            ��¥ - ��¥ ������� ����Ѵ�.
            ==> ��¥ �������� - ������ �Ѵ�
            
        ���� ]
            ��¥ + ���� ������ ����Ѵ�.
            ==> ��¥ ������ ������ �����̹Ƿ�
                ��¥�� �̿��ؼ� �����Ѵ�.
                ���� ��¥���� ���ڸ�ŭ �̵��� ��¥�� ��ȸ�ϰ� �ȴ�.
    �Լ��� ]
        
        ADD_MONTHS()
        ==> ���� ��¥�� ������ �������� ���ϰų� �� ��¥�� ��ȯ���ش�
        
            ���� ]
                ADD_MONTHS(��¥������, ������)
                
            ���� ]
                �������� ������ �ش� �������� �� ��¥�� ��ȯ���ش�.
                
                
        MONTHS_BETWEEN()
        ==> �� ��¥ ������ ������ �� ������ �˷��ִ� �Լ�
        
            ���� ]
                MONTHS_BETWEEN(��¥, ��¥)
        LAST_DAY()
        ==> �Է��� ��¥�� ���Ե� ���� ������ ��¥ �����͸� ��ȯ���ش�.
        NEXT_DAY()
        ==> ������ �� ���� ó�� ���� ���� ������ ��¥�����͸� ��ȯ�Ѵ�.
        
            ���� ]
                NEXT_DAY(��¥, '����')
                
                NLS ���� : RRRR/MM/DD HH24:MI:SS
                
            ���� ]
                ���� �����ϴ� ���
                    1. �츮�� ��� �ѱ� ������ �� ����Ŭ �̹Ƿ�
                        '��', 'ȭ', ...
                        '������', 'ȭ����',...
                    2. �����ǿ�����
                        'MON',...
                        'MONDAY',...
            
        ROUND()
        ==> ��¥�� ������ �������� �ݿø����ִ� �Լ�
            
            ������ ���� ] 
                ��, ��, �� �ð�, ��, ��
            
            ���� ]
                ROUND(��¥, '����')

--------------------------------------------------------------------------------

    ����ȯ �Լ�
    ==> ����Ŭ���� �Լ��� �������� ���¿� ���� ����� �� �ִ� �Լ��� �޶�����.
        ���� ����Ϸ��� �Լ��� �ʿ��� �����Ͱ� �ƴѰ�쿡�� ������ ���� �� �ִ�.
        �̷� �� ����ϴ� �Լ��� ����ȯ �Լ��̴٤�.
        ==> �������� ���¸� �ٲ㼭 Ư�� �Լ��� ��밡���ϵ��� ������ִ� �Լ�.
        
    ���� ]
                     
                     TO_CHAR()             TO_CHAR() 
                    ------------->      <-------------
                ����               ����               ��¥
                    <-------------      ------------->
                      TO_NUMBER()         TO_DATE()
                      
                    <------------------------------>  
                                   X

        1. TO_CHAR()
            ==> ��¥�� ���ڸ� ���� �����ͷ� ��ȯ���ִ� �Լ�
                
                ���� 1 ]
                    TO_CHAR(��¥ �Ǵ� ����)
                    
                    '2024/02/19' �� ��� ���������� ����ϴ� ��¥ �����̹Ƿ� 
                    ������ ���������� �ʾƵ� ����ȯ�� ���ش�.
                    
                    2024.02.19
                    2024-02-19
                    
                ���� 2 ]
                    TO_CHAR(��¥ �Ǵ� ����, '���Ĺ���')
                    ==> ��ȯ�� �� ���ϴ� ������ ���ڷ� ��ȯ���ִ� ���
                    
                        �� ]
                            ���� �ð��� '��/��/���ڸ��⵵' �� ������ ���ڿ���...
                            
                            SELECT
                                TO_CHAR(SYSDATE, 'MM/DD/YY') ����⵵
                            FROM
                                dual
                            ;
                            
                            SELECT
                                TO_CHAR(1000, '9,999,999,999.99') ����1,
                                ==> ��ȿ���� ǥ�þ���
                                TO_CHAR(1000, '000,000,000.00') ����2
                                ==> ��ȿ���� ǥ��
                            FROM
                                dual
                            ;   
                            ==> $�� ǥ�� ����, ��ȭ�� L�� ǥ��
      
        2. TO_DATE()
            ==> ��¥������ ���ڵ����͸� ��¥�����ͷ� ��ȯ
            
                ���� 1 ]
                    TO_DATE(��¥���� ���ڿ�) 
                    ==> ���������� ���Ǵ� ��¥ ������ ������ ���������� �ʾƵ�
                           �ڵ� ����ȯ ���ش�.
                        �� ]
                            1900/01/01
                            1900-01-01
                            1990.01.01
                ���� 2]
                    TO_DATE(��¥���� ���ڿ�, '��¥ ����')
                    ==> ������ �Ϲ������� ���� ��� ��¥ ������ �����ؼ� 
                        ��¥ �����ͷ� ��ȯ���ش�.
                    
                    ���Ĺ��� ]
                        YYYY    : 4�ڸ� �⵵
                        YY      : ���ڸ� �⵵
                        MM      : ���ڸ� ��
                        DD      : ���ڸ� ��
                        DAY     : ����
                        DY      : ���� ����
        
                        
        3. TO_NUMBER()
            ==> ���������� ���ڿ��� ���ڷ� ��ȯ
                    
                ���� ]
                    TO_NUMBER(���ڿ�, '��������'  )
*/

-- ���� ���� �ð� ��ȸ
SELECT
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS') ����ð�
    
FROM
    dual
;

-- ������� ����̸�, �Ի���, �ٹ��� ���� ��ȸ�ϼ���.
SELECT
    ename ����̸�, hiredate �Ի���, FLOOR(SYSDATE - hiredate) �ٹ��ϼ�
FROM
    emp
;

SELECT
    SYSDATE + 10
FROM
    dual
;

-- ���ú��� 5���� �� ��¥�� ���ϼ���.
SELECT
    ADD_MONTHS(SYSDATE, 5) ��¥
FROM
    dual
;

-- ������� ����̸�, �Ի���, �ٹ����� ���� ��ȸ�ϼ���.
SELECT
    ename ����̸�, hiredate �Ի���, FLOOR(MONTHS_BETWEEN(SYSDATE, hiredate)) ������,
    ABS(FLOOR(MONTHS_BETWEEN(hiredate, SYSDATE))) ������2
FROM
    emp
;

-- �̹��� ��������
SELECT
    LAST_DAY(SYSDATE + 11)
FROM
    dual
;

-- ������� �Ի� ù ���� �ٹ��ϼ��� ��ȸ�ϼ���.
SELECT
    ename ����̸�, LAST_DAY(hiredate) - hiredate + 1 ù���Ǳٹ��ϼ�
FROM
    emp
;

-- ���� ���� ó�� ���� �ݿ����� ��¥�� ���ϼ���.
SELECT
    NEXT_DAY(SYSDATE, '��') ��,
    NEXT_DAY(SYSDATE, '��') ��
FROM
    dual
;

-- ������ �⵵�� �������� �ݿø��� ��¥�� ��ȸ�ϼ���.
SELECT
    ROUND(SYSDATE, 'YEAR') �⵵
FROM
    dual
;

-- 7�� 4���� �⵵ �������� �ݿø��ϼ���.
SELECT
    ROUND(TO_DATE('2024/07/04', 'YYYY/MM/DD'), 'YEAR') �ݿø�
FROM
    dual
;
-- ���� ��¥�� �� ���� �ݿø��� ��¥...
SELECT
    ROUND(SYSDATE, 'MONTH') ����,
    ROUND(SYSDATE, 'DD') ����,
    TO_CHAR(ROUND(SYSDATE, 'HH'), 'YYYY/MM/DD HH24:MI:SS') ����
FROM
    dual
;

-- ���� �ð��� 'XXXX�� XX�� XX�� XX�� XX�� XX��' �� ǥ���ϼ���
SELECT
    TO_CHAR(SYSDATE, 'YYYY"��" MM"��" DD"��" HH24"��" MI"��" SS"��"') �ð�
    
FROM
    dual
;   

SELECT
    TO_CHAR(1000, '9,999,999,999.99') ����1,
    TO_CHAR(1000, '000,000,000.00L') ����2
FROM
    dual
;   

-- ������� ����̸�, �Ի���, �Ի������ ��ȸ�ϼ���.
SELECT
    ename ����̸�, hiredate �Ի���, TO_CHAR(hiredate, 'DAY') �Ի����
FROM
    emp
;

-- ���� ] �����, �Ͽ��Ͽ� �Ի��� �������
--          ����̸�, �Ի���, �޿�, Ŀ�̼�
--          �� ��ȸ�ϼ���. Ŀ�̼��� ���� Ŀ�̼ǿ� 200�� ���� ������ ��ȸ�ϰ�
--          Ŀ�̼��� ������ 300���� 200�� ���Ѱ����� ��ȸ�ϼ���
SELECT
    ename ����̸�, hiredate �Ի���, sal �޿�, (NVL(comm, 300)) + 200 Ŀ�̼�
FROM
    emp
WHERE
--    TO_CHAR(hiredate, 'DAY') = '�����' OR 
--    TO_CHAR(hiredate, 'DAY') = '�Ͽ���'  
    TO_CHAR(hiredate, 'DAY') IN ('�����', '�Ͽ���')  
;
SELECT
    TO_CHAR(SYSDATE,'YY/MM/D DY'),
    TO_CHAR(SYSDATE,'YY/MM/DD DAY')
FROM
    dual
;
SELECT
    TO_NUMBER('$2,435', '9,999$')
FROM
    dual
;

--------------------------------------------------------------------------------
/*
    NULL ó���Լ�
    
        1. NVL(������, NULL�϶� ��ü��)
        
        2. NVL2(�÷��̸�, �÷������, NULL�� �� ��ü��)
            
        3. NULLIF()
             
            ���� ]
                NULLIF(������1, ������2)
                
            �ǹ� ]
                [������1] �� [������2] �� ������ [NULL] �� ��ȯ�ϰ�
                �ٸ��� [������1] �� ��ȯ
                
        4. COALESCE()
        
            ���� ]
                COALESCE(������1, ������2,...)
                
            �ǹ� ]
                �������� �������� ���� ó�� ������ NULL�� �ƴ� �����͸� ��ȯ...
                
*/  

/*
    �����, �Ͽ��Ͽ� �Ի��� �������
    ����̸�, �Ի���, �޿�, Ŀ�̼�
    �� ��ȸ�ϼ���. Ŀ�̼��� ���� Ŀ�̼ǿ� 200�� ���� ������ ��ȸ�ϰ�
    Ŀ�̼��� ������ 300���� 200�� ���Ѱ����� ��ȸ�ϼ���
*/
SELECT
    ename ����̸�, hiredate �Ի���, sal �޿�, NVL2(comm, comm + 200, 500) Ŀ�̼�
FROM
    emp
WHERE
--    TO_CHAR(hiredate, 'DY') IN ('��', '��')
    SUBSTR(TO_CHAR(hiredate, 'DAY'), 1, 1) IN ('��', '��')

;

/*
    ������� 
        ����̸�, �Ի���, �޿�, Ŀ�̼�, ���޾�
    �� ��ȸ�ϼ���.
    
    ���޾��� Ŀ�̼����� �ϰ� Ŀ�̼��� ������ �޿��� �����ϰ�
    �޿��� ������ 0 ���� �����ϵ���
*/
SELECT
    ename ����̸�, hiredate �Ի���, sal �޿�, comm Ŀ�̼�, COALESCE(comm, sal, 0) ���޾�
FROM
    emp
;

/*
    ���� ó���Լ�
        
        ==> �Լ���⺸�ٴ� ���ɿ� ����� ������
            �ڹ��� switch - case, if �� ����ϱ� ���ؼ� ����� ���� ��.
            
        1. DECODE()
        ==> �ڹ��� SWITCH ���� �ش��ϴ� �Լ�
        
            ���� ]
                DECODE(�÷��̸�, ������1, ��ȯ��1,
                                ������2, ��ȯ��2,
                                ...
                                ��ȯ��N
               ) 
               ==> �÷��� ������ ������1�� ������ ��ȯ��1�� ��ȯ�ϰ�
                                ������2�� ������ ��ȯ��2�� ��ȯ�ϰ�
                                ...
                                �´°� ������ ��ȯ��N�� ��ȯ�Ѵ�.
                                
        2. CASE WHEN THEN
        
            ���� 1]
                CASE WHEN ���ǽ�1 THEN ó������1
                     WHEN ���ǽ�2 THEN ó������2
                     ...
                     ELSE ó������N
                END
                
            ���� 2] ==> DECODE() �� ���� �ǹ�
            
                CASE �÷��̸� WHEN ������1 THEN ó������1
                              WHEN ������2 THEN ó������2
                              ....
                              ELSE ó������N
                END
        
*/

/*
    ���� ]
        �������
            ����̸�, ����, �μ���ȣ, �μ��̸�
        �� ��ȸ�ϼ���.
        �μ��̸���
            10 - ������
            20 - �ѹ���
            30 - �����
            �� �ܴ̿� '����'
        ���� ��ȸ�ϱ�� �Ѵ�.
*/
SELECT
    ename ����̸�, 
    job ����, 
    deptno �μ���ȣ, 
    DECODE(deptno, 10, '������', 20, '�ѹ���', 30, '�����', '����') �μ�,
    CASE deptno WHEN 10 THEN '������'
                WHEN 20 THEN '�ѹ���'
                WHEN 30 THEN '�����'
                ELSE '����'
    END �μ���,
    CASE  WHEN deptno = 10 THEN '������'
          WHEN deptno = 20 THEN '�ѹ���'
          WHEN deptno = 30 THEN '�����'
          ELSE '����'
    END �μ���
FROM
    emp
;

/*
    �������
        ����̸�, ����, �μ���ȣ, ���ʽ�
    �� ��ȸ�ϼ���.
    ���ʽ��� �μ�����
    10 - �޿��� 10%
    20 - �޿��� 15%
    30 - �޿��� 20%
    �� �ܴ̿� 0 ����
    �����ϱ�� �Ѵ�
*/
SELECT
    ename ����̸�, 
    job ����, 
    deptno �μ���ȣ, 
    DECODE(deptno, 10, sal * 0.1, 20, sal * 0.15, 30, sal * 0.2, 0) ���ʽ�,
    CASE deptno WHEN 10 THEN sal * 0.1
                WHEN 20 THEN sal * 0.15
                WHEN 30 THEN sal * 0.2
                ELSE 0
    END ���ʽ�2,
    CASE  WHEN deptno = 10 THEN sal * 0.1
          WHEN deptno = 20 THEN sal * 0.15
          WHEN deptno = 30 THEN sal * 0.2
          ELSE 0
    END ���ʽ�3
FROM
    emp
;

-- ��¥�Լ�
/*
    1���� 365�� �̶�� �ϰ�
    ������� 
        ����̸�, �Ի���, �ٹ�����
    �� ��ȸ�ϼ���.
    ��, �Ҽ� ���ϴ� ������ ������ �Ѵ�.
*/
SELECT
    ename ����̸�, hiredate �Ի���, FLOOR((sysdate - hiredate) / 365) �ٹ�����
FROM
    emp
;
/*
    �������
        ����̸�, �Ի���, �ٹ������
    �� ��ȸ�ϼ���.
    �ٹ�������� 
        �� �ٹ� �������� 12�� ���� ���� �ٹ� ����� �ϰ�
        �������� �ٹ��������� �ϱ���Ѵ�.
*/
SELECT
    ename ����̸�, 
    hiredate �Ի���, 
    FLOOR((SYSDATE - hiredate) / 365) �ٹ����, 
    ROUND((((SYSDATE - hiredate) / 365) - FLOOR((SYSDATE - hiredate) / 365)) * 12) �ٹ�����
FROM
    emp
;
/*
    �������
        ����̸�, �Ի���, ù �޿����� �ٹ��ϼ�
    �� ��ȸ�ϼ���.
    �޿����� �ſ� 1�Ϸ� �Ѵ�.
*/
SELECT
    ename, hiredate, LAST_DAY(hiredate) - hiredate + 1 �ٹ��ϼ� 
FROM
    emp
;
/*
    �������
        ����̸�, �Ի���, ù �����
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, hiredate �Ի���, NEXT_DAY(hiredate, '�����') "ù �����"
FROM
    emp
;
/*
    �������
        �ٹ������ �Ի��� ���� 1���� �������� �ϸ�
    �������
        ����̸�, �Ի���, �ٹ�������
    �� ��ȸ�ϼ���.
    16�� ���� �Ի��ڴ� ������ 1���� �ٹ� �����Ϸ� �ϱ�� �Ѵ�.
*/
SELECT
    ename ����̸�, hiredate �Ի���, ROUND(hiredate, 'month') �Ի������
FROM
    emp
;
/*
    ������� 
        ����̸�, �޿�, ��±޿�
    �� ��ȸ�ϼ���.
    ��±޿��� 10�ڸ��� �ϰ�
    ���� �κ��� ���ʿ� '*'�� ǥ���ϱ�� �Ѵ�.
*/
SELECT
    ename ����̸�, sal �޿�, LPAD(sal, 10, '*') ��±޿�
FROM
    emp
;
/*
    ����� �� '������' �� �Ի��� �������
        ����̸�, �Ի���, �Ի����
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, hiredate �Ի���, TO_CHAR(hiredate, 'day') �Ի����
FROM
    emp
WHERE
    TO_CHAR(hiredate, 'day') = '�����'
;
/*
    �޿��� 100������ 0�� �������
        ����̸�, �޿�
    �� ��ȸ�ϼ���.
    ����ȯ�Լ��� �̿��ؼ� ó���ϼ���.
*/
SELECT
    ename ����̸�, sal �޿�
FROM
    emp
WHERE
    SUBSTR(TO_CHAR((sal / 100)), -1) = 0 
;
/*
    �������
        ����̸�, �޿�, Ŀ�̼�
    �� ��ȸ�ϼ���.
    Ŀ�̼��� ���� ����� 'None' ���� ��µǰ� �ϼ���.
*/
SELECT
    ename ����̸�, 
    sal �޿�, 
    DECODE(comm, null, 'None', comm) Ŀ�̼�
FROM
    emp
;
/*
    �Ի�⵵�� ��������
        80�⵵�� �Ի��� ����� 'A' ���
        81�⵵ 'B' ���
        82�⵵ 'C' ���
        �� �� �⵵�� �Ի��� ����� 'D' ������� ��ȸ�ǵ���
    �������
        ����̸�, �Ի�⵵, �Ի���
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, 
    hiredate �Ի���, 
    CASE TO_CHAR(hiredate, 'yy') WHEN '80' THEN 'A'
                                WHEN '81' THEN 'B'
                                WHEN '82' THEN 'C'
                                ELSE 'D' �Ի���
    END
FROM
    emp
;
/*
    �޿��� 1000 �̸��̸� 20% �λ��ϰ�
        1001 ~ 3000 �̸� 15�ۼ�Ʈ �λ��ϰ�
        3001 �̻��̸� 10�ۼ�Ʈ �λ��ؼ� 
    �������
        ����̸�, ���޿�, �λ�޿�
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, 
    sal ���޿�, 
    CASE WHEN sal <= 1000 THEN sal * 1.2
        WHEN sal < 1001 and sal < 3000 THEN sal * 1.15
        ELSE sal * 1.1
    END �λ�޿�
FROM
    emp
;
/*
    �������
        ����̸�, �Ի�⵵, ����
    �� ��ȸ�ϼ���.
    ��, ����̸���
        �Ϲݻ���� �̸� �ڿ� ' ���' �� ���̰�
        ������� �̸� ������ ' �����' �� �ٿ��� ��ȸ�ϼ���.
*/
SELECT
    
    DECODE(mgr, null, ename || ' �����', ename || ' ���') ����̸�,
    hiredate �Ի���, 
    job ����
FROM
    emp
;
/*
    �μ���ȣ�� 10 �Ǵ� 20 �̸� �޿� + Ŀ�̼����� 
    (Ŀ�̼��� ������ Ŀ�̼��� 0���� ���)
    �� �� �μ��� �޿��� ���޾����� ��ȸ�ǵ���
    �������
        ����̸�, �μ���ȣ, �޿�, Ŀ�̼�, ���޾�
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, 
    deptno �μ���ȣ, 
    sal �޿�, 
    NVL(comm, 0) Ŀ�̼�, 
    DECODE(deptno, 10, sal + NVL(comm, 0), 20, sal + NVL(comm, 0), sal) ���޾�
FROM
    emp
;
/*
    �Ի������ �����, �Ͽ��� �̸� �޿��� 20%�� ������Ű��
    �� �� ���Ͽ� �Ի��� ����� �޿��� 10%�� �������Ѽ�
    �������
        ����̸�, �Ի����, �޿�, ���ޱ޿�
    �� ��ȸ�ϼ���.
*/
SELECT
    ename ����̸�, 
    TO_CHAR(hiredate, 'day') �Ի����, 
    sal �޿�, 
    DECODE(TO_CHAR(hiredate, 'dy'), '��', sal * 1.2, '��', sal * 1.2, sal * 1.1) ���ޱ޿�
FROM
    emp
;
/*
    �ٹ� ���� ���� 500���� �̻��̸� Ŀ�̼��� 500�� �÷��ְ�
    500���� �̸��̸� ���� Ŀ�̼Ǹ� �����ϵ���
    �������
        ����̸�, �Ի���, �ٹ�������, Ŀ�̼�, ����Ŀ�̼�
    �� ��ȸ�ϼ���.
    ��, Ŀ�̼��� ������ 0���� Ŀ�̼��� ����ϱ�� �Ѵ�.
*/
SELECT
    ename ����̸�, 
    hiredate, 
    TRUNC((SYSDATE - hiredate) / 365 * 12) �ٹ�������,
    NVL(comm, 0) Ŀ�̼�,
        CASE WHEN ((SYSDATE - hiredate) / 365 * 12) >= 500 THEN (NVL(comm, 0) + 500)
        WHEN ((SYSDATE - hiredate) / 365 * 12) < 500 THEN NVL(comm, 0)
        ELSE 0    
    END ����Ŀ�̼�
FROM
    emp
;
/*
    �̸� ���� ���� 5���� �̻��� ����� 3����***�� ��������
    4���� ���ϸ� �׳� �̸��� ����������
        ����̸�, ����, �Ի���,
    �� ��ȸ�ϼ���.
*/
SELECT
    CASE WHEN LENGTH(ename) >= 5 THEN RPAD(SUBSTR(ename, 1, 3), LENGTH(ename), '*')
        WHEN LENGTH(ename) < 5 THEN ename
        ELSE '0'    
    END ����̸�,
    job ����,
    hiredate �Ի���
FROM
    emp
;





















