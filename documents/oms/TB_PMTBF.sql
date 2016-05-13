/*
================================================================================
��ṹ����:TB_PMTBF
��ṹ����:��Ʒ�ؼ۵���Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTBF;
drop index AK_TB_PMTBF;
drop table TB_PMTBF;
create table TB_PMTBF  (
   PMTBF_ID             INTEGER                         not null,  /*�ۿ���Ч��ΧID    */
   PMTBF001             INTEGER                         not null,  /*��Ʒ�ؼ۵�ID      */
   PMTBF002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTBF primary key (PMTBF_ID)
);
create unique index AK_TB_PMTBF on TB_PMTBF (PMTBF001,PMTBF002);
create sequence SEQ_TB_PMTBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBF to public;
grant index  on TB_PMTBF to public;
grant update on TB_PMTBF to public; 
grant delete on TB_PMTBF to public;  
grant insert on TB_PMTBF to public; 
grant select on SEQ_TB_PMTBF to public;   