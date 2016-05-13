/*
================================================================================
��ṹ����:TB_SUPAF
��ṹ����:���̻����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAF;
drop index AK_TB_SUPAF;
drop table TB_SUPAF;
create table TB_SUPAF  (
   SUPAF_ID             INTEGER                         not null,  /*���̻ID          */
   SUPAF001             VARCHAR2(16)                    not null,  /*���̻���        */
   SUPAF002             VARCHAR2(40)                    not null,  /*���̻����        */
   SUPAF003             INTEGER                         not null,  /*������ID            */
   SUPAF004             VARCHAR2(100),                             /*���̻����        */
   SUPAF005             VARCHAR2(1)                     not null,  /*״̬                */
   SUPAF006             INTEGER                         not null,  /*���̼ƻ�ID          */
   SUPAF007             INTEGER                         not null,  /*���̻����ģ��ID  */
   SUPAF008             INTEGER,                                   /*Ӫ����֯ID(�ֶβ���)*/
   SUPAF009             INTEGER,                                   /*¥��ID(�ֶβ���)    */
   SUPAF010             INTEGER,                                   /*¥��ID(�ֶβ���)    */
   SUPAF011             INTEGER,                                   /*���̾�Ӫ����ID(�ֶβ���) */
   SUPAF012             NUMBER(6),                                 /*����̯λ��(�ֶβ���)*/
   SUPAF013             NUMBER(12,2),                              /*���������(�ֶβ���)*/
   SUPAF014             DATE                            not null,  /*Ԥ�ƿ�ʼ����        */
   SUPAF015             DATE                            not null,  /*Ԥ�ƽ�������        */
   SUPAF016             NUMBER(12,2)                    not null,  /*Ԥ�Ʒ���            */
   SUPAF017             DATE,                                      /*ʵ�ʿ�ʼ����        */
   SUPAF018             DATE,                                      /*ʵ�ʽ�������        */
   SUPAF019             NUMBER(12,2),                              /*ʵ�ʷ���            */
   SUPAF020             VARCHAR2(1),                               /*���                */
   SUPAF021             INTEGER,                                   /*���ԭ��ID          */
   SUPAF022             VARCHAR2(255),                             /*��ע                */
   SUPAF023             DATE,                                      /*��������            */
   SUPAF024             DATE,                                      /*ֹͣ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAF primary key (SUPAF_ID)
);
create unique index AK_TB_SUPAF on TB_SUPAF (SUPAF001);
create sequence SEQ_TB_SUPAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAF to public;
grant index  on TB_SUPAF to public;
grant update on TB_SUPAF to public; 
grant delete on TB_SUPAF to public;  
grant insert on TB_SUPAF to public; 
grant select on SEQ_TB_SUPAF to public;   