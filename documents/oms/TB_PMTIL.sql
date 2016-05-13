/*
================================================================================
��ṹ����:TB_PMTIL
��ṹ����:������ȯ��������Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIL;
drop index AK_TB_PMTIL;
drop table TB_PMTIL;
create table TB_PMTIL  (
   PMTIL_ID             INTEGER                         not null,  /*������ȯ��Чʱ��ID*/
   PMTIL001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTIL002             DATE ,                                     /*��ʼ����          */
   PMTIL003             VARCHAR2(12),                              /*��ʼʱ��          */
   PMTIL004             DATE ,                                     /*��������          */
   PMTIL005             VARCHAR2(12),                              /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER,                                    /*����״̬          */
   constraint PK_TB_PMTIL primary key (PMTIL_ID)
);
create sequence SEQ_TB_PMTIL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIL to public;
grant index  on TB_PMTIL to public;
grant update on TB_PMTIL to public; 
grant delete on TB_PMTIL to public;  
grant insert on TB_PMTIL to public; 
grant select on SEQ_TB_PMTIL to public; 


PMTIL001+PMTIL002+PMTIL004
