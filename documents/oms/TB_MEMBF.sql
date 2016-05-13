/*
================================================================================
��ṹ����:TB_MEMBF
��ṹ����:��Ա������������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBF;
drop index AK_TB_MEMBF;
drop table TB_MEMBF;
create table TB_MEMBF  (
   MEMBF_ID             INTEGER                         not null,  /*��Ա������������ϸID*/
   MEMBF001             INTEGER                         not null,  /*��Ա��������ID      */
   MEMBF002             INTEGER                         not null,  /*����ID              */
   MEMBF003             NUMBER(12,2)                    not null,  /*������            */
   MEMBF004             INTEGER,                                   /*��������ID          */
   MEMBF005             NUMBER(12,2),                              /*�����ѽ��          */
   MEMBF006             VARCHAR2(30),                              /*����                */
   MEMBF007             NUMBER(12,2),                              /*֧Ʊ���            */
   MEMBF008             VARCHAR2(16),                              /*֧Ʊ��              */
   MEMBF009             VARCHAR2(60),                              /*֧Ʊ��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEMBF primary key (MEMBF_ID)
);
create unique index AK_TB_MEMBF on TB_MEMBF (MEMBF001,MEMBF002);
create sequence SEQ_TB_MEMBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBF to public;
grant index  on TB_MEMBF to public;
grant update on TB_MEMBF to public; 
grant delete on TB_MEMBF to public;  
grant insert on TB_MEMBF to public; 
grant select on SEQ_TB_MEMBF to public;   