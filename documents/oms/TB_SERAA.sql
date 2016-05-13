/*
================================================================================
��ṹ����:TB_SERAA
��ṹ����:����ƾ֤��ⵥ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAA;
drop index AK_TB_SERAA;
drop table TB_SERAA;
create table TB_SERAA  (
   SERAA_ID             INTEGER                         not null,  /*����ƾ֤��ⵥID  */
   SERAA001             INTEGER                         not null,  /*����ID            */
   SERAA002             VARCHAR2(30)                    not null,  /*��ⵥ��          */
   SERAA003             DATE                            not null,  /*��������          */
   SERAA004             INTEGER                         not null,  /*��˾ID            */
   SERAA005             INTEGER                         not null,  /*Ӫ����֯ID        */
   SERAA006             DATE                            not null,  /*��������          */
   SERAA007             INTEGER                         not null,  /*ҵ����ID        */
   SERAA008             INTEGER                         not null,  /*ҵ����ԱID        */
   SERAA009             VARCHAR2(255),                             /*��ע              */
   SERAA010             INTEGER,                                   /*¼����ID          */
   SERAA011             DATE,                                      /*¼������          */
   SERAA012             INTEGER,                                   /*�����ID          */
   SERAA013             DATE,                                      /*�������          */
   SERAA014             VARCHAR2(1)                     not null,  /*���״̬          */
   SERAA015             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   SERAA016             VARCHAR2(30),                              /*ǩ�˵���          */
   SERAA017             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SERAA primary key (SERAA_ID)
);
create unique index AK_TB_SERAA on TB_SERAA (SERAA002,SERAA005);
create sequence SEQ_TB_SERAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAA to public;
grant index  on TB_SERAA to public;
grant update on TB_SERAA to public; 
grant delete on TB_SERAA to public;  
grant insert on TB_SERAA to public; 
grant select on SEQ_TB_SERAA to public;   