/*
================================================================================
��ṹ����:TB_CCMBG
��ṹ����:�׿���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBG;
drop index AK_TB_CCMBG;
drop table TB_CCMBG;
create table TB_CCMBG  (
   CCMBG_ID             INTEGER                         not null,  /*�׿�������ID        */
   CCMBG001             INTEGER                         not null,  /*����ID              */
   CCMBG002             VARCHAR2(30)                    not null,  /*��������            */
   CCMBG003             DATE                            not null,  /*��������            */
   CCMBG004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMBG005             INTEGER                         not null,  /*��������ID          */
   CCMBG006             INTEGER                         not null,  /*������ԱID          */
   CCMBG007             DATE                            not null,  /*��������            */
   CCMBG008             VARCHAR2(255),                             /*��ע                */
   CCMBG009             INTEGER,                                   /*¼����ID            */
   CCMBG010             DATE,                                      /*¼������            */
   CCMBG011             INTEGER,                                   /*�����ID            */
   CCMBG012             DATE,                                      /*�������            */
   CCMBG013             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMBG014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMBG015             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMBG016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBG primary key (CCMBG_ID)
);
create unique index AK_TB_CCMBG on TB_CCMBG (CCMBG002);
create sequence SEQ_TB_CCMBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBG to public;
grant index  on TB_CCMBG to public;
grant update on TB_CCMBG to public; 
grant delete on TB_CCMBG to public;  
grant insert on TB_CCMBG to public; 
grant select on SEQ_TB_CCMBG to public;   