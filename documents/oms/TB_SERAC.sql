/*
================================================================================
��ṹ����:TB_SERAC
��ṹ����:����ƾ֤���ŵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAC;
drop index AK_TB_SERAC;
drop table TB_SERAC;
create table TB_SERAC  (
   SERAC_ID             INTEGER                         not null,  /*����ƾ֤���ŵ�ID    */
   SERAC001             INTEGER                         not null,  /*����ID              */
   SERAC002             VARCHAR2(30)                    not null,  /*���ŵ���            */
   SERAC003             DATE                            not null,  /*��������            */
   SERAC004             INTEGER                         not null,  /*��˾ID              */
   SERAC005             INTEGER                         not null,  /*Ӫ����֯ID          */
   SERAC006             DATE                            not null,  /*��������            */
   SERAC007             INTEGER                         not null,  /*ҵ����ID          */
   SERAC008             INTEGER                         not null,  /*ҵ����ԱID          */
   SERAC009             INTEGER                         not null,  /*����ID              */
   SERAC010             INTEGER                         not null,  /*̯λID              */
   SERAC011             INTEGER                         not null,  /*��ͬID              */
   SERAC012             VARCHAR2(255),                             /*��ע                */
   SERAC013             INTEGER,                                   /*¼����ID            */
   SERAC014             DATE,                                      /*¼������            */
   SERAC015             INTEGER,                                   /*�����ID            */
   SERAC016             DATE,                                      /*�������            */
   SERAC017             VARCHAR2(1)                     not null,  /*���״̬            */
   SERAC018             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SERAC019             VARCHAR2(30),                              /*ǩ�˵���            */
   SERAC020             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SERAC primary key (SERAC_ID)
);
create unique index AK_TB_SERAC on TB_SERAC (SERAC002,SERAC005);
create sequence SEQ_TB_SERAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAC to public;
grant index  on TB_SERAC to public;
grant update on TB_SERAC to public; 
grant delete on TB_SERAC to public;  
grant insert on TB_SERAC to public; 
grant select on SEQ_TB_SERAC to public;   