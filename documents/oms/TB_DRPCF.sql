/*
================================================================================
��ṹ����:TB_DRPCF
��ṹ����:����Ŀ¼��   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCF;
drop table TB_DRPCF;
create table TB_DRPCF  (
   DRPCF_ID             INTEGER         NOT NULL,  /*ID                 */ 
   DRPCF001             INTEGER,                   /*��ID               */      
   DRPCF002             VARCHAR2(20),              /*Ŀ¼����           */   
   DRPCF003             INTEGER,                   /*��˾ID             */
   DRPCF004             VARCHAR2(80),              /*Ŀ¼˵��           */    
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */      
   constraint PK_TB_DRPCF primary key (DRPCF_ID)
);
create sequence SEQ_TB_DRPCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCF to public;
grant index  on TB_DRPCF to public;
grant update on TB_DRPCF to public; 
grant delete on TB_DRPCF to public;  
grant insert on TB_DRPCF to public; 
grant select on SEQ_TB_DRPCF to public; 