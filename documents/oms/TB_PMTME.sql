/*
================================================================================
��ṹ����:TB_PMTME
��ṹ����:ȯ���ŵ�ʵ��ȯ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTME;
drop index AK_TB_PMTME;
drop table TB_PMTME;
create table TB_PMTME  (
   PMTME_ID             INTEGER                         not null,  /*ȯ���ŵ�ʵ��ȯID          */
   PMTME001             INTEGER                         not null,  /*ȯ���ŵ�ID                */
   PMTME002             INTEGER                         not null,  /*ȯ��ID                    */
   PMTME003             INTEGER,                                   /*ȯ���ID                  */
   PMTME004             NUMBER(30),                                /*��ʼȯ��                  */
   PMTME005             NUMBER(30),                                /*����ȯ��                  */
   PMTME006             NUMBER(5),                                 /*ȯ����                    */
   PMTME007             NUMBER(22,2),                              /*ȯ���                    */
   PMTME008             NUMBER(22,2),                              /*ȯ���                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER,                                    /*����״̬                  */
   constraint PK_TB_PMTME primary key (PMTME_ID)
);
create unique index AK_TB_PMTME on TB_PMTME (PMTME001,PMTME002,PMTME003,PMTME004);
create sequence SEQ_TB_PMTME minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTME to public;
grant index  on TB_PMTME to public;
grant update on TB_PMTME to public; 
grant delete on TB_PMTME to public;  
grant insert on TB_PMTME to public; 
grant select on SEQ_TB_PMTME to public;   