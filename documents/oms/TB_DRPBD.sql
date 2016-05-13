/*
================================================================================
��ṹ����:TB_DRPBD
��ṹ����:����ƾ֤�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBD;
drop index AK_TB_DRPBD;
drop table TB_DRPBD;
create table TB_DRPBD  (
   DRPBD_ID             INTEGER                         not null,  /*����ƾ֤��ID            */
   DRPBD001             INTEGER                         not null,  /*����ƾ֤��ID            */   
   DRPBD002             VARCHAR2(255),                             /*ժҪ                    */   
   DRPBD003             INTEGER,                                   /*������Ŀ����            */
   DRPBD004             VARCHAR2(1),                               /*�������                */
   DRPBD005             NUMBER(16,2),                              /*���                    */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����            */                               
   CREATE_DATE          DATE,                                      /*��������                */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                */
   MODI_DATE            DATE,                                      /*�޸�����                */
   FLAG                 NUMBER(1),                                 /*����״̬                */
   constraint PK_TB_DRPBD primary key (DRPBD_ID)
);
create sequence SEQ_TB_DRPBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBD to public;
grant index  on TB_DRPBD to public;
grant update on TB_DRPBD to public; 
grant delete on TB_DRPBD to public;  
grant insert on TB_DRPBD to public; 
grant select on SEQ_TB_DRPBD to public;   