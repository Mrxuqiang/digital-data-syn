/*
================================================================================
��ṹ����:TB_SYSDA
��ṹ����:��ɫ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDA;
drop index AK_TB_SYSDA;
drop table TB_SYSDA;
create table TB_SYSDA  (
   SYSDA_ID             INTEGER                         not null,  /*��ɫID           */
   SYSDA001             VARCHAR2(10)                    not null,  /*��ɫ����         */
   SYSDA002             VARCHAR2(40)                    not null,  /*��ɫ����         */
   SYSDA003             VARCHAR2(1),                               /*�Ƿ���Ч         */
   SYSDA004             VARCHAR2(30),                              /*����ͼ����       */
   SYSDA005             VARCHAR2(2),                               /*��ɫ����        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDA primary key (SYSDA_ID)
);
create unique index AK_TB_SYSDA on TB_SYSDA (SYSDA001);
create sequence SEQ_TB_SYSDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDA to public;
grant index  on TB_SYSDA to public;
grant update on TB_SYSDA to public; 
grant delete on TB_SYSDA to public;  
grant insert on TB_SYSDA to public; 
grant select on SEQ_TB_SYSDA to public;   