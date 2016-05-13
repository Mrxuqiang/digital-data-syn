/*
================================================================================
��ṹ����:TB_PUBBD
��ṹ����:ʡ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBD;
drop index AK_TB_PUBBD;
drop table TB_PUBBD;
create table TB_PUBBD  (
   PUBBD_ID             INTEGER                         not null,  /*ʡ��ID             */
   PUBBD001             VARCHAR2(4)                     not null,  /*ʡ�����           */
   PUBBD002             VARCHAR2(20)                    not null,  /*ʡ������           */
   PUBBD003             INTEGER                         not null,  /*����ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBD primary key (PUBBD_ID)
);
create unique index AK_TB_PUBBD on TB_PUBBD (PUBBD001);
create sequence SEQ_TB_PUBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBD to public;
grant index  on TB_PUBBD to public;
grant update on TB_PUBBD to public; 
grant delete on TB_PUBBD to public;  
grant insert on TB_PUBBD to public; 
grant select on SEQ_TB_PUBBD to public;   