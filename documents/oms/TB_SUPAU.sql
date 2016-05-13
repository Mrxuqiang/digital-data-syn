/*
================================================================================
��ṹ����:TB_SUPAU
��ṹ����:�̻��峡����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAU;
drop index AK_TB_SUPAU;
drop table TB_SUPAU;
create table TB_SUPAU  (
   SUPAU_ID             INTEGER                         not null,  /*�峡������ID        */
   SUPAU001             INTEGER                         not null,  /*����ID              */
   SUPAU002             VARCHAR2(30)                    not null,  /*��������            */
   SUPAU003             DATE                            not null,  /*��������            */
   SUPAU004             INTEGER                         not null,  /*��˾ID              */
   SUPAU005             INTEGER                         not null,  /*Ӫ����֯ID          */
   SUPAU006             INTEGER                         not null,  /*�̻�ID              */
   SUPAU007             INTEGER                         not null,  /*�̻��峡��ID        */
   SUPAU008             INTEGER                         not null,  /*����ԭ��ID          */
   SUPAU009             DATE                            not null,  /*��������            */
   SUPAU010             INTEGER                         not null,  /*ҵ����ID          */
   SUPAU011             INTEGER                         not null,  /*ҵ����ԱID          */
   SUPAU012             VARCHAR2(30),                              /*��ϵ��              */
   SUPAU013             VARCHAR2(500),                             /*��ע                */
   SUPAU014             INTEGER,                                   /*¼����ID            */
   SUPAU015             DATE,                                      /*¼������            */
   SUPAU016             INTEGER,                                   /*�����ID            */
   SUPAU017             DATE,                                      /*�������            */
   SUPAU018             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAU019             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAU020             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAU021             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAU primary key (SUPAU_ID)
);
create unique index AK_TB_SUPAU on TB_SUPAU (SUPAU002,SUPAU005);
create sequence SEQ_TB_SUPAU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAU to public;
grant index  on TB_SUPAU to public;
grant update on TB_SUPAU to public; 
grant delete on TB_SUPAU to public;  
grant insert on TB_SUPAU to public; 
grant select on SEQ_TB_SUPAU to public;   