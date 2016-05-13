/*
================================================================================
��ṹ����:TB_TAXAG
��ṹ����:��Ʊ���ϵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAG;
drop index AK_TB_TAXAG;
drop table TB_TAXAG;
create table TB_TAXAG  (
   TAXAG_ID             INTEGER                         not null,  /*��Ʊ���ϵ���ϸID  */
   TAXAG001             INTEGER                         not null,  /*��Ʊ���ϵ�ID      */
   TAXAG002             INTEGER                         not null,  /*��Ʊ����ID        */
   TAXAG003             NUMBER(12)                      not null,  /*��ʼƱ��          */
   TAXAG004             NUMBER(12)                      not null,  /*����Ʊ��          */
   TAXAG005             NUMBER(12)                      not null,  /*����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAG primary key (TAXAG_ID)
);
create unique index AK_TB_TAXAG on TB_TAXAG (TAXAG002,TAXAG003,TAXAG004);
create sequence SEQ_TB_TAXAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAG to public;
grant index  on TB_TAXAG to public;
grant update on TB_TAXAG to public; 
grant delete on TB_TAXAG to public;  
grant insert on TB_TAXAG to public; 
grant select on SEQ_TB_TAXAG to public;   