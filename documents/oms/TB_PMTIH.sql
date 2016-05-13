/*
================================================================================
��ṹ����:TB_PMTIH
��ṹ����:������ȯ����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIH;
drop index AK_TB_PMTIH;
drop table TB_PMTIH;
create table TB_PMTIH  (
   PMTIH_ID             INTEGER                         not null,  /*������ȯ��Ч��ΧID*/
   PMTIH001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTIH002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTIH primary key (PMTIH_ID)
);
create unique index AK_TB_PMTIH on TB_PMTIH (PMTIH001,PMTIH002);
create sequence SEQ_TB_PMTIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIH to public;
grant index  on TB_PMTIH to public;
grant update on TB_PMTIH to public; 
grant delete on TB_PMTIH to public;  
grant insert on TB_PMTIH to public; 
grant select on SEQ_TB_PMTIH to public;   