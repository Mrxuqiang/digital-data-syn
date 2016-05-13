/*
================================================================================
��ṹ����:TB_SERIN
��ṹ����:�̻���ǩ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIN;
drop index AK_TB_SERIN;
drop table TB_SERIN;
create table TB_SERIN  (
   SERIN_ID             INTEGER                         not null,  /*��ǩID        */
   SERIN001             INTEGER                         not null,  /*�̻�ID        */
   SERIN002             INTEGER,                                   /*չλID      */
   SERIN003             INTEGER,                                   /*¥��ID      */
   SERIN004             INTEGER,                                   /*��ͬID        */   
   SERIN005             INTEGER,                                   /*Ʒ��ID(ϵ��)      */
   SERIN006             INTEGER,                                   /*¥��ID      */  
   SERIN007             VARCHAR2(30),                              /*��ϵ�绰      */ 
   SERIN008             VARCHAR2(1),                               /*��Ӫ��ʽ      */ 
   SERIN009             VARCHAR2(1),                               /*���ǩ����      */  
   SERIN010             VARCHAR2(1),                               /*�۸�����      */  
   SERIN011             INTEGER,                                   /*��ƷID         */ 
   SERIN012             VARCHAR2(80),                              /*��Ʒ����         */ 
   SERIN013             VARCHAR2(80),                              /*�ͺ�         */     
   SERIN014             VARCHAR2(80),                              /*���         */ 
   SERIN015             VARCHAR2(2),                               /*���λ        */  
   SERIN016             VARCHAR2(60),                              /*����/����           */  
   SERIN017             VARCHAR2(60),                              /*����           */   
   SERIN018             VARCHAR2(60),                              /*����           */ 
   SERIN019             INTEGER,                                   /*��Ʒ����ID           */ 
   SERIN020             INTEGER,                                   /*��λID           */  
   SERIN021             INTEGER,                                   /*�ȼ�ID           */  
   SERIN022             NUMBER(22),                                 /*���ǩ����           */  
   SERIN023             NUMBER(22,2),                              /*�ۼ�           */  
   SERIN024             INTEGER,                                   /*�Զ������1           */  
   SERIN025             INTEGER,                                   /*�Զ������2�����أ�   */  
   SERIN026             INTEGER,                                   /*�Զ������3           */  
   SERIN027             INTEGER,                                   /*�Զ������4           */  
   SERIN028             INTEGER,                                   /*�Զ������5           */  
   SERIN029             INTEGER,                                   /*�Զ������6           */  
   SERIN030             INTEGER,                                   /*�Զ������7           */  
   SERIN031             INTEGER,                                   /*�Զ������8           */  
   SERIN032             VARCHAR2(20),                              /*���Ա              */  
   SERIN033             NUMBER(22,2),                              /*ԭ�ۼ�              */   
   SERIN034             DATE,                                      /*���ۿ�ʼ����        */   
   SERIN035             DATE,                                      /*���۽�������        */  
   SERIN036             VARCHAR2(1),                               /*���� 1.��ǩ���룬2.�������룬3.�������� 4.�ٴδ�ӡ  */  
   SERIN037             INTEGER,                                   /*¼����             */ 
   SERIN038             DATE,                                      /*¼������           */ 
   SERIN039             VARCHAR2(1),                               /*����״̬           */
   SERIN040             INTEGER,                                   /*�����           */ 
   SERIN041             DATE,                                      /*�������           */       
   SERIN042             INTEGER                         not null,  /*�̳�ID        */       
   SERIN043             VARCHAR2(255),                               /*��ע           */    
   SERIN044             INTEGER,                                   /*��ӡ�嵥����               */ 
   SERIN045             INTEGER,                                   /*��ӡ��ǩ����             */       
   SERIN046             VARCHAR2(80),                              /*�ȼ�����             */   
   SERIN047             VARCHAR2(80),                              /*����             */   
   SERIN048             VARCHAR2(255),                              /*����ԭ��             */   
   SERIN051             VARCHAR2(255),                              /*��Ҫ����             */ 
   SERIN052             VARCHAR2(255),                              /*��ɫ             */ 
   SERIN053             VARCHAR2(2),                               /*��Ʒ����            */
   await_appr_group     VARCHAR2(30)                               /*��������ɫ               */
   await_appr_user      VARCHAR2(30)                               /*�������û�               */
   approved_group       VARCHAR2(30)                               /*��������ɫ               */
   approved_user        VARCHAR2(30)                               /*�������û�               */
   appr_status          VARCHAR2(1)                                /*����״̬ 0���ޣ�1���ѷ���������; 9����������*/ 0.δ����(�ݸ�)��1.��أ��������ϸ� 2.������ 9.��������
   start_appr_group     VARCHAR2(30)                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30)                               /*���������û�               */   
   ---appr_back_memo       VARCHAR2(255),                             /*��ر�ע*/      
   appr_memo            VARCHAR2(255),                             /*������ע*/                                                
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIN primary key (SERIN_ID)
);
create sequence SEQ_TB_SERIN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIN to public;
grant index  on TB_SERIN to public;
grant update on TB_SERIN to public; 
grant delete on TB_SERIN to public;  
grant insert on TB_SERIN to public; 
grant select on SEQ_TB_SERIN to public;   