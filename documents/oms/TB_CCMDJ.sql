/*
================================================================================
��ṹ����:TB_CCMDJ
��ṹ����:ȯ���˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDJ;
drop index AK_TB_CCMDJ;
drop table TB_CCMDJ;
create table TB_CCMDJ  (
   CCMDJ_ID             INTEGER                         not null,  /*ȯ���˵�ID          */
   CCMDJ001             INTEGER                         not null,  /*����ID              */
   CCMDJ002             VARCHAR2(30)                    not null,  /*���˵���            */
   CCMDJ003             DATE                            not null,  /*��������            */
   CCMDJ004             DATE                            not null,  /*��������            */
   CCMDJ005             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMDJ006             INTEGER                         not null,  /*���˲���ID          */
   CCMDJ007             INTEGER                         not null,  /*������ԱID          */
   CCMDJ008             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMDJ009             INTEGER                         not null,  /*���ղ���ID          */
   CCMDJ010             INTEGER                         not null,  /*������ԱID          */
   CCMDJ011             VARCHAR2(255),                             /*��ע                */
   CCMDJ012             INTEGER,                                   /*¼����ID            */
   CCMDJ013             DATE,                                      /*¼������            */
   CCMDJ014             INTEGER,                                   /*�����ID            */
   CCMDJ015             DATE,                                      /*�������            */
   CCMDJ016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDJ017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDJ018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDJ019             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDJ primary key (CCMDJ_ID)
);
create unique index AK_TB_CCMDJ on TB_CCMDJ (CCMDJ002,CCMDJ005);
create sequence SEQ_TB_CCMDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDJ to public;
grant index  on TB_CCMDJ to public;
grant update on TB_CCMDJ to public; 
grant delete on TB_CCMDJ to public;  
grant insert on TB_CCMDJ to public; 
grant select on SEQ_TB_CCMDJ to public;   