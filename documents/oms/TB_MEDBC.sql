/*
================================================================================
��ṹ����:TB_MEDBC
��ṹ����:��Ŀ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDBC;
drop index AK_TB_MEDBC;
drop table TB_MEDBC;
create table TB_MEDBC  (
   MEDBC_ID             INTEGER                         not null,  /*��ĿID             */
   MEDBC001             VARCHAR2(4)                     not null,  /*��Ŀ���           */
   MEDBC002             VARCHAR2(30)                    not null,  /*��Ŀ����           */
   MEDBC003             VARCHAR2(255),                             /*��Ŀ˵��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDBC primary key (MEDBC_ID)
);
create unique index AK_TB_MEDBC on TB_MEDBC (MEDBC001);
create sequence SEQ_TB_MEDBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBC to public;
grant index  on TB_MEDBC to public;
grant update on TB_MEDBC to public; 
grant delete on TB_MEDBC to public;  
grant insert on TB_MEDBC to public; 
grant select on SEQ_TB_MEDBC to public;   