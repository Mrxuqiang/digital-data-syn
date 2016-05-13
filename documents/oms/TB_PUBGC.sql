/*
================================================================================
��ṹ����:TB_PUBGC
��ṹ����:֤�����ͱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGC;
drop index AK_TB_PUBGC;
drop table TB_PUBGC;
create table TB_PUBGC  (
   PUBGC_ID             INTEGER                         not null,  /*֤������ID         */
   PUBGC001             VARCHAR2(4)                     not null,  /*֤�����ʹ���       */
   PUBGC002             VARCHAR2(30)                    not null,  /*֤����������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGC primary key (PUBGC_ID)
);
create unique index AK_TB_PUBGC on TB_PUBGC (PUBGC001);
create sequence SEQ_TB_PUBGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGC to public;
grant index  on TB_PUBGC to public;
grant update on TB_PUBGC to public; 
grant delete on TB_PUBGC to public;  
grant insert on TB_PUBGC to public; 
grant select on SEQ_TB_PUBGC to public;   