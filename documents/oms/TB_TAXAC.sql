/*
================================================================================
��ṹ����:TB_TAXAC
��ṹ����:��Ʊ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAC;
drop index AK_TB_TAXAC;
drop table TB_TAXAC;
create table TB_TAXAC  (
   TAXAC_ID             INTEGER                         not null,  /*��Ʊ��ⵥID      */
   TAXAC001             INTEGER                         not null,  /*����ID            */
   TAXAC002             VARCHAR2(30)                    not null,  /*��ⵥ��          */
   TAXAC003             DATE                            not null,  /*��������          */
   TAXAC004             INTEGER                         not null,  /*��˾ID            */
   TAXAC005             INTEGER                         not null,  /*Ӫ����֯ID        */
   TAXAC006             DATE                            not null,  /*��������          */
   TAXAC007             INTEGER                         not null,  /*ҵ����ID        */
   TAXAC008             INTEGER                         not null,  /*ҵ����ԱID        */
   TAXAC009             VARCHAR2(255),                             /*��ע              */
   TAXAC010             INTEGER,                                   /*¼����ID          */
   TAXAC011             DATE,                                      /*¼������          */
   TAXAC012             INTEGER,                                   /*�����ID          */
   TAXAC013             DATE,                                      /*�������          */
   TAXAC014             VARCHAR2(1)                     not null,  /*���״̬          */
   TAXAC015             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   TAXAC016             VARCHAR2(30),                              /*ǩ�˵���          */
   TAXAC017             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAC primary key (TAXAC_ID)
);
create unique index AK_TB_TAXAC on TB_TAXAC (TAXAC002,TAXAC005);
create sequence SEQ_TB_TAXAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAC to public;
grant index  on TB_TAXAC to public;
grant update on TB_TAXAC to public; 
grant delete on TB_TAXAC to public;  
grant insert on TB_TAXAC to public; 
grant select on SEQ_TB_TAXAC to public;   