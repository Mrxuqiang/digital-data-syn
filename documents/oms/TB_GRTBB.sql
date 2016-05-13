/*
================================================================================
��ṹ����:TB_GRTBB
��ṹ����:����ƾ֤�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBB;
drop index AK_TB_GRTBB;
drop table TB_GRTBB;
create table TB_GRTBB  (
   GRTBB_ID             INTEGER                         not null,  /*����ƾ֤��ID          */
   GRTBB001             INTEGER                         not null,  /*����ƾ֤��ID            */   
   GRTBB002             VARCHAR2(255),                             /*ժҪ                  */   
   GRTBB003             INTEGER,                                   /*������Ŀ����          */
   GRTBB004             VARCHAR2(1),                               /*�������              */
   GRTBB005             NUMBER(16,2),                              /*���                  */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTBB primary key (GRTBB_ID)
);
create sequence SEQ_TB_GRTBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBB to public;
grant index  on TB_GRTBB to public;
grant update on TB_GRTBB to public; 
grant delete on TB_GRTBB to public;  
grant insert on TB_GRTBB to public; 
grant select on SEQ_TB_GRTBB to public;   