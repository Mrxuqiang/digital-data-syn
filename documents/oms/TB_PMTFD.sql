/*
================================================================================
��ṹ����:TB_PMTFD
��ṹ����:���ȯ������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFD;
drop index AK_TB_PMTFD;
drop table TB_PMTFD;
create table TB_PMTFD  (
   PMTFD_ID             INTEGER                         not null,  /*��ȯ���������ID  */
   PMTFD001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFD002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTFD003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFD primary key (PMTFD_ID)
);
create unique index AK_TB_PMTFD on TB_PMTFD (PMTFD001,PMTFD002,PMTFD003);
create sequence SEQ_TB_PMTFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFD to public;
grant index  on TB_PMTFD to public;
grant update on TB_PMTFD to public; 
grant delete on TB_PMTFD to public;  
grant insert on TB_PMTFD to public; 
grant select on SEQ_TB_PMTFD to public;   