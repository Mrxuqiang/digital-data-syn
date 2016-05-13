/*
================================================================================
��ṹ����:TB_PMTKC
��ṹ����:�齱�����̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKC;
drop index AK_TB_PMTKC;
drop table TB_PMTKC;
create table TB_PMTKC  (
   PMTKC_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTKC001             INTEGER                         not null,  /*�齱���ID      */
   PMTKC002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTKC003             INTEGER,                                   /*��̯����ID        */
   PMTKC004             NUMBER(5)                       not null,  /*��̯����˳���    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKC primary key (PMTKC_ID)
);
create unique index AK_TB_PMTKC on TB_PMTKC (PMTKC001,PMTKC002,PMTKC003);
create sequence SEQ_TB_PMTKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKC to public;
grant index  on TB_PMTKC to public;
grant update on TB_PMTKC to public; 
grant delete on TB_PMTKC to public;  
grant insert on TB_PMTKC to public; 
grant select on SEQ_TB_PMTKC to public;   