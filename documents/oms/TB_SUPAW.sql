/*
================================================================================
��ṹ����:TB_SUPAW
��ṹ����:���̱�����б�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAW;
drop index AK_TB_SUPAW;
drop table TB_SUPAW;
create table TB_SUPAW  (
   SUPAW_ID             INTEGER                         not null,  /*���̱������ID      */
   SUPAW001             INTEGER                         not null,  /*���̱��ID          */
   SUPAW002             VARCHAR2(50)                    not null,  /*�����ʺ�            */
   SUPAW003             VARCHAR2(255)                   not null,  /*��������            */
   SUPAW004             VARCHAR2(255)                   not null,  /*���е�ַ            */
   SUPAW005             INTEGER                         not null,  /*����ID              */
   SUPAW006             VARCHAR2(1),                               /*�Ƿ�Ĭ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAW primary key (SUPAW_ID)
);
create unique index AK_TB_SUPAW on TB_SUPAW (SUPAW001,SUPAW002);
create sequence SEQ_TB_SUPAW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAW to public;
grant index  on TB_SUPAW to public;
grant update on TB_SUPAW to public; 
grant delete on TB_SUPAW to public;  
grant insert on TB_SUPAW to public; 
grant select on SEQ_TB_SUPAW to public;   