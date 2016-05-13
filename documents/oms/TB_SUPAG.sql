/*
================================================================================
��ṹ����:TB_SUPAG
��ṹ����:���̻��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAG;
drop index AK_TB_SUPAG;
drop table TB_SUPAG;
create table TB_SUPAG  (
   SUPAG_ID             INTEGER                         not null,  /*���̻����ID      */
   SUPAG001             INTEGER                         not null,  /*���̻ID          */
   SUPAG002             INTEGER                         not null,  /*�׶�ID              */
   SUPAG003             INTEGER                         not null,  /*����ID              */
   SUPAG004             DATE                            not null,  /*�������            */
   SUPAG005             VARCHAR2(1)                     not null,  /*���״��0.���� 1.����  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAG primary key (SUPAG_ID)
);
create unique index AK_TB_SUPAG on TB_SUPAG (SUPAG001,SUPAG002,SUPAG003);
create sequence SEQ_TB_SUPAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAG to public;
grant index  on TB_SUPAG to public;
grant update on TB_SUPAG to public; 
grant delete on TB_SUPAG to public;  
grant insert on TB_SUPAG to public; 
grant select on SEQ_TB_SUPAG to public;   