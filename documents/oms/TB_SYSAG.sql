/*
================================================================================
��ṹ����:TB_SYSAG
��ṹ����:����Ԫ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAG;
drop index AK_TB_SYSAG;
drop table TB_SYSAG;
create table TB_SYSAG  (
   SYSAG_ID             INTEGER                         not null,  /*��Ԫ��ID          */
   SYSAG001             VARCHAR2(5)                     not null,  /*����              */
   SYSAG002             VARCHAR2(30)                    not null,  /*��λ����          */
   SYSAG003             VARCHAR2(1)                     not null,  /*���:0.���� 1���� 2���� 3ͼƬ            */
   SYSAG004             NUMBER(3),                                 /*���־���          */
   SYSAG005             NUMBER(5),                                 /*�ֶγ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SYSAG primary key (SYSAG_ID)
);
create unique index AK_TB_SYSAG on TB_SYSAG (SYSAG001);
create sequence SEQ_TB_SYSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAG to public;
grant index  on TB_SYSAG to public;
grant update on TB_SYSAG to public; 
grant delete on TB_SYSAG to public;  
grant insert on TB_SYSAG to public; 
grant select on SEQ_TB_SYSAG to public;   