/*
================================================================================
��ṹ����:TB_MEMAA
��ṹ����:��Ա�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAA;
drop index AK_TB_MEMAA;
drop table TB_MEMAA;
create table TB_MEMAA  (
   MEMAA_ID             INTEGER                         not null,  /*��Ա����ID         */
   MEMAA001             VARCHAR2(4)                     not null,  /*��Ա�������       */
   MEMAA002             VARCHAR2(30)                    not null,  /*��Ա��������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAA primary key (MEMAA_ID)
);
create unique index AK_TB_MEMAA on TB_MEMAA (MEMAA001);
create sequence SEQ_TB_MEMAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAA to public;
grant index  on TB_MEMAA to public;
grant update on TB_MEMAA to public; 
grant delete on TB_MEMAA to public;  
grant insert on TB_MEMAA to public; 
grant select on SEQ_TB_MEMAA to public; 