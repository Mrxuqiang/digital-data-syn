/*
================================================================================
��ṹ����:TB_BATDE
��ṹ����:�׼�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATDE;                       
drop index AK_TB_BATDE;                       
drop table TB_BATDE;                       
create table TB_BATDE  (                       
   BATDE_ID	            INTEGER	        not null,       /* �׼�������ID       */
   BATDE001	            INTEGER	        not null,       /* �׼�����ID       */ 
   BATDE002	            INTEGER		        ,       /* ���䵥������       */   
   BATDE003	            INTEGER		        ,       /* ���䵥��ID         */   
   BATDE004	            INTEGER		        ,       /* ���䵥����ϸID     */   
   BATDE005	            number(28,3)        not null,       /* ��������           */
   BATDE006	            number(28,3),		        /* �ѳ�����           */
   BATDE007	            number(28,3),		        /* ������           */
   BATDE008	            number(28,6),		        /* ���㵥��           */
   CREATE_USER          VARCHAR2(12),                   /* ������Ա           */
   USER_GROUP           VARCHAR2(12),                   /* ������Ա����       */                               
   CREATE_DATE          DATE,                           /* ��������           */
   MODIFIER             VARCHAR2(12),                   /* �޸���Ա           */
   MODI_DATE            DATE,                           /* �޸�����           */
   FLAG                 NUMBER(1),                      /* ����״̬           */
   constraint PK_TB_BATDE primary key (BATDE_ID)
);
--create unique index AK_TB_BATDE on TB_BATDE (BATDE_ID);
create sequence SEQ_TB_BATDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDE to public;
grant index  on TB_BATDE to public;
grant update on TB_BATDE to public; 
grant delete on TB_BATDE to public;  
grant insert on TB_BATDE to public; 
grant select on SEQ_TB_BATDE to public;                                      