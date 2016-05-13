/*
================================================================================
��ṹ����:TB_GRTBD
��ṹ����:����ƾ֤�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBD;
drop index AK_TB_GRTBD;
drop table TB_GRTBD;
create table TB_GRTBD  (
   GRTBD_ID             INTEGER                         not null,  /*����ƾ֤��ID            */
   GRTBD001             INTEGER                         not null,  /*����ƾ֤��ID            */   
   GRTBD002             VARCHAR2(255),                             /*ժҪ                    */   
   GRTBD003             INTEGER,                                   /*������Ŀ����            */
   GRTBD004             VARCHAR2(1),                               /*�������                */
   GRTBD005             NUMBER(16,2),                              /*���                    */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����            */                               
   CREATE_DATE          DATE,                                      /*��������                */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                */
   MODI_DATE            DATE,                                      /*�޸�����                */
   FLAG                 NUMBER(1),                                 /*����״̬                */
   constraint PK_TB_GRTBD primary key (GRTBD_ID)
);
create sequence SEQ_TB_GRTBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBD to public;
grant index  on TB_GRTBD to public;
grant update on TB_GRTBD to public; 
grant delete on TB_GRTBD to public;  
grant insert on TB_GRTBD to public; 
grant select on SEQ_TB_GRTBD to public;   