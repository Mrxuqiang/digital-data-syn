/*
================================================================================
��ṹ����:TB_DRPBB
��ṹ����:����ƾ֤�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBB;
drop index AK_TB_DRPBB;
drop table TB_DRPBB;
create table TB_DRPBB  (
   DRPBB_ID             INTEGER                         not null,  /*����ƾ֤��ID          */
   DRPBB001             INTEGER                         not null,  /*����ƾ֤��ID            */   
   DRPBB002             VARCHAR2(255),                             /*ժҪ                  */   
   DRPBB003             INTEGER,                                   /*������Ŀ����          */
   DRPBB004             VARCHAR2(1),                               /*�������              */
   DRPBB005             NUMBER(16,2),                              /*���                  */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPBB primary key (DRPBB_ID)
);
create sequence SEQ_TB_DRPBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBB to public;
grant index  on TB_DRPBB to public;
grant update on TB_DRPBB to public; 
grant delete on TB_DRPBB to public;  
grant insert on TB_DRPBB to public; 
grant select on SEQ_TB_DRPBB to public;   