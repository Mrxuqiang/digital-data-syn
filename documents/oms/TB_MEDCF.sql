/*
================================================================================
��ṹ����:TB_MEDCF
��ṹ����:ý���ͬ��̯������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCF;
drop index AK_TB_MEDCF;
drop table TB_MEDCF;
create table TB_MEDCF  (
   MEDCF_ID             INTEGER                         not null,  /*ý���ͬ��̯��ID    */
   MEDCF001             INTEGER                         not null,  /*����                */
   MEDCF002             VARCHAR2(30)                    not null,  /*��̯����            */
   MEDCF003             DATE                            not null,  /*��̯����            */
   MEDCF004             INTEGER                         not null,  /*Ӫ����֯ID          */
   MEDCF005             INTEGER                         not null,  /*ý���ͬ��ID        */
   MEDCF006             INTEGER                         not null,  /*������ID            */
   MEDCF007             INTEGER                         not null,  /*ҵ����ID          */
   MEDCF008             INTEGER                         not null,  /*ҵ����ԱID          */
   MEDCF009             VARCHAR2(255),                             /*��ע                */
   MEDCF010             INTEGER,                                   /*¼��ID              */
   MEDCF011             DATE,                                      /*¼������            */
   MEDCF012             INTEGER,                                   /*���ID              */
   MEDCF013             DATE,                                      /*�������            */
   MEDCF014             VARCHAR2(1)                     not null,  /*���״̬            */
   MEDCF015             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   MEDCF016             VARCHAR2(30),                              /*ǩ�˵���            */
   MEDCF017             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEDCF primary key (MEDCF_ID)
);
create unique index AK_TB_MEDCF on TB_MEDCF (MEDCF002,MEDCF004);
create sequence SEQ_TB_MEDCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCF to public;
grant index  on TB_MEDCF to public;
grant update on TB_MEDCF to public; 
grant delete on TB_MEDCF to public;  
grant insert on TB_MEDCF to public; 
grant select on SEQ_TB_MEDCF to public;   