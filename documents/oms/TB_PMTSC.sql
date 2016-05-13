/*
================================================================================
��ṹ����:TB_PMTSC
��ṹ����:����ֱ����Ч�̳���Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTSC;
drop index AK_TB_PMTSC;
drop table TB_PMTSC;
create table TB_PMTSC  (
   PMTSC_ID             INTEGER                         not null,  /*����ֱ����Ч��ΧID*/
   PMTSC001             INTEGER                         not null,  /*����ֱ����ID      */
   PMTSC002             INTEGER                         not null,  /*Ӫ����֯ID        */
   PMTSC003             VARCHAR2(1)                             ,  /*ȫ������        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTSC primary key (PMTSC_ID)
);
create unique index AK_TB_PMTSC on TB_PMTSC (PMTSC001,PMTSC002);
create sequence SEQ_TB_PMTSC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSC to public;
grant index  on TB_PMTSC to public;
grant update on TB_PMTSC to public; 
grant delete on TB_PMTSC to public;  
grant insert on TB_PMTSC to public; 
grant select on SEQ_TB_PMTSC to public;   