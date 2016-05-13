/*
================================================================================
��ṹ����:TB_PMTQC
��ṹ����:��齱����Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTQC;
drop index AK_TB_PMTQC;
drop table TB_PMTQC;
create table TB_PMTQC  (
   PMTQC_ID             INTEGER                         not null,  /*��齱����ƷID              */
   PMTQC001             INTEGER                         not null,  /*��齱��ID                  */
   PMTQC002             VARCHAR2(10),                              /*�齱�ȼ�                      */
   PMTQC003             INTEGER                         not null,  /*��Ʒ����ID                    */
   PMTQC004             INTEGER                         not null,  /*��λID                        */
   PMTQC005             NUMBER(12,2),                              /*��Ʒ����                      */
   PMTQC006             NUMBER(12,2),                              /*����                          */
   PMTQC007             NUMBER(12,2),                              /*���                          */
   PMTQC008             VARCHAR2(255),                             /*��ע                          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTQC primary key (PMTQC_ID)
);
create unique index AK_TB_PMTQC on TB_PMTQC (PMTQC001,PMTQC002,PMTQC003);
create sequence SEQ_TB_PMTQC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQC to public;
grant index  on TB_PMTQC to public;
grant update on TB_PMTQC to public; 
grant delete on TB_PMTQC to public;  
grant insert on TB_PMTQC to public; 
grant select on SEQ_TB_PMTQC to public;   