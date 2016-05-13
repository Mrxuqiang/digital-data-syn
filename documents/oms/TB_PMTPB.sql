/*
================================================================================
��ṹ����:TB_PMTPB
��ṹ����:���Ʒ���յ��˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTPB;
drop index AK_TB_PMTPB;
drop table TB_PMTPB;
create table TB_PMTPB  (
   PMTPB_ID             INTEGER                         not null,  /*���Ʒ���յ��˿�ID          */
   PMTPB001             INTEGER                         not null,  /*���Ʒ���յ�ID              */
   PMTPB002             VARCHAR2(2)                     not null,  /*��������                      */
   PMTPB003             INTEGER                         not null,  /*������ID                      */
   PMTPB004             INTEGER                         not null,  /*Ӫ����֯ID                    */
   PMTPB005             VARCHAR2(1)                     not null,  /*��������                      */
   PMTPB006             INTEGER                         not null,  /*���˵�ID                      */
   PMTPB007             INTEGER                         not null,  /*���۵�ID                      */
   PMTPB008             INTEGER                         not null,  /*���ID                      */
   PMTPB009             VARCHAR2(30),                              /*��������                      */
   PMTPB010             VARCHAR2(30),                              /*���˵���                      */
   PMTPB011             VARCHAR2(30),                              /*���۵���                      */
   PMTPB012             VARCHAR2(30),                              /*�����                      */
   PMTPB013             INTEGER                         not null,  /*���Ʒ���ŵ�ID              */
   PMRPB014             VARCHAR2(30),                              /*���Ʒ���ŵ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTPB primary key (PMTPB_ID)
);
create unique index AK_TB_PMTPB on TB_PMTPB (PMTPB001,PMTPB002,PMTPB003,PMTPB004,PMTPB005,PMTPB006,PMTPB008);
create sequence SEQ_TB_PMTPB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPB to public;
grant index  on TB_PMTPB to public;
grant update on TB_PMTPB to public; 
grant delete on TB_PMTPB to public;  
grant insert on TB_PMTPB to public; 
grant select on SEQ_TB_PMTPB to public;   