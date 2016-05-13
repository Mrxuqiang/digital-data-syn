/*
================================================================================
��ṹ����:TB_SERIX
��ṹ����:�̻���ǩ�������۱�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIX;
drop index AK_TB_SERIX;
drop table TB_SERIX;
create table TB_SERIX  (
   SERIX_ID             INTEGER                         not null,  /*��ǩ����ID        */
   SERIX001             INTEGER                         not null,  /*��ǩID            */   
   SERIX002             INTEGER                         not null,  /*�̻�ID            */
   SERIX003             INTEGER,                                   /*չλID            */
   SERIX004             INTEGER,                                   /*¥��ID            */
   SERIX005             INTEGER,                                   /*��ͬID            */   
   SERIX006             INTEGER,                                   /*Ʒ��ID            */
   SERIX007             INTEGER,                                   /*¥��ID            */  
   SERIX008             VARCHAR2(30),                              /*��ϵ�绰          */ 
   SERIX009             VARCHAR2(1),                               /*��Ӫ��ʽ          */ 
   SERIX010             VARCHAR2(1),                               /*���ǩ����        */  
   SERIX011             VARCHAR2(1),                               /*�۸�����          */  
   SERIX012             INTEGER,                                   /*��ƷID            */ 
   SERIX013             VARCHAR2(80),                              /*��Ʒ����          */ 
   SERIX014             VARCHAR2(80),                              /*�ͺ�              */     
   SERIX015             VARCHAR2(80),                              /*���              */ 
   SERIX016             VARCHAR2(2),                               /*���λ          */  
   SERIX017             VARCHAR2(60),                              /*����/����         */  
   SERIX018             VARCHAR2(60),                              /*����              */   
   SERIX019             VARCHAR2(60),                              /*����              */ 
   SERIX020             INTEGER,                                   /*��Ʒ����ID        */ 
   SERIX021             INTEGER,                                   /*��λID            */  
   SERIX022             INTEGER,                                   /*�ȼ�ID            */  
   SERIX023             NUMBER(22,2),                              /*�������ۼ�        */  
   SERIX024             INTEGER,                                   /*�Զ������1       */  
   SERIX025             INTEGER,                                   /*�Զ������2       */  
   SERIX026             INTEGER,                                   /*�Զ������3       */  
   SERIX027             INTEGER,                                   /*�Զ������4       */  
   SERIX028             INTEGER,                                   /*�Զ������5       */  
   SERIX029             INTEGER,                                   /*�Զ������6       */  
   SERIX030             INTEGER,                                   /*�Զ������7       */  
   SERIX031             INTEGER,                                   /*�Զ������8       */  
   SERIX032             VARCHAR2(20),                              /*���Ա            */  
   SERIX033             NUMBER(22,2),                              /*ԭ�ۼ�            */   
   SERIX034             INTEGER,                                   /*¼����            */ 
   SERIX035             DATE,                                      /*¼������          */ 
   SERIX036             VARCHAR2(1),                               /*����״̬          */
   SERIX037             INTEGER,                                   /*�����            */ 
   SERIX038             DATE,                                      /*�������          */       
   SERIX039             INTEGER                         not null,  /*�̳�ID            */       
   SERIX040             VARCHAR2(255),                             /*��ע              */        
   SERIX041             VARCHAR2(80),                              /*�ȼ�����          */   
   SERIX042             VARCHAR2(80),                              /*����              */   
   SERIX043             VARCHAR2(255),                             /*����ԭ��          */   
   SERIX044             VARCHAR2(255),                             /*��Ҫ����          */ 
   SERIX045             VARCHAR2(255),                             /*��ɫ              */ 
   SERIX046             VARCHAR2(2),                               /*��Ʒ����          */     
   SERIX047             INTEGER,                                   /*����ת��id        */ 
   SERIX048             VARCHAR2(30),                              /*�Զ������1����   */  
   SERIX049             VARCHAR2(60),                              /*�Զ������1����   */  
   SERIX050             VARCHAR2(30),                              /*�Զ������2����   */  
   SERIX051             VARCHAR2(60),                              /*�Զ������2����   */  
   SERIX052             VARCHAR2(30),                              /*�Զ������3����   */  
   SERIX053             VARCHAR2(60),                              /*�Զ������3����   */  
   SERIX054             VARCHAR2(30),                              /*�Զ������4����   */  
   SERIX055             VARCHAR2(60),                              /*�Զ������4����   */  
   SERIX056             VARCHAR2(30),                              /*�Զ������5����   */  
   SERIX057             VARCHAR2(60),                              /*�Զ������5����   */  
   SERIX058             VARCHAR2(30),                              /*�Զ������6����   */  
   SERIX059             VARCHAR2(60),                              /*�Զ������6����   */  
   SERIX060             VARCHAR2(30),                              /*�Զ������7����   */  
   SERIX061             VARCHAR2(60),                              /*�Զ������7����   */  
   SERIX062             VARCHAR2(30),                              /*�Զ������8����   */  
   SERIX063             VARCHAR2(60),                              /*�Զ������8����   */             
   await_appr_group     VARCHAR2(255),                             /*��������ɫ        */
   await_appr_user      VARCHAR2(255),                             /*�������û�        */
   approved_group       VARCHAR2(255),                             /*��������ɫ        */
   approved_user        VARCHAR2(255),                             /*�������û�        */
   appr_status          VARCHAR2(1)                                /*����״̬ 0���ޣ�1���ѷ���������; 9����������*/ 0.δ����(�ݸ�)��1.��أ��������ϸ� 2.������ 9.��������
   start_appr_group     VARCHAR2(30)                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30)                               /*���������û�               */    
   appr_memo            VARCHAR2(255),                             /*������ע*/                       
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIX primary key (SERIX_ID)
);
create sequence SEQ_TB_SERIX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIX to public;
grant index  on TB_SERIX to public;
grant update on TB_SERIX to public; 
grant delete on TB_SERIX to public;  
grant insert on TB_SERIX to public; 
grant select on SEQ_TB_SERIX to public;   