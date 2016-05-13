/*
================================================================================
��ṹ����:TB_HRBAB
��ṹ����:����˰�ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAB;
drop index AK_TB_HRBAB;
drop table TB_HRBAB;
create table TB_HRBAB  (
   HRBAB_ID             INTEGER                         not null,  /*����˰�ʱ�ID       */
   HRBAB001             VARCHAR2(8)                     not null,  /*���               */
   HRBAB002             VARCHAR2(30)                    not null,  /*����               */
   HRBAB003             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAB primary key (HRBAB_ID)
);
create unique index AK_TB_HRAAB on TB_HRBAB (HRBAB001);
create sequence SEQ_TB_HRBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAB to public;
grant index  on TB_HRBAB to public;
grant update on TB_HRBAB to public; 
grant delete on TB_HRBAB to public;  
grant insert on TB_HRBAB to public; 
grant select on SEQ_TB_HRBAB to public;   