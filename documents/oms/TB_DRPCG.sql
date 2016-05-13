/*
================================================================================
��ṹ����:TB_DRPCG
��ṹ����:�����   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCG;
drop table TB_DRPCG;
create table TB_DRPCG  (
   DRPCG_ID             INTEGER         NOT NULL,  /*����ID                 */ 
   DRPCG001             INTEGER,                   /*����Ŀ¼ID             */      
   DRPCG002             VARCHAR2(20),              /*������               */   
   DRPCG003             VARCHAR2(30),              /*��������               */
   DRPCG004             DATE,                      /*��ʼ����               */   
   DRPCG005             DATE,                      /*��������               */   
   DRPCG006             INTEGER,                   /*�ؼ����������         */   
   DRPCG007             VARCHAR2(255),             /*��ע                   */
   DRPCG008             INTEGER,                   /*������˾ID             */   
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_DRPCG primary key (DRPCG_ID)
);
create sequence SEQ_TB_DRPCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCG to public;
grant index  on TB_DRPCG to public;
grant update on TB_DRPCG to public; 
grant delete on TB_DRPCG to public;  
grant insert on TB_DRPCG to public; 
grant select on SEQ_TB_DRPCG to public; 