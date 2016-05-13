/*
================================================================================
��ṹ����:TB_PMTMD
��ṹ����:ȯ���ŵ�Ӧ��ȯ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTMD;
drop index AK_TB_PMTMD;
drop table TB_PMTMD;
create table TB_PMTMD  (
   PMTMD_ID             INTEGER                         not null,  /*ȯ���ŵ�Ӧ��ȯID              */
   PMTMD001             INTEGER                         not null,  /*ȯ���ŵ�ID                    */
   PMTMD002             VARCHAR2(1)                     not null,  /*��������                      */
   PMTMD003             INTEGER                         not null,  /*������ID                      */
   PMTMD004             VARCHAR2(2),                               /*��ȯ���                      */
   PMTMD005             NUMBER(12,2),                              /*���㷵ȯ���                  */
   PMTMD006             INTEGER                         not null,  /*ȯ��ID                        */
   PMTMD007             NUMBER(12,2),                              /*Ӧ��ȯ���                    */
   PMTMD008             NUMBER(12,2),                              /*ʵ��ȯ���                    */
   PMTMD009             VARCHAR2(30),                              /*��������                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTMD primary key (PMTMD_ID)
);
create unique index AK_TB_PMTMD on TB_PMTMD (PMTMD001,PMTMD002,PMTMD003,PMTMD006);
create sequence SEQ_TB_PMTMD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMD to public;
grant index  on TB_PMTMD to public;
grant update on TB_PMTMD to public; 
grant delete on TB_PMTMD to public;  
grant insert on TB_PMTMD to public; 
grant select on SEQ_TB_PMTMD to public;   