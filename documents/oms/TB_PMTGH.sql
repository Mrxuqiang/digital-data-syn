/*
================================================================================
��ṹ����:TB_PMTGH
��ṹ����:�ۼƷ�ȯ����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGH;
drop index AK_TB_PMTGH;
drop table TB_PMTGH;
create table TB_PMTGH  (
   PMTGH_ID             INTEGER                         not null,  /*�ۼƷ�ȯ��Ч��ΧID*/
   PMTGH001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGH002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGH primary key (PMTGH_ID)
);
create unique index AK_TB_PMTGH on TB_PMTGH (PMTGH001,PMTGH002);
create sequence SEQ_TB_PMTGH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGH to public;
grant index  on TB_PMTGH to public;
grant update on TB_PMTGH to public; 
grant delete on TB_PMTGH to public;  
grant insert on TB_PMTGH to public; 
grant select on SEQ_TB_PMTGH to public;   