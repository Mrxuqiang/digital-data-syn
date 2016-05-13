/*
================================================================================
��ṹ����:TB_GRTBE
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBE;
drop index AK_TB_GRTBE;
drop table TB_GRTBE;
create table TB_GRTBE  (
   GRTBE_ID             INTEGER                         not null,  /*������ID          */
   GRTBE001             INTEGER,                                   /*����ID            */
   GRTBE002             INTEGER,                                   /*����ģ��ID        */
   GRTBE003             INTEGER,                                   /*���˹�˾ID        */    
   GRTBE004             INTEGER,                                   /*������λID        */
   GRTBE005             INTEGER,                                   /*�Է���λID        */  
   GRTBE006             DATE,                                      /*����ڼ�          */   
   GRTBE007             VARCHAR2(1),                               /*�Ƿ�Է�          */  
   GRTBE008             DATE,                                      /*����ʱ��          */  
   GRTBE009             VARCHAR2(1),                               /*�����˹���       */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTBE primary key (GRTBE_ID)
);
create sequence SEQ_TB_GRTBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBE to public;
grant index  on TB_GRTBE to public;
grant update on TB_GRTBE to public; 
grant delete on TB_GRTBE to public;  
grant insert on TB_GRTBE to public; 
grant select on SEQ_TB_GRTBE to public;   