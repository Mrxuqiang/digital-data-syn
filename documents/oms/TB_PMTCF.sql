/*
================================================================================
��ṹ����:TB_PMTCF
��ṹ����:��Ʒ�ۿ۵���Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCF;
drop index AK_TB_PMTCF;
drop table TB_PMTCF;
create table TB_PMTCF  (
   PMTCF_ID             INTEGER                         not null,  /*�ۿ���Ч��ΧID    */
   PMTCF001             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCF002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCF primary key (PMTCF_ID)
);
create unique index AK_TB_PMTCF on TB_PMTCF (PMTCF001,PMTCF002);
create sequence SEQ_TB_PMTCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCF to public;
grant index  on TB_PMTCF to public;
grant update on TB_PMTCF to public; 
grant delete on TB_PMTCF to public;  
grant insert on TB_PMTCF to public; 
grant select on SEQ_TB_PMTCF to public;   