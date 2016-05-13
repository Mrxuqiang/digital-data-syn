/*
================================================================================
��ṹ����:TB_PMTCB
��ṹ����:��Ʒ�ۿ۵��ۿ۹����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCB;
drop index AK_TB_PMTCB;
drop table TB_PMTCB;
create table TB_PMTCB  (
   PMTCB_ID             INTEGER                         not null,  /*�ۿ۹���ID        */
   PMTCB001             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTCB003             INTEGER,                                   /*����ID            */
   PMTCB004             NUMBER(5)                       not null,  /*����˳���        */
   PMTCB005             NUMBER(12,2),                              /*�ۼ��ۿ���(%)     */
   PMTCB006             NUMBER(12,2),                              /*��Ա�ۿ���(%)     */
   PMTCB007             NUMBER(12,2),                              /*����ۼ��ۿ���(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCB primary key (PMTCB_ID)
);
create unique index AK_TB_PMTCB on TB_PMTCB (PMTCB001,PMTCB002,PMTCB003);
create sequence SEQ_TB_PMTCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCB to public;
grant index  on TB_PMTCB to public;
grant update on TB_PMTCB to public; 
grant delete on TB_PMTCB to public;  
grant insert on TB_PMTCB to public; 
grant select on SEQ_TB_PMTCB to public;   