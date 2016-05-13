/*
================================================================================
��ṹ����:TB_SALAC
��ṹ����:�ͻ�Э�鵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALAC;
drop index AK_TB_SALAC;
drop table TB_SALAC;
create table TB_SALAC  (
   SALAC_ID             INTEGER                         not null,  /*�ͻ�Э�鵥ID        */
   SALAC001             INTEGER                         not null,  /*����ID              */
   SALAC002             VARCHAR2(30)                    not null,  /*Э�鵥��            */
   SALAC003             DATE                            not null,  /*Э������            */
   SALAC004             INTEGER                         not null,  /*ǩԼӪ����֯ID      */
   SALAC005             INTEGER                         not null,  /*ǩԼ����ID          */
   SALAC006             INTEGER                         not null,  /*ǩԼ��ԱID          */
   SALAC007             INTEGER                         not null,  /*����ID              */
   SALAC008             NUMBER(12,2),                              /*�ۿ���(%)           */
   SALAC009             NUMBER(12,2),                              /*�������Ƿ���(%)     */
   SALAC010             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%)   */
   SALAC011             DATE                            not null,  /*��Ч����            */
   SALAC012             DATE                            not null,  /*��Чֹ��            */
   SALAC013             DATE,                                      /*��ֹ����            */
   SALAC014             VARCHAR2(255),                             /*��ע                */
   SALAC015             VARCHAR2(1)                     not null,  /*״̬                */
   SALAC016             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SALAC017             VARCHAR2(30),                              /*ǩ�˵���            */
   SALAC018             VARCHAR2(1),                               /*ǩ����              */
   SALAC019             INTEGER,                                   /*¼����ID            */
   SALAC020             DATE,                                      /*¼������            */
   SALAC021             INTEGER,                                   /*�����ID            */
   SALAC022             DATE,                                      /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SALAC primary key (SALAC_ID)
);
create unique index AK_TB_SALAC on TB_SALAC (SALAC002);
create sequence SEQ_TB_SALAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAC to public;
grant index  on TB_SALAC to public;
grant update on TB_SALAC to public; 
grant delete on TB_SALAC to public;  
grant insert on TB_SALAC to public; 
grant select on SEQ_TB_SALAC to public;   