/*
================================================================================
��ṹ����:TB_PUBDA
��ṹ����:��ʽ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBDA;
drop index AK_TB_PUBDA;
drop table TB_PUBDA;
create table TB_PUBDA  (
   PUBDA_ID             INTEGER                         not null,  /*��ʽ����ID         */
   PUBDA001             VARCHAR2(4)                     not null,  /*��ʽ�������       */
   PUBDA002             VARCHAR2(30)                    not null,  /*��ʽ��������       */
   PUBDA003             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBDA primary key (PUBDA_ID)
);
create unique index AK_TB_PUBDA on TB_PUBDA (PUBDA001);
create sequence SEQ_TB_PUBDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDA to public;
grant index  on TB_PUBDA to public;
grant update on TB_PUBDA to public; 
grant delete on TB_PUBDA to public;  
grant insert on TB_PUBDA to public; 
grant select on SEQ_TB_PUBDA to public;   