/*
================================================================================
��ṹ����:TB_PMTOB
��ṹ����:���Ʒ���ŵ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTOB;
drop index AK_TB_PMTOB;
drop table TB_PMTOB;
create table TB_PMTOB  (
   PMTOB_ID             INTEGER                         not null,  /*���Ʒ���ŵ�����ID          */
   PMTOB001             INTEGER                         not null,  /*���Ʒ���ŵ�ID              */
   PMTOB002             VARCHAR2(2)                     not null,  /*��������                      */
   PMTOB003             INTEGER                         not null,  /*������ID                      */
   PMTOB004             INTEGER                         not null,  /*Ӫ����֯ID                    */
   PMTOB005             VARCHAR2(1)                     not null,  /*��������                      */
   PMTOB006             INTEGER                         not null,  /*���۵�ID                      */
   PMTOB007             INTEGER                         not null,  /*���ID                      */
   PMTOB008             VARCHAR2(30),                              /*��������                      */
   PMTOB009             VARCHAR2(30),                              /*���۵���                      */
   PMTOB010             VARCHAR2(30),                              /*�����                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTOB primary key (PMTOB_ID)
);
create unique index AK_TB_PMTOB on TB_PMTOB (PMTOB001,PMTOB002,PMTOB003,PMTOB004,PMTOB005,PMTOB006,PMTOB007);
create sequence SEQ_TB_PMTOB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOB to public;
grant index  on TB_PMTOB to public;
grant update on TB_PMTOB to public; 
grant delete on TB_PMTOB to public;  
grant insert on TB_PMTOB to public; 
grant select on SEQ_TB_PMTOB to public;   