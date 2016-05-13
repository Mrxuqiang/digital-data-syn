/*
================================================================================
��ṹ����:TB_CONAG
��ṹ����:��ͬ��ӡģ���ӡ��Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAG;
drop index AK_TB_CONAG;
drop table TB_CONAG;
create table TB_CONAG  (
   CONAG_ID             INTEGER                         not null,  /*��ͬģ���ӡ��¼ID  */
   CONAG001             INTEGER                         not null,  /*��ӡģ��ID          */
   CONAG002             INTEGER                         not null,  /*��ͬID              */
   CONAG003             NUMBER(5)                       not null,  /*��ӡ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAG primary key (CONAG_ID)
);
create unique index AK_TB_CONAG on TB_CONAG (CONAG001,CONAG002);
create sequence SEQ_TB_CONAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAG to public;
grant index  on TB_CONAG to public;
grant update on TB_CONAG to public; 
grant delete on TB_CONAG to public;  
grant insert on TB_CONAG to public; 
grant select on SEQ_TB_CONAG to public;   