/*
================================================================================
��ṹ����:TB_MEDDA
��ṹ����:�������ֶ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDDA;
drop index AK_TB_MEDDA;
drop table TB_MEDDA;
create table TB_MEDDA  (
   MEDDA_ID             INTEGER                         not null,  /*��������ID         */
   MEDDA001             VARCHAR2(8)                     not null,  /*�������ֱ��       */
   MEDDA002             VARCHAR2(30)                    not null,  /*������������       */
   MEDDA003             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDDA primary key (MEDDA_ID)
);
create unique index AK_TB_MEDDA on TB_MEDDA (MEDDA001);
create sequence SEQ_TB_MEDDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDDA to public;
grant index  on TB_MEDDA to public;
grant update on TB_MEDDA to public; 
grant delete on TB_MEDDA to public;  
grant insert on TB_MEDDA to public; 
grant select on SEQ_TB_MEDDA to public;   