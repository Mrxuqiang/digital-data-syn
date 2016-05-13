/*
================================================================================
��ṹ����:TB_PMTEE
��ṹ����:�����ۿ۵���̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEE;
drop index AK_TB_PMTEE;
drop table TB_PMTEE;
create table TB_PMTEE  (
   PMTEE_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTEE001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEE002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTEE003             INTEGER,                                   /*��̯����ID        */
   PMTEE004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTEE005             INTEGER,                                   /*��Ӧ��ID          */
   PMTEE006             INTEGER,                                   /*Ʒ������Э��ID    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEE primary key (PMTEE_ID)
);
create unique index AK_TB_PMTEE on TB_PMTEE (PMTEE001,PMTEE002,PMTEE003);
create sequence SEQ_TB_PMTEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEE to public;
grant index  on TB_PMTEE to public;
grant update on TB_PMTEE to public; 
grant delete on TB_PMTEE to public;  
grant insert on TB_PMTEE to public; 
grant select on SEQ_TB_PMTEE to public;   