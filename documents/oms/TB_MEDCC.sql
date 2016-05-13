/*
================================================================================
��ṹ����:TB_MEDCC
��ṹ����:ý���ͬ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCC;
drop index AK_TB_MEDCC;
drop table TB_MEDCC;
create table TB_MEDCC  (
   MEDCC_ID             INTEGER                         not null,  /*ý���ͬ��ID    */
   MEDCC001             INTEGER                         not null,  /*����                */
   MEDCC002             VARCHAR2(30)                    not null,  /*����            */
   MEDCC003             DATE                            not null,  /*��������            */
   MEDCC004             INTEGER                         not null,  /*Ӫ����֯ID          */
   MEDCC005             INTEGER                         not null,  /*ý���ͬ��ID        */
   MEDCC006             NUMBER(12,2),                              /*�����            */
   MEDCC007             INTEGER                         not null,  /*����ID          */
   MEDCC008             INTEGER                         not null,  /*�����ԱID          */
   MEDCC009             VARCHAR2(255),                             /*��ע                */
   MEDCC010             INTEGER,                                   /*¼��ID              */
   MEDCC011             DATE,                                      /*¼������            */
   MEDCC012             INTEGER,                                   /*���ID              */
   MEDCC013             DATE,                                      /*�������            */
   MEDCC014             VARCHAR2(1)                     not null,  /*���״̬            */
   MEDCC015             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   MEDCC016             VARCHAR2(30),                              /*ǩ�˵���            */
   MEDCC017             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEDCC primary key (MEDCC_ID)
);
create unique index AK_TB_MEDCC on TB_MEDCC (MEDCC002,MEDCC004);
create sequence SEQ_TB_MEDCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCC to public;
grant index  on TB_MEDCC to public;
grant update on TB_MEDCC to public; 
grant delete on TB_MEDCC to public;  
grant insert on TB_MEDCC to public; 
grant select on SEQ_TB_MEDCC to public;   