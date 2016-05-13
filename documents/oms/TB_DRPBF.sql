/*
================================================================================
��ṹ����:TB_DRPBF
��ṹ����:�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBF;
drop index AK_TB_DRPBF;
drop table TB_DRPBF;
create table TB_DRPBF  (
   DRPBF_ID             INTEGER                         not null,  /*������ID                */
   DRPBF001             INTEGER                         not null,  /*������ID                */   
   DRPBF002             VARCHAR2(1),                               /*�������                */   
   DRPBF003             INTEGER,                                   /*������Ŀ����            */
   DRPBF004             NUMBER(16,2),                              /*����ǰ��ֵ              */
   DRPBF005             NUMBER(16,2),                              /*�������ֵ              */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����            */                               
   CREATE_DATE          DATE,                                      /*��������                */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                */
   MODI_DATE            DATE,                                      /*�޸�����                */
   FLAG                 NUMBER(1),                                 /*����״̬                */
   constraint PK_TB_DRPBF primary key (DRPBF_ID)
);
create sequence SEQ_TB_DRPBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBF to public;
grant index  on TB_DRPBF to public;
grant update on TB_DRPBF to public; 
grant delete on TB_DRPBF to public;  
grant insert on TB_DRPBF to public; 
grant select on SEQ_TB_DRPBF to public;   