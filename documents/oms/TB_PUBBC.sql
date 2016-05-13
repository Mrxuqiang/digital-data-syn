/*
================================================================================
��ṹ����:TB_PUBBC
��ṹ����:������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBC;
drop index AK_TB_PUBBC;
drop table TB_PUBBC;
create table TB_PUBBC  (
   PUBBC_ID             INTEGER                         not null,  /*����ID             */
   PUBBC001             VARCHAR2(4)                     not null,  /*��������           */
   PUBBC002             VARCHAR2(20)                    not null,  /*��������           */
   PUBBC003             INTEGER                         not null,  /*����ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBC primary key (PUBBC_ID)
);
create unique index AK_TB_PUBBC on TB_PUBBC (PUBBC001);
create sequence SEQ_TB_PUBBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBC to public;
grant index  on TB_PUBBC to public;
grant update on TB_PUBBC to public; 
grant delete on TB_PUBBC to public;  
grant insert on TB_PUBBC to public; 
grant select on SEQ_TB_PUBBC to public;   