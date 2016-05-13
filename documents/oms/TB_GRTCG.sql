/*
================================================================================
��ṹ����:TB_GRTCG
��ṹ����:�����   
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCG;
drop table TB_GRTCG;
create table TB_GRTCG  (
   GRTCG_ID             INTEGER         NOT NULL,  /*����ID                 */ 
   GRTCG001             INTEGER,                   /*����Ŀ¼ID             */      
   GRTCG002             VARCHAR2(20),              /*������               */   
   GRTCG003             VARCHAR2(30),              /*��������               */
   GRTCG004             DATE,                      /*��ʼ����               */   
   GRTCG005             DATE,                      /*��������               */   
   GRTCG006             INTEGER,                   /*�ؼ����������         */   
   GRTCG007             VARCHAR2(255),             /*��ע                   */
   GRTCG008             INTEGER,                   /*������˾ID             */   
   CREATE_USER          VARCHAR2(12),              /*������Ա               */
   USER_GROUP           VARCHAR2(12),              /*������Ա����           */                               
   CREATE_DATE          DATE,                      /*��������               */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա               */
   MODI_DATE            DATE,                      /*�޸�����               */
   FLAG                 NUMBER(1),                 /*����״̬               */        
   constraint PK_TB_GRTCG primary key (GRTCG_ID)
);
create sequence SEQ_TB_GRTCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCG to public;
grant index  on TB_GRTCG to public;
grant update on TB_GRTCG to public; 
grant delete on TB_GRTCG to public;  
grant insert on TB_GRTCG to public; 
grant select on SEQ_TB_GRTCG to public; 