/*
================================================================================
��ṹ����:TB_SUPAT
��ṹ����:�̻��峡������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAT;
drop index AK_TB_SUPAT;
drop table TB_SUPAT;
create table TB_SUPAT  (
   SUPAT_ID             INTEGER                         not null,  /*�̻��峡��ID        */
   SUPAT001             INTEGER                         not null,  /*����ID              */
   SUPAT002             VARCHAR2(30)                    not null,  /*���ݱ��            */
   SUPAT003             DATE                            not null,  /*��������            */
   SUPAT004             INTEGER                         not null,  /*��˾ID              */
   SUPAT005             INTEGER                         not null,  /*Ӫ����֯ID          */
   SUPAT006             INTEGER                         not null,  /*�̻�ID              */
   SUPAT007             VARCHAR2(1),                               /*�Ƿ��ѳ���          */
   SUPAT008             INTEGER                         not null,  /*�峡ԭ��ID          */
   SUPAT009             DATE                            not null,  /*�볡����            */
   SUPAT010             INTEGER                         not null,  /*ҵ����ID          */
   SUPAT011             INTEGER                         not null,  /*ҵ����ԱID          */
   SUPAT012             VARCHAR2(30),                              /*��ϵ��              */
   SUPAT013             NUMBER(12,2),                              /*�ۿ���            */
   SUPAT014             INTEGER                         not null,  /*���ô���ID          */
   SUPAT015             INTEGER,                                   /*���õ�ID            */
   SUPAT016             VARCHAR2(500),                             /*��ע                */
   SUPAT017             INTEGER,                                   /*¼����ID            */
   SUPAT018             DATE,                                      /*¼������            */
   SUPAT019             INTEGER,                                   /*�����ID            */
   SUPAT020             DATE,                                      /*�������            */
   SUPAT021             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAT022             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAT023             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAT024             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAT primary key (SUPAT_ID)
);
create unique index AK_TB_SUPAT on TB_SUPAT (SUPAT002,SUPAT005);
create sequence SEQ_TB_SUPAT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAT to public;
grant index  on TB_SUPAT to public;
grant update on TB_SUPAT to public; 
grant delete on TB_SUPAT to public;  
grant insert on TB_SUPAT to public; 
grant select on SEQ_TB_SUPAT to public;   