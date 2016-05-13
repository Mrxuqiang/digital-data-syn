/*
================================================================================
��ṹ����:TB_PMTKF
��ṹ����:�齱�����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKF;
drop index AK_TB_PMTKF;
drop table TB_PMTKF;
create table TB_PMTKF  (
   PMTKF_ID             INTEGER                         not null,  /*��Ч��ΧID        */
   PMTKF001             INTEGER                         not null,  /*�齱���ID      */
   PMTKF002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKF primary key (PMTKF_ID)
);
create unique index AK_TB_PMTKF on TB_PMTKF (PMTKF001,PMTKF002);
create sequence SEQ_TB_PMTKF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKF to public;
grant index  on TB_PMTKF to public;
grant update on TB_PMTKF to public; 
grant delete on TB_PMTKF to public;  
grant insert on TB_PMTKF to public; 
grant select on SEQ_TB_PMTKF to public;   