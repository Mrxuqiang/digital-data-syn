/*
================================================================================
��ṹ����:TB_GRTCF
��ṹ����:����Ŀ¼��   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCF;
drop table TB_GRTCF;
create table TB_GRTCF  (
   GRTCF_ID             INTEGER         NOT NULL,  /*ID                 */ 
   GRTCF001             INTEGER,                   /*��ID               */      
   GRTCF002             VARCHAR2(20),              /*Ŀ¼����           */   
   GRTCF003             INTEGER,                   /*��˾ID             */
   GRTCF004             VARCHAR2(80),              /*Ŀ¼˵��           */    
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */      
   constraint PK_TB_GRTCF primary key (GRTCF_ID)
);
create sequence SEQ_TB_GRTCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCF to public;
grant index  on TB_GRTCF to public;
grant update on TB_GRTCF to public; 
grant delete on TB_GRTCF to public;  
grant insert on TB_GRTCF to public; 
grant select on SEQ_TB_GRTCF to public; 