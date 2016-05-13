/*
================================================================================
��ṹ����:TB_PMTEC
��ṹ����:�����ۿ۵��������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEC;
drop index AK_TB_PMTEC;
drop table TB_PMTEC;
create table TB_PMTEC  (
   PMTEC_ID             INTEGER                         not null,  /*��������ID        */
   PMTEC001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEC002             NUMBER(12,2),                              /*�������          */
   PMTEC003             NUMBER(12,2),                              /*�������          */
   PMTEC004             NUMBER(12,2),                              /*��ʼ���          */
   PMTEC005             NUMBER(12,2),                              /*�������          */
   PMTEC006             NUMBER(12,2),                              /*�ۿ�/����         */
   PMTEC007             NUMBER(12),                                /*�𵥱���         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEC primary key (PMTEC_ID)
);
--create unique index AK_TB_PMTEC on TB_PMTEC (PMTEC001,PMTEC002,PMTEC004);
create sequence SEQ_TB_PMTEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEC to public;
grant index  on TB_PMTEC to public;
grant update on TB_PMTEC to public; 
grant delete on TB_PMTEC to public;  
grant insert on TB_PMTEC to public; 
grant select on SEQ_TB_PMTEC to public;   