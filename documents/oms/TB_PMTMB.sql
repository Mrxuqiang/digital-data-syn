/*
================================================================================
��ṹ����:TB_PMTMB
��ṹ����:ȯ���ŵ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTMB;
drop index AK_TB_PMTMB;
drop table TB_PMTMB;
create table TB_PMTMB  (
   PMTMB_ID             INTEGER                         not null,  /*ȯ���ŵ�����ID                */
   PMTMB001             INTEGER                         not null,  /*ȯ���ŵ�ID                    */
   PMTMB002             VARCHAR2(2)                     ,  /*��������                      */
   PMTMB003             INTEGER                         ,  /*������ID                      */
   PMTMB004             INTEGER                         not null,  /*Ӫ����֯ID                    */
   PMTMB005             VARCHAR2(1)                     ,  /*��������                      */
   PMTMB006             INTEGER                         not null,  /*���۵�ID                      */
   PMTMB007             INTEGER                         not null,  /*���ID                      */
   PMTMB008             VARCHAR2(30),                              /*��������                      */
   PMTMB009             VARCHAR2(30),                              /*���۵���                      */
   PMTMB010             VARCHAR2(30),                              /*�����                      */
   PMTMB011             NUMBER(20,2),                              /*ʵ������                    */
   PMTMB012             NUMBER(20,2),                              /*���뷵ȯ������              */
   PMTMB013             NUMBER(20,2),                              /*��ȯ���                      */
   PMTMB014             NUMBER(12,2)                         ,     /*���۷�̯������β�        */
   PMTMB015             VARCHAR2(30),                              /*�˿�����         */
   PMTMB016             VARCHAR2(30),                              /*��ϵ�绰         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */ 
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER,                                    /*����״̬                      */
   constraint PK_TB_PMTMB primary key (PMTMB_ID)
);
create unique index AK_TB_PMTMB on TB_PMTMB (PMTMB001,PMTMB002,PMTMB003,PMTMB004,PMTMB005,PMTMB006,PMTMB007);
create sequence SEQ_TB_PMTMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMB to public;
grant index  on TB_PMTMB to public;
grant update on TB_PMTMB to public; 
grant delete on TB_PMTMB to public;  
grant insert on TB_PMTMB to public; 
grant select on SEQ_TB_PMTMB to public;   