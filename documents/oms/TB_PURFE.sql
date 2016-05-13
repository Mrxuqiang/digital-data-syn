/*
================================================================================
��ṹ����:TB_PURFE
��ṹ����:�����������
��ṹĿ��:�ֲ�
================================================================================
*/

drop sequence SEQ_TB_PURFE
drop index AK_TB_PURFE;
drop table TB_PURFE;
create table TB_PURFE  (
   PURFE_ID             INTEGER             not null,    /*���������ID       */   
   PURFE001             INTEGER             not null,    /*����               */   
   PURFE002             VARCHAR2(30)        not null,    /*�����������       */   
   PURFE003             DATE                not null,    /*�������           */  
   PURFE004             INTEGER             not null,    /*���Ӫ����֯       */  
   PURFE005             INTEGER,                         /*���۵���ID         */   
   PURFE006	        INTEGER,  		         /*����ID             */ 
   PURFE007	        INTEGER,  		         /*��ⵥID           */    
   PURFE008             INTEGER,                         /*¼����             */   
   PURFE009             DATE,                            /*¼������           */   
   PURFE010             INTEGER,                         /*�����             */   
   PURFE011             DATE,                            /*�������           */
   PURFE012             VARCHAR2(1)         not null,    /*���״̬           */  
   PURFE013             VARCHAR2(255),                   /*��ע               */   
   CREATE_USER          VARCHAR2(12),                    /*������Ա           */
   USER_GROUP           VARCHAR2(12),                    /*������Ա����       */                          
   CREATE_DATE          DATE,                            /*��������           */
   MODIFIER             VARCHAR2(12),                    /*�޸���Ա           */
   MODI_DATE            DATE,                            /*�޸�����           */
   FLAG                 NUMBER,                          /*����״̬           */
   constraint PK_TB_PURFE primary key (PURFE_ID)
);
create unique index AK_TB_PURFE on TB_PURFE (PURFE001,PURFE002,FLAG);
create sequence SEQ_TB_PURFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFE to public;
grant index  on TB_PURFE to public;
grant update on TB_PURFE to public; 
grant delete on TB_PURFE to public;  
grant insert on TB_PURFE to public; 
grant select on SEQ_TB_PURFE to public;   