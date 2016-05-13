/*
================================================================================
��ṹ����:TB_CONCF
��ṹ����:��ͬ��������Ա������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCF;
drop index AK_TB_CONCF;
drop table TB_CONCF;
create table TB_CONCF  (
   CONCF_ID             INTEGER                         not null,  /*��ͬ��������Ա�������ID*/
   CONCF001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCF002             INTEGER                         not null,  /*����ID              */
   CONCF003             INTEGER                         not null,  /*��ʽ����ID          */
   CONCF004             VARCHAR2(1)                     not null,  /*��׼�㼶            */
   CONCF005             VARCHAR2(1)                     not null,  /*��������            */
   CONCF006             VARCHAR2(1)                     not null,  /*չ�ʷ�ʽ            */
   CONCF007             VARCHAR2(1)                     not null,  /*��׼����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */   
   constraint PK_TB_CONCF primary key (CONCF_ID)
);
create unique index AK_TB_CONCF on TB_CONCF (CONCF001,CONCF002);
create sequence SEQ_TB_CONCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCF to public;
grant index  on TB_CONCF to public;
grant update on TB_CONCF to public; 
grant delete on TB_CONCF to public;  
grant insert on TB_CONCF to public; 
grant select on SEQ_TB_CONCF to public;   