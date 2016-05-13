/*
================================================================================
��ṹ����:TB_CONAF
��ṹ����:��ͬ��ӡģ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAF;
drop index AK_TB_CONAF;
drop table TB_CONAF;
create table TB_CONAF  (
   CONAF_ID             INTEGER                         not null,  /*��ӡģ��ID          */
   CONAF001             INTEGER                         not null,  /*��˾ID              */
   CONAF002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONAF003             VARCHAR2(16)                    not null,  /*ģ����            */
   CONAF004             VARCHAR2(30)                    not null,  /*ģ������            */
   CONAF005             DATE                            not null,  /*��Ч����            */
   CONAF006             INTEGER,                                   /*¼����ID            */
   CONAF007             DATE,                                      /*¼������            */
   CONAF008             INTEGER,                                   /*�����ID            */
   CONAF009             DATE,                                      /*�������            */
   CONAF010             VARCHAR2(1)                     not null,  /*���״̬            */
   CONAF011             VARCHAR2(30)                    not null,  /*SAP��˾����         */
   CONAF012             VARCHAR2(30)                    not null,  /*SAP��ҵʵ��         */  
   CONAF013             VARCHAR2(30)                    not null,  /*��ӡģ��       */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONAF primary key (CONAF_ID)
);
create unique index AK_TB_CONAF on TB_CONAF (CONAF002,CONAF003);
create sequence SEQ_TB_CONAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAF to public;
grant index  on TB_CONAF to public;
grant update on TB_CONAF to public; 
grant delete on TB_CONAF to public;  
grant insert on TB_CONAF to public; 
grant select on SEQ_TB_CONAF to public;   