/*
================================================================================
��ṹ����:TB_PUBGB
��ṹ����:��Ӫ��̬��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGB;
drop index AK_TB_PUBGB;
drop table TB_PUBGB;
create table TB_PUBGB  (
   PUBGB_ID             INTEGER                         not null,  /*��Ӫ��̬ID         */
   PUBGB001             VARCHAR2(4)                     not null,  /*��Ӫ��̬����       */
   PUBGB002             VARCHAR2(30)                    not null,  /*��Ӫ��̬����       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGB primary key (PUBGB_ID)
);
create unique index AK_TB_PUBGB on TB_PUBGB (PUBGB001);
create sequence SEQ_TB_PUBGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGB to public;
grant index  on TB_PUBGB to public;
grant update on TB_PUBGB to public; 
grant delete on TB_PUBGB to public;  
grant insert on TB_PUBGB to public; 
grant select on SEQ_TB_PUBGB to public;   