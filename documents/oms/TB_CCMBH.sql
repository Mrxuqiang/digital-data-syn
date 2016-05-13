/*
================================================================================
��ṹ����:TB_CCMBH
��ṹ����:�׿��������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBH;
drop index AK_TB_CCMBH;
drop table TB_CCMBH;
create table TB_CCMBH  (
   CCMBH_ID             INTEGER                         not null,  /*�׿���������ϸID    */
   CCMBH001             INTEGER                         not null,  /*�׿�������ID        */
   CCMBH002             INTEGER                         not null,  /*����ID              */
   CCMBH003             NUMBER(30)                      not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBH primary key (CCMBH_ID)
);
create unique index AK_TB_CCMBH on TB_CCMBH (CCMBH001,CCMBH002,CCMBH003);
create sequence SEQ_TB_CCMBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBH to public;
grant index  on TB_CCMBH to public;
grant update on TB_CCMBH to public; 
grant delete on TB_CCMBH to public;  
grant insert on TB_CCMBH to public; 
grant select on SEQ_TB_CCMBH to public;   