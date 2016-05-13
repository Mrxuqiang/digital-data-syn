20140728 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_SERIV
��ṹ����:��Ʒȱʧ������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIV;
drop index AK_TB_SERIV;
drop table TB_SERIV;
create table TB_SERIV  (
   SERIV_ID             INTEGER                         not null,  /*��Ʒȱʧ����ID             */
   SERIV001             INTEGER                         not null,  /*�̻�ID        */
   SERIV002             INTEGER,                                   /*չλID      */
   SERIV003             INTEGER,                                   /*¥��ID      */
   SERIV004             INTEGER,                                   /*��ͬID        */   
   SERIV005             INTEGER,                                   /*Ʒ��ID      */
   SERIV006             INTEGER,                                   /*¥��ID      */  
   SERIV007             VARCHAR2(30),                              /*��ϵ�绰      */ 
   SERIV008             VARCHAR2(1),                               /*��Ӫ��ʽ      */ 
   SERIV009             VARCHAR2(1),                               /*���ǩ����      */  
   SERIV010             VARCHAR2(1),                               /*�۸�����      */  
   SERIV011             INTEGER,                                   /*��ƷID         */ 
   SERIV012             VARCHAR2(80),                              /*��Ʒ����         */ 
   SERIV013             VARCHAR2(80),                              /*�ͺ�         */     
   SERIV014             VARCHAR2(80),                              /*���         */ 
   SERIV015             VARCHAR2(2),                               /*���λ        */  
   SERIV016             VARCHAR2(60),                              /*����/����           */  
   SERIV017             VARCHAR2(60),                              /*����           */   
   SERIV018             VARCHAR2(60),                              /*����           */ 
   SERIV019             INTEGER,                                   /*��Ʒ����ID           */ 
   SERIV020             INTEGER,                                   /*��λID           */  
   SERIV021             INTEGER,                                   /*�ȼ�ID           */  
   SERIV022             NUMBER(22),                                /*���ǩ����           */  
   SERIV023             NUMBER(22,2),                              /*�ۼ�           */  
   SERIV024             INTEGER,                                   /*�Զ������1           */  
   SERIV025             INTEGER,                                   /*�Զ������2           */  
   SERIV026             INTEGER,                                   /*�Զ������3           */  
   SERIV027             INTEGER,                                   /*�Զ������4           */  
   SERIV028             INTEGER,                                   /*�Զ������5           */  
   SERIV029             INTEGER,                                   /*�Զ������6           */  
   SERIV030             INTEGER,                                   /*�Զ������7           */  
   SERIV031             INTEGER,                                   /*�Զ������8           */  
   SERIV032             VARCHAR2(20),                              /*���Ա              */  
   SERIV033             NUMBER(22,2),                              /*ԭ�ۼ�              */   
   SERIV034             DATE,                                      /*���ۿ�ʼ����        */   
   SERIV035             DATE,                                      /*���۽�������        */  
   SERIV036             VARCHAR2(1),                               /*���� 1.��ǩ���룬2.�������룬3.�������� 4.�ٴδ�ӡ  */  
   SERIV037             INTEGER,                                   /*¼����             */ 
   SERIV038             DATE,                                      /*¼������           */ 
   SERIV039             VARCHAR2(1),                               /*����״̬           */
   SERIV040             INTEGER,                                   /*�����           */ 
   SERIV041             DATE,                                      /*�������           */       
   SERIV042             INTEGER                         not null,  /*�̳�ID        */       
   SERIV043             VARCHAR2(255),                             /*��ע           */    
   SERIV044             INTEGER,                                   /*��ӡ�嵥����               */ 
   SERIV045             INTEGER,                                   /*��ӡ��ǩ����             */       
   SERIV046             VARCHAR2(80),                              /*�ȼ�����             */   
   SERIV047             VARCHAR2(80),                              /*����             */   
   SERIV048             VARCHAR2(255),                             /*����ԭ��             */  
   SERIV049             VARCHAR2(1),                               /*״̬��1���ϼܣ�0���¼ܣ�default 1             */ 
   SERIV050             VARCHAR2(255),                             /*��Ҫ����             */ 
   SERIV051             VARCHAR2(255),                             /*��ɫ             */ 
   SERIV052             VARCHAR2(2),                               /*��Ʒ����            */ 
   SERIV053             VARCHAR2(30),                              /*��Ʒ����            */
   SERIV054             INTEGER,                                   /*����id            */
   SERIV055             INTEGER,                                   /*ϵ��id            */
   SERIV056             INTEGER,                                   /*������id            */
   SERIV057             varchar2(30),                              /*����            */
   await_appr_group     VARCHAR2(255),                             /*��������ɫ               */
   await_appr_user      VARCHAR2(255),                             /*�������û�               */
   approved_group       VARCHAR2(255),                             /*��������ɫ               */
   approved_user        VARCHAR2(255),                             /*�������û�               */
   appr_status          VARCHAR2(1)                                /*����״̬ 1.�ݸ� 2.�����̳�������� 3.���̳���۲��� 4.��Ʒ��������� 
									  5.Ʒ���̼���۲��� 6.���������� 7.�������� 8.��������ͨ�� 0.ȫ��  */
   start_appr_group     VARCHAR2(30)                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30)                               /*���������û�               */    
   appr_memo            VARCHAR2(255),                             /*������ע*/                     
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIV primary key (SERIV_ID)
);
create unique index AK_TB_SERIV on TB_SERIV (SERIV004,SERIV011);
create sequence SEQ_TB_SERIV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIV to public;
grant index  on TB_SERIV to public;
grant update on TB_SERIV to public; 
grant delete on TB_SERIV to public;  
grant insert on TB_SERIV to public; 
grant select on SEQ_TB_SERIV to public;   