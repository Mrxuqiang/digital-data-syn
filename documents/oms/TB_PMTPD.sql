/*
================================================================================
��ṹ����:TB_PMTPD
��ṹ����:���Ʒ���յ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTPD;
drop index AK_TB_PMTPD;
drop table TB_PMTPD;
create table TB_PMTPD  (
   PMTPD_ID             INTEGER                         not null,  /*���Ʒ���յ���ƷID          */
   PMTPD001             INTEGER                         not null,  /*���Ʒ���յ�ID              */
   PMTPD002             VARCHAR2(2)                     not null,  /*��������                      */
   PMTPD003             INTEGER                         not null,  /*������ID                      */
   PMTPD004             VARCHAR2(5),                               /*�������                      */
   PMTPD005             VARCHAR2(1)                     not null,  /*���շ�ʽ                      */
   PMTPD006             INTEGER                         not null,  /*��Ʒ����ID                    */
   PMTPD007             INTEGER                         not null,  /*��λID                        */
   PMTPD008             NUMBER(18,3),                              /*�ջ�����                      */
   PMTPD009             NUMBER(12,2),                              /*����                          */
   PMTPD010             NUMBER(12,2),                              /*���                          */
   PMTPD011             INTEGER,                                   /*��������                      */
   PMTPD012             NUMBER(12,2),                              /*��������(%)                   */
   PMTPD013             NUMBER(12,2),                              /*������                        */
   PMTPD014             VARCHAR2(30),                              /*���п���                      */
   PMTPD015             VARCHAR2(30),                              /*֧Ʊ��                        */
   PMTPD016             NUMBER(12,2),                              /*֧Ʊ���                      */
   PMTPD017             VARCHAR2(80),                              /*��Ʊ��λ                      */
   PMTPD018             VARCHAR2(255),                             /*��ע                          */
   PMTPD019             VARCHAR2(30),                              /*��������                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTPD primary key (PMTPD_ID)
);
create unique index AK_TB_PMTPD on TB_PMTPD (PMTPD001,PMTPD002,PMTPD003,PMTPD005);
create sequence SEQ_TB_PMTPD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPD to public;
grant index  on TB_PMTPD to public;
grant update on TB_PMTPD to public; 
grant delete on TB_PMTPD to public;  
grant insert on TB_PMTPD to public; 
grant select on SEQ_TB_PMTPD to public;   