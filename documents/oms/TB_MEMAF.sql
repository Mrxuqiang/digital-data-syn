/*
================================================================================
��ṹ����:TB_MEMAF
��ṹ����:��Ȥ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAF;
drop index AK_TB_MEMAF;
drop table TB_MEMAF;
create table TB_MEMAF  (
   MEMAF_ID             INTEGER                         not null,  /*��ȤID             */
   MEMAF001             VARCHAR2(4)                     not null,  /*��Ȥ����           */
   MEMAF002             VARCHAR2(30)                    not null,  /*��Ȥ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAF primary key (MEMAF_ID)
);
create unique index AK_TB_MEMAF on TB_MEMAF (MEMAF001);
create sequence SEQ_TB_MEMAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAF to public;
grant index  on TB_MEMAF to public;
grant update on TB_MEMAF to public; 
grant delete on TB_MEMAF to public;  
grant insert on TB_MEMAF to public; 
grant select on SEQ_TB_MEMAF to public;   