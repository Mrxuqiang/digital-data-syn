/*
================================================================================
��ṹ����:TB_PMTJE
��ṹ����:��Ʒ��ϵ���Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTJE;
drop index AK_TB_PMTJE;
drop table TB_PMTJE;
create table TB_PMTJE  (
   PMTJE_ID             INTEGER                         not null,  /*��Ʒ�����Чʱ��ID*/
   PMTJE001             INTEGER                         not null,  /*��Ʒ��ϵ�ID      */
   PMTJE002             DATE                            not null,  /*��ʼ����          */
   PMTJE003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTJE004             DATE                            not null,  /*��������          */
   PMTJE005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTJE primary key (PMTJE_ID)
);
create unique index AK_TB_PMTJE on TB_PMTJE (PMTJE001,PMTJE002,PMTJE003);
create sequence SEQ_TB_PMTJE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJE to public;
grant index  on TB_PMTJE to public;
grant update on TB_PMTJE to public; 
grant delete on TB_PMTJE to public;  
grant insert on TB_PMTJE to public; 
grant select on SEQ_TB_PMTJE to public;   