/*
================================================================================
��ṹ����:TB_MEDCD
��ṹ����:ý���ͬ���ٵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCD;
drop index AK_TB_MEDCD;
drop table TB_MEDCD;
create table TB_MEDCD  (
   MEDCD_ID             INTEGER                         not null,  /*ý���ͬ���ٵ�ID    */
   MEDCD001             INTEGER                         not null,  /*����                */
   MEDCD002             VARCHAR2(30)                    not null,  /*���ٵ���            */
   MEDCD003             DATE                            not null,  /*��������            */
   MEDCD004             INTEGER                         not null,  /*Ӫ����֯ID          */
   MEDCD005             INTEGER                         not null,  /*ý���ͬ��ID        */
   MEDCD006             NUMBER(12,2),                              /*�ۿ���            */
   MEDCD007             INTEGER                         not null,  /*ҵ����ID          */
   MEDCD008             INTEGER                         not null,  /*ҵ����ԱID          */
   MEDCD009             VARCHAR2(255),                             /*��ע                */
   MEDCD010             INTEGER,                                   /*¼��ID              */
   MEDCD011             DATE,                                      /*¼������            */
   MEDCD012             INTEGER,                                   /*���ID              */
   MEDCD013             DATE,                                      /*�������            */
   MEDCD014             VARCHAR2(1)                     not null,  /*���״̬            */
   MEDCD015             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   MEDCD016             VARCHAR2(30),                              /*ǩ�˵���            */
   MEDCD017             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEDCD primary key (MEDCD_ID)
);
create unique index AK_TB_MEDCD on TB_MEDCD (MEDCD002,MEDCD004);
create sequence SEQ_TB_MEDCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCD to public;
grant index  on TB_MEDCD to public;
grant update on TB_MEDCD to public; 
grant delete on TB_MEDCD to public;  
grant insert on TB_MEDCD to public; 
grant select on SEQ_TB_MEDCD to public;   