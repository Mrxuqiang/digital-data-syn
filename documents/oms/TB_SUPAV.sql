/*
================================================================================
��ṹ����:TB_SUPAV
��ṹ����:�̻��������б�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAV;
drop index AK_TB_SUPAV;
drop table TB_SUPAV;
create table TB_SUPAV  (
   SUPAV_ID             INTEGER                         not null,  /*�Ǽ�����ID          */
   SUPAV001             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAV002             VARCHAR2(50)                    not null,  /*�����ʺ�            */
   SUPAV003             VARCHAR2(255)                   not null,  /*��������            */
   SUPAV004             VARCHAR2(255)                   not null,  /*���е�ַ            */
   SUPAV005             INTEGER                         not null,  /*����ID              */
   SUPAV006             VARCHAR2(1),                               /*�Ƿ�Ĭ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAV primary key (SUPAV_ID)
);
create unique index AK_TB_SUPAV on TB_SUPAV (SUPAV001,SUPAV002);
create sequence SEQ_TB_SUPAV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAV to public;
grant index  on TB_SUPAV to public;
grant update on TB_SUPAV to public; 
grant delete on TB_SUPAV to public;  
grant insert on TB_SUPAV to public; 
grant select on SEQ_TB_SUPAV to public;   