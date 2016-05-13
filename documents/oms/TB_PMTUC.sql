/*
================================================================================
��ṹ����:TB_PMTUC
��ṹ����:��������������Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTUC;
drop index AK_TB_PMTUC;
drop table TB_PMTUC;
create table TB_PMTUC  (
   PMTUC_ID             INTEGER                         not null,  /*���������ΧID    */
   PMTUC001             INTEGER                         not null,  /*���������ID      */
   PMTUC002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTUC primary key (PMTUC_ID)
);
create unique index AK_TB_PMTUC on TB_PMTUC (PMTUC001,PMTUC002);
create sequence SEQ_TB_PMTUC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUC to public;
grant index  on TB_PMTUC to public;
grant update on TB_PMTUC to public;    
grant delete on TB_PMTUC to public;  
grant insert on TB_PMTUC to public; 
grant select on SEQ_TB_PMTUC to public;   