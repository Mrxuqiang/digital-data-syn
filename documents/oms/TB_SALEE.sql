/*
================================================================================
��ṹ����:TB_SALEE
��ṹ����:�ս�̯λ��ȯ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALEE;
drop index AK_TB_SALEE;
drop table TB_SALEE;
create table TB_SALEE  (
   SALEE_ID             INTEGER                         not null,  /*�ս�̯λ����ID        */
   SALEE001             INTEGER                         not null,  /*Ӫ����֯ID            */
   SALEE002             DATE                            not null,  /*��������              */
   SALEE003             VARCHAR2(1)                     not null,  /*��������              */
   SALEE004             INTEGER                         not null,  /*��ͬ��ID              */
   SALEE005             INTEGER                         not null,  /*ȯ��ID                */
   SALEE006             NUMBER(12,2)                    not null,  /*������              */
   SALEE007             NUMBER(12,2)                    not null,  /*���ս��              */
   SALEE008             INTEGER                         not null,  /*̯λID                */
   SALEE009             INTEGER                         not null,  /*��Ʒ��ID              */
   SALEE010             INTEGER                         not null,  /*�̻�ID                */
   SALEE011             INTEGER                         not null,  /*¥��ID                */
   SALEE012             INTEGER                         not null,  /*¥��ID                */
   SALEE013             INTEGER                         not null,  /*��Ӫ����ID            */
   SALEE014             INTEGER                         not null,  /*��Ӫ����ID            */
   SALEE015             INTEGER                         not null,  /*��ӪС��ID            */
   SALEE016             VARCHAR2(30),                              /*�ο�����һ            */
   SALEE017             VARCHAR2(30),                              /*�ο����Ŷ�            */
   SALEE018             VARCHAR2(30),                              /*�ο�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_SALEE primary key (SALEE_ID)
);
create unique index AK_TB_SALEE on TB_SALEE (SALEE001,SALEE002,SALEE003,SALEE004,SALEE005);
create sequence SEQ_TB_SALEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEE to public;
grant index  on TB_SALEE to public;
grant update on TB_SALEE to public; 
grant delete on TB_SALEE to public;  
grant insert on TB_SALEE to public; 
grant select on SEQ_TB_SALEE to public;   