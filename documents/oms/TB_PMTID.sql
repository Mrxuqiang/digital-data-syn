/*
================================================================================
��ṹ����:TB_PMTID
��ṹ����:������ȯ������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTID;
drop index AK_TB_PMTID;
drop table TB_PMTID;
create table TB_PMTID  (
   PMTID_ID             INTEGER                         not null,  /*��Ʒ���������ID  */
   PMTID001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTID002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTID003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTID primary key (PMTID_ID)
);
create unique index AK_TB_PMTID on TB_PMTID (PMTID001,PMTID002,PMTID003);
create sequence SEQ_TB_PMTID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTID to public;
grant index  on TB_PMTID to public;
grant update on TB_PMTID to public; 
grant delete on TB_PMTID to public;  
grant insert on TB_PMTID to public; 
grant select on SEQ_TB_PMTID to public;   