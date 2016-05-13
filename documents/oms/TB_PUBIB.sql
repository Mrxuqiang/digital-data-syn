/*
================================================================================
��ṹ����:TB_PUBIB
��ṹ����:��Ӫ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIB;
drop index AK_TB_PUBIB;
drop table TB_PUBIB;
create table TB_PUBIB  (
   PUBIB_ID             INTEGER                         not null,  /*��Ӫ����ID         */
   PUBIB001             VARCHAR2(10)                    not null,  /*��Ӫ�������       */
   PUBIB002             VARCHAR2(30)                    not null,  /*��Ӫ��������       */
   PUBIB003             INTEGER                         not null,  /*��������ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBIB primary key (PUBIB_ID)
);
create unique index AK_TB_PUBIB on TB_PUBIB (PUBIB001);
create sequence SEQ_TB_PUBIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIB to public;
grant index  on TB_PUBIB to public;
grant update on TB_PUBIB to public; 
grant delete on TB_PUBIB to public;  
grant insert on TB_PUBIB to public; 
grant select on SEQ_TB_PUBIB to public;   