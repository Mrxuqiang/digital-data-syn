/*
================================================================================
��ṹ����:TB_PUBNH
��ṹ����:����������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNH;
drop index AK_TB_PUBNH;
drop table TB_PUBNH;
create table TB_PUBNH  (
   PUBNH_ID             INTEGER                           not null, /*����������ϸID            */
   PUBNH001             INTEGER                           not null, /*����������ID              */
   PUBNH002             VARCHAR2(255),                              /*��������                  */
   PUBNH003             NUMBER(4)                         not null, /*���ڿ�ʼ                  */
   PUBNH004             NUMBER(4),                                  /*���ڽ���                  */
   PUBNH005             NUMBER(4),                                  /*��������                  */
   PUBNH006             NUMBER(5,4),                                /*�������                  */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����              */                               
   CREATE_DATE          DATE,                                       /*��������                  */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                  */
   MODI_DATE            DATE,                                       /*�޸�����                  */
   FLAG                 NUMBER(1),                                  /*����״̬                  */
   constraint PK_TB_PUBNH primary key (PUBNH_ID)
);
create unique index AK_TB_PUBNH on TB_PUBNH (PUBNH001,PUBNH003);
create sequence SEQ_TB_PUBNH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNH to public;
grant index  on TB_PUBNH to public;
grant update on TB_PUBNH to public; 
grant delete on TB_PUBNH to public;  
grant insert on TB_PUBNH to public; 
grant select on SEQ_TB_PUBNH to public;   