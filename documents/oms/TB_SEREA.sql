/*
================================================================================
��ṹ����:TB_SEREA
��ṹ����:��Ʒ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREA;
drop index AK_TB_SEREA;
drop table TB_SEREA;
create table TB_SEREA  (
   SEREA_ID             INTEGER                         not null,  /*����ID            */
   SEREA001             VARCHAR2(16)                    not null,  /*�������          */
   SEREA002             VARCHAR2(30)                    not null,  /*��������          */
   SEREA003             INTEGER                         not null,  /*�ϼ�����          */
   SEREA004             VARCHAR2(255),                             /*��ע              */
   SEREA005             VARCHAR2(30),                              /*��ǰ�㼶����      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SEREA primary key (SEREA_ID)
);
create unique index AK_TB_SEREA on TB_SEREA (SEREA001);
create sequence SEQ_TB_SEREA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREA to public;
grant index  on TB_SEREA to public;
grant update on TB_SEREA to public; 
grant delete on TB_SEREA to public;  
grant insert on TB_SEREA to public; 
grant select on SEQ_TB_SEREA to public;   