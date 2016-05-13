/*
================================================================================
��ṹ����:TB_CCMBB
��ṹ����:�׿���ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBB;
drop index AK_TB_CCMBB;
drop table TB_CCMBB;
create table TB_CCMBB  (
   CCMBB_ID             INTEGER                         not null,  /*�׿���ⵥ��ϸID    */
   CCMBB001             INTEGER                         not null,  /*�׿���ⵥID        */
   CCMBB002             INTEGER                         not null,  /*����ID              */
   CCMBB003             NUMBER(18)                      not null,  /*��ʼ����            */
   CCMBB004             NUMBER(18)                      not null,  /*��������            */
   CCMBB005             NUMBER(12)                      not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBB primary key (CCMBB_ID)
);
create unique index AK_TB_CCMBB on TB_CCMBB (CCMBB001,CCMBB002,CCMBB003);
create sequence SEQ_TB_CCMBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBB to public;
grant index  on TB_CCMBB to public;
grant update on TB_CCMBB to public; 
grant delete on TB_CCMBB to public;  
grant insert on TB_CCMBB to public; 
grant select on SEQ_TB_CCMBB to public;   