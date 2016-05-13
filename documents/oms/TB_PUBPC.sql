/*
================================================================================
��ṹ����:TB_PUBPC
��ṹ����:ʹ��״����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBPC;
drop index AK_TB_PUBPC;
drop table TB_PUBPC;
create table TB_PUBPC  (
   PUBPC_ID             INTEGER                              not null, /*ʹ��״��ID            */
   PUBPC001             VARCHAR2(4)                          not null, /*ʹ��״������          */
   PUBPC002             VARCHAR2(60)                         not null, /*ʹ��״������          */
   PUBPC003             VARCHAR2(1)                          not null, /*�Ƿ�����۾�          */
   PUBPC004             VARCHAR2(1)                          not null, /*�Ƿ�Ԥ��              */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����          */                               
   CREATE_DATE          DATE,                                          /*��������              */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա              */
   MODI_DATE            DATE,                                          /*�޸�����              */
   FLAG                 NUMBER(1),                                     /*����״̬              */
   constraint PK_TB_PUBPC primary key (PUBPC_ID)
);
create unique index AK_TB_PUBPC on TB_PUBPC (PUBPC001);
create sequence SEQ_TB_PUBPC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPC to public;
grant index  on TB_PUBPC to public;
grant update on TB_PUBPC to public; 
grant delete on TB_PUBPC to public;  
grant insert on TB_PUBPC to public; 
grant select on SEQ_TB_PUBPC to public;   