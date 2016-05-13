/*
================================================================================
��ṹ����:TB_TAXAD
��ṹ����:��Ʊ��ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAD;
drop index AK_TB_TAXAD;
drop table TB_TAXAD;
create table TB_TAXAD  (
   TAXAD_ID             INTEGER                         not null,  /*��Ʊ��ⵥ��ϸID  */
   TAXAD001             INTEGER                         not null,  /*��Ʊ��ⵥID      */
   TAXAD002             INTEGER                         not null,  /*��Ʊ����ID        */
   TAXAD003             NUMBER(12)                      not null,  /*��ʼƱ��          */
   TAXAD004             NUMBER(12)                      not null,  /*����Ʊ��          */
   TAXAD005             NUMBER(12)                      not null,  /*����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAD primary key (TAXAD_ID)
);
create unique index AK_TB_TAXAD on TB_TAXAD (TAXAD001,TAXAD002,TAXAD003);
create sequence SEQ_TB_TAXAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAD to public;
grant index  on TB_TAXAD to public;
grant update on TB_TAXAD to public; 
grant delete on TB_TAXAD to public;  
grant insert on TB_TAXAD to public; 
grant select on SEQ_TB_TAXAD to public;   