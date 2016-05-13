/*
================================================================================
��ṹ����:TB_CONBI
��ṹ����:��ͬ�����Ա������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBI;
drop index AK_TB_CONBI;
drop table TB_CONBI;
create table TB_CONBI  (
   CONBI_ID             INTEGER                         not null,  /*��ͬ�����Ա�������ID*/
   CONBI001             INTEGER                         not null,  /*��ͬID              */
   CONBI002             INTEGER                         not null,  /*����ID              */
   CONBI003             INTEGER                         not null,  /*��ʽID              */
   CONBI004             VARCHAR2(1),                               /*��׼�㼶            */
   CONBI005             VARCHAR2(1),                               /*��������            */
   CONBI006             VARCHAR2(1)                     not null,  /*չ�ʷ�ʽ            */
   CONBI007             VARCHAR2(1)                     not null,  /*��׼����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */   
   constraint PK_TB_CONBI primary key (CONBI_ID)
);
create unique index AK_TB_CONBI on TB_CONBI (CONBI001,CONBI002);
create sequence SEQ_TB_CONBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBI to public;
grant index  on TB_CONBI to public;
grant update on TB_CONBI to public; 
grant delete on TB_CONBI to public;  
grant insert on TB_CONBI to public; 
grant select on SEQ_TB_CONBI to public;   