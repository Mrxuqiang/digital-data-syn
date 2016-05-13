/*
================================================================================
��ṹ����:TB_TAXAF
��ṹ����:��Ʊ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAF;
drop index AK_TB_TAXAF;
drop table TB_TAXAF;
create table TB_TAXAF  (
   TAXAF_ID             INTEGER                         not null,  /*��Ʊ���ϵ�ID      */
   TAXAF001             INTEGER                         not null,  /*����ID            */
   TAXAF002             VARCHAR2(30)                    not null,  /*���ϵ���          */
   TAXAF003             DATE                            not null,  /*��������          */
   TAXAF004             INTEGER                         not null,  /*��˾ID            */
   TAXAF005             INTEGER                         not null,  /*Ӫ����֯ID        */
   TAXAF006             DATE                            not null,  /*��������          */
   TAXAF007             INTEGER                         not null,  /*ҵ����ID        */
   TAXAF008             INTEGER                         not null,  /*ҵ����ԱID        */
   TAXAF009             VARCHAR2(255),                             /*��ע              */
   TAXAF010             INTEGER,                                   /*¼����ID          */
   TAXAF011             DATE,                                      /*¼������          */
   TAXAF012             INTEGER,                                   /*�����ID          */
   TAXAF013             DATE,                                      /*�������          */
   TAXAF014             VARCHAR2(1)                     not null,  /*���״̬          */
   TAXAF015             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   TAXAF016             VARCHAR2(30),                              /*ǩ�˵���          */
   TAXAF017             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAF primary key (TAXAF_ID)
);
create unique index AK_TB_TAXAF on TB_TAXAF (TAXAF002,TAXAF005);
create sequence SEQ_TB_TAXAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAF to public;
grant index  on TB_TAXAF to public;
grant update on TB_TAXAF to public; 
grant delete on TB_TAXAF to public;  
grant insert on TB_TAXAF to public; 
grant select on SEQ_TB_TAXAF to public;   