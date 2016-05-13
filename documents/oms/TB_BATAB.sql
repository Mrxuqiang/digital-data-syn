/*
================================================================================
��ṹ����:TB_BATAB
��ṹ����:���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATAB;
drop index AK_TB_BATAB;
drop table TB_BATAB;
create table TB_BATAB  (
   BATAB_ID	          INTEGER              not null,   /*������ID             */   
   BATAB001	          INTEGER,                         /*����ID               */   
   BATAB002	          VARCHAR2(2)          not null,   /*��������             */   
   BATAB003	          INTEGER              not null,   /*����ID               */   
   BATAB004	          INTEGER,                         /*��ϸID               */   
   BATAB005	          INTEGER,                         /*ά��1                */   
   BATAB006	          INTEGER,                         /*ά��2                */   
   BATAB007	          INTEGER,                         /*ά��3                */   
   BATAB008	          INTEGER,                         /*ά��4                */   
   BATAB009	          INTEGER,                         /*ά��5                */   
   BATAB010	          NUMBER(18,3)         not null,   /*��������             */   
   BATAB011               INTEGER              not null,   /*��ƷID               */
   BATAB012               INTEGER              not null,   /*�ֿ�ID               */
   BATAB013               INTEGER,                         /*��λID               */
   constraint PK_TB_BATAB primary key (BATAB_ID)
);
create unique index AK_TB_BATAB on TB_BATAB (BATAB_ID,BATAB001);
create sequence SEQ_TB_BATAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAB to public;
grant index  on TB_BATAB to public;
grant update on TB_BATAB to public; 
grant delete on TB_BATAB to public;  
grant insert on TB_BATAB to public; 
grant select on SEQ_TB_BATAB to public;   