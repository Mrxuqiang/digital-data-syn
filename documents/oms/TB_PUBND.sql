/*
================================================================================
��ṹ����:TB_PUBND
��ṹ����:������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBND;
drop index AK_TB_PUBND;
drop table TB_PUBND;
create table TB_PUBND  (
   PUBND_ID             INTEGER                         not null,   /*����������ID            */
   PUBND001             VARCHAR2(20)                    not null,   /*�������ı���            */
   PUBND002             VARCHAR2(200)                   not null,   /*������������            */
   PUBND003             VARCHAR2(20),                               /*������                  */
   PUBND004             INTEGER                         not null ,  /*��Ӧ��˾ID              */   
   PUBND005             INTEGER ,                                   /*�ϼ���������ID          */
   PUBND006             VARCHAR2(1),                                /*����־                */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                */
   constraint PK_TB_PUBND primary key (PUBND_ID)
);
create unique index AK_TB_PUBND on TB_PUBND (PUBND001);
create sequence SEQ_TB_PUBND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBND to public;
grant index  on TB_PUBND to public;
grant update on TB_PUBND to public; 
grant delete on TB_PUBND to public;  
grant insert on TB_PUBND to public; 
grant select on SEQ_TB_PUBND to public;   