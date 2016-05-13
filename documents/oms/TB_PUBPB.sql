/*
================================================================================
��ṹ����:TB_PUBPB
��ṹ����:�䶯��ʽ
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBPB;
drop index AK_TB_PUBPB;
drop table TB_PUBPB;
create table TB_PUBPB  (
   PUBPB_ID             INTEGER                              not null, /*�䶯��ʽID            */
   PUBPB001             VARCHAR2(4)                          not null, /*�䶯��ʽ����          */
   PUBPB002             VARCHAR2(60)                         not null, /*�䶯��ʽ����          */
   PUBPB003             VARCHAR2(1)                          not null, /*�Ƿ�Ԥ��              */
   PUBPB004             VARCHAR2(1)                          not null, /*������ʽ              */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����          */                               
   CREATE_DATE          DATE,                                          /*��������              */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա              */
   MODI_DATE            DATE,                                          /*�޸�����              */
   FLAG                 NUMBER(1),                                     /*����״̬              */
   constraint PK_TB_PUBPB primary key (PUBPB_ID)
);
create unique index AK_TB_PUBPB on TB_PUBPB (PUBPB001);
create sequence SEQ_TB_PUBPB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPB to public;
grant index  on TB_PUBPB to public;
grant update on TB_PUBPB to public; 
grant delete on TB_PUBPB to public;  
grant insert on TB_PUBPB to public; 
grant select on SEQ_TB_PUBPB to public;   