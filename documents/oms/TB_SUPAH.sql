/*
================================================================================
��ṹ����:TB_SUPAH
��ṹ����:���̻���̼�¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAH;
drop index AK_TB_SUPAH;
drop table TB_SUPAH;
create table TB_SUPAH  (
   SUPAH_ID             INTEGER                         not null,  /*���̻������ϵID  */
   SUPAH001             INTEGER                         not null,  /*���̻ID          */
   SUPAH002             INTEGER                         not null,  /*�׶�ID              */
   SUPAH003             INTEGER                         not null,  /*����ID              */
   SUPAH004             DATE                            not null,  /*ִ������            */
   SUPAH005             INTEGER                         not null,  /*ִ����ID            */
   SUPAH006             VARCHAR2(255)                   not null,  /*ִ������            */
   SUPAH007             VARCHAR2(255)                   not null,  /*ִ�н��            */
   SUPAH008             VARCHAR2(255),                             /*����ܽ�            */
   SUPAH009             VARCHAR2(255),                             /*�����ж�����        */
   SUPAH010             VARCHAR2(255),                             /*�����ж�Ŀ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAH primary key (SUPAH_ID)
);
create unique index AK_TB_SUPAH on TB_SUPAH (SUPAH_ID,SUPAH001,SUPAH002,SUPAH003,SUPAH004);
create sequence SEQ_TB_SUPAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAH to public;
grant index  on TB_SUPAH to public;
grant update on TB_SUPAH to public; 
grant delete on TB_SUPAH to public;  
grant insert on TB_SUPAH to public; 
grant select on SEQ_TB_SUPAH to public;   