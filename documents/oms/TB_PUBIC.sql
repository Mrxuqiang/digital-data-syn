/*
================================================================================
��ṹ����:TB_PUBIC
��ṹ����:��ӪС���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIC;
drop index AK_TB_PUBIC;
drop table TB_PUBIC;
create table TB_PUBIC  (
   PUBIC_ID             INTEGER                         not null,  /*��ӪС��ID         */
   PUBIC001             VARCHAR2(10)                    not null,  /*��ӪС�����       */
   PUBIC002             VARCHAR2(30)                    not null,  /*��ӪС������       */
   PUBIC003             INTEGER                         not null,  /*��������ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBIC primary key (PUBIC_ID)
);
create unique index AK_TB_PUBIC on TB_PUBIC (PUBIC001);
create sequence SEQ_TB_PUBIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIC to public;
grant index  on TB_PUBIC to public;
grant update on TB_PUBIC to public; 
grant delete on TB_PUBIC to public;  
grant insert on TB_PUBIC to public; 
grant select on SEQ_TB_PUBIC to public;   