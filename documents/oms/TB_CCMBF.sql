/*
================================================================================
��ṹ����:TB_CCMBF
��ṹ����:�׿����˵��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBF;
drop index AK_TB_CCMBF;
drop table TB_CCMBF;
create table TB_CCMBF  (
   CCMBF_ID             INTEGER                         not null,  /*�׿����˵���ϸID    */
   CCMBF001             INTEGER                         not null,  /*�׿����˵�ID        */
   CCMBF002             INTEGER                         not null,  /*����ID              */
   CCMBF003             NUMBER(30)                      not null,  /*��ʼ����            */
   CCMBF004             NUMBER(30)                      not null,  /*��������            */
   CCMBF005             NUMBER(12)                      not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBF primary key (CCMBF_ID)
);
create unique index AK_TB_CCMBF on TB_CCMBF (CCMBF001,CCMBF002,CCMBF003);
create sequence SEQ_TB_CCMBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBF to public;
grant index  on TB_CCMBF to public;
grant update on TB_CCMBF to public; 
grant delete on TB_CCMBF to public;  
grant insert on TB_CCMBF to public; 
grant select on SEQ_TB_CCMBF to public;   