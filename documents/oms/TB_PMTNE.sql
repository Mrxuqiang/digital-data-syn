/*
================================================================================
��ṹ����:TB_PMTNE
��ṹ����:ȯ���յ�ʵ��ȯ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTNE;
drop index AK_TB_PMTNE;
drop table TB_PMTNE;
create table TB_PMTNE  (
   PMTNE_ID             INTEGER                         not null,  /*ȯ���յ�ʵ��ȯID          */
   PMTNE001             INTEGER                         not null,  /*ȯ���յ�ID                */
   PMTNE002             VARCHAR2(1)                             ,  /*��ȯ��ʽ                  */
   PMTNE003             INTEGER                                 ,  /*ȯ��ID                    */
   PMTNE004             INTEGER,                                   /*ȯ���ID                  */
   PMTNE005             NUMBER(30),                                /*��ʼȯ��                  */
   PMTNE006             NUMBER(30),                                /*����ȯ��                  */
   PMTNE007             NUMBER(5),                                 /*ȯ����                    */
   PMTNE008             NUMBER(12,2),                              /*���                      */
   PMTNE009             INTEGER,                                   /*��������                  */
   PMTNE010             NUMBER(12,2),                              /*��������(%)               */
   PMTNE011             NUMBER(12,2),                              /*������                    */
   PMTNE012             VARCHAR2(30),                              /*���п���                  */
   PMTNE013             VARCHAR2(30),                              /*֧Ʊ��                    */
   PMTNE014             NUMBER(12,2),                              /*֧Ʊ���                  */
   PMTNE015             VARCHAR2(80),                              /*��Ʊ��λ                  */
   PMTNE016             NUMBER(12,2),                              /*�����                    */
   PMTNE017             NUMBER(12,2),                                /*ȯ���                    */
   PMTNE018             INTEGER,                                   /*��ԴID*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_PMTNE primary key (PMTNE_ID)
);
create unique index AK_TB_PMTNE on TB_PMTNE (PMTNE001,PMTNE002,PMTNE003,PMTNE004,PMTNE005);
create sequence SEQ_TB_PMTNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNE to public;
grant index  on TB_PMTNE to public;
grant update on TB_PMTNE to public; 
grant delete on TB_PMTNE to public;  
grant insert on TB_PMTNE to public; 
grant select on SEQ_TB_PMTNE to public;   