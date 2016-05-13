/*
================================================================================
��ṹ����:TB_GRTBF
��ṹ����:�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBF;
drop index AK_TB_GRTBF;
drop table TB_GRTBF;
create table TB_GRTBF  (
   GRTBF_ID             INTEGER                         not null,  /*������ID                */
   GRTBF001             INTEGER                         not null,  /*������ID                */   
   GRTBF002             VARCHAR2(1),                               /*�������                */   
   GRTBF003             INTEGER,                                   /*������Ŀ����            */
   GRTBF004             NUMBER(16,2),                              /*����ǰ��ֵ              */
   GRTBF005             NUMBER(16,2),                              /*�������ֵ              */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����            */                               
   CREATE_DATE          DATE,                                      /*��������                */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                */
   MODI_DATE            DATE,                                      /*�޸�����                */
   FLAG                 NUMBER(1),                                 /*����״̬                */
   constraint PK_TB_GRTBF primary key (GRTBF_ID)
);
create sequence SEQ_TB_GRTBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBF to public;
grant index  on TB_GRTBF to public;
grant update on TB_GRTBF to public; 
grant delete on TB_GRTBF to public;  
grant insert on TB_GRTBF to public; 
grant select on SEQ_TB_GRTBF to public;   