/*
================================================================================
��ṹ����:TB_PMTDG
��ṹ����:��Ʒ��������Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDG;
drop index AK_TB_PMTDG;
drop table TB_PMTDG;
create table TB_PMTDG  (
   PMTDG_ID             INTEGER                         not null,  /*������Ч��ΧID    */
   PMTDG001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDG002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDG primary key (PMTDG_ID)
);
create unique index AK_TB_PMTDG on TB_PMTDG (PMTDG001,PMTDG002);
create sequence SEQ_TB_PMTDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDG to public;
grant index  on TB_PMTDG to public;
grant update on TB_PMTDG to public; 
grant delete on TB_PMTDG to public;  
grant insert on TB_PMTDG to public; 
grant select on SEQ_TB_PMTDG to public;   