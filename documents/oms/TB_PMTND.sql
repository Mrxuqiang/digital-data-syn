/*
================================================================================
��ṹ����:TB_PMTND
��ṹ����:ȯ���յ�Ӧ��ȯ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTND;
drop index AK_TB_PMTND;
drop table TB_PMTND;
create table TB_PMTND  (
   PMTND_ID             INTEGER                         not null,  /*ȯ���յ�Ӧ��ȯID              */
   PMTND001             INTEGER                         not null,  /*ȯ���յ�ID                    */
   PMTND002             VARCHAR2(1)                     not null,  /*��������                      */
   PMTND003             INTEGER                         not null,  /*������ID                      */
   PMTND004             VARCHAR2(2),                               /*��ȯ���                      */
   PMTND005             NUMBER(12,2),                              /*���㷵ȯ���                  */
   PMTND006             INTEGER                         not null,  /*ȯ��ID                        */
   PMTND007             NUMBER(12,2),                              /*Ӧ��ȯ���                    */
   PMTND008             NUMBER(12,2),                              /*ʵ��ȯ���                    */
   PMTND009             VARCHAR2(30),                              /*��������                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTND primary key (PMTND_ID)
);
create unique index AK_TB_PMTND on TB_PMTND (PMTND001,PMTND002,PMTND003,PMTND006);
create sequence SEQ_TB_PMTND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTND to public;
grant index  on TB_PMTND to public;
grant update on TB_PMTND to public; 
grant delete on TB_PMTND to public;  
grant insert on TB_PMTND to public; 
grant select on SEQ_TB_PMTND to public;   