/*
================================================================================
��ṹ����:TB_PRODA
��ṹ����:װ����Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODA;
drop index AK_TB_PRODA;
drop table TB_PRODA;
create table TB_PRODA  (
   PRODA_ID             INTEGER                         not null,  /*��ĿID          */
   PRODA001             VARCHAR2(1)                     not null,  /*��Ŀ����        */
   PRODA002             VARCHAR2(8)                     not null,  /*��Ŀ����        */
   PRODA003             VARCHAR2(30),                              /*��Ŀ����	     */ 
   PRODA004             INTEGER,                                   /*��Ӧ����	     */ 
   PRODA005             INTEGER,                                   /*��ע    	     */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����    */                               
   CREATE_DATE          DATE,                                      /*��������        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա        */
   MODI_DATE            DATE,                                      /*�޸�����        */
   FLAG                 NUMBER(1),                                 /*����״̬        */
   constraint PK_TB_PRODA primary key (PRODA_ID)
);
create unique index AK_TB_PRODA on TB_PRODA (PRODA001,PRODA002);
create sequence SEQ_TB_PRODA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODA to public;
grant index  on TB_PRODA to public;
grant update on TB_PRODA to public; 
grant delete on TB_PRODA to public;  
grant insert on TB_PRODA to public; 
grant select on SEQ_TB_PRODA to public;   

