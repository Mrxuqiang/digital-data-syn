/*
20140825 add by sundan
*/


/*
================================================================================
��ṹ����:TB_SERIZ
��ṹ����:�̻���ǩ���������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIZ;
drop index AK_TB_SERIZ;
drop table TB_SERIZ;
create table TB_SERIZ  (
   SERIZ_ID             INTEGER                         not null,  /*��ǩID        */
   SERIZ001             INTEGER                         not null,  /*�̻�ID        */
   SERIZ002             INTEGER,                                   /*չλID      */
   SERIZ003             INTEGER,                                   /*¥��ID      */
   SERIZ004             INTEGER,                                   /*��ͬID        */   
   SERIZ005             INTEGER,                                   /*Ʒ��ID      */
   SERIZ006             INTEGER,                                   /*¥��ID      */  
   SERIZ007             VARCHAR2(30),                              /*��ϵ�绰      */ 
   SERIZ008             VARCHAR2(1),                               /*��Ӫ��ʽ      */ 
   SERIZ009             VARCHAR2(1),                               /*���ǩ����      */  
   SERIZ010             VARCHAR2(1),                               /*�۸�����      */  
   SERIZ011             INTEGER,                                   /*��ƷID         */ 
   SERIZ012             VARCHAR2(80),                              /*��Ʒ����         */ 
   SERIZ013             VARCHAR2(80),                              /*�ͺ�         */     
   SERIZ014             VARCHAR2(80),                              /*���         */ 
   SERIZ015             VARCHAR2(2),                               /*���λ        */  
   SERIZ016             VARCHAR2(60),                              /*����/����           */  
   SERIZ017             VARCHAR2(60),                              /*����           */   
   SERIZ018             VARCHAR2(60),                              /*����           */ 
   SERIZ019             INTEGER,                                   /*��Ʒ����ID           */ 
   SERIZ020             INTEGER,                                   /*��λID           */  
   SERIZ021             INTEGER,                                   /*�ȼ�ID           */  
   SERIZ022             NUMBER(22),                                 /*���ǩ����           */  
   SERIZ023             NUMBER(22,2),                              /*�ۼ�           */  
   SERIZ024             INTEGER,                                   /*�Զ������1           */  
   SERIZ025             INTEGER,                                   /*�Զ������2           */  
   SERIZ026             INTEGER,                                   /*�Զ������3           */  
   SERIZ027             INTEGER,                                   /*�Զ������4           */  
   SERIZ028             INTEGER,                                   /*�Զ������5           */  
   SERIZ029             INTEGER,                                   /*�Զ������6           */  
   SERIZ030             INTEGER,                                   /*�Զ������7           */  
   SERIZ031             INTEGER,                                   /*�Զ������8           */  
   SERIZ032             VARCHAR2(20),                              /*���Ա              */  
   SERIZ033             NUMBER(22,2),                              /*ԭ�ۼ�              */   
   SERIZ034             DATE,                                      /*���ۿ�ʼ����        */   
   SERIZ035             DATE,                                      /*���۽�������        */  
   SERIZ036             VARCHAR2(1),                               /*���� 1.��ǩ���룬2.�������룬3.�������� 4.�ٴδ�ӡ  */  
   SERIZ037             INTEGER,                                   /*¼����             */ 
   SERIZ038             DATE,                                      /*¼������           */ 
   SERIZ039             VARCHAR2(1),                               /*����״̬           */
   SERIZ040             INTEGER,                                   /*�����           */ 
   SERIZ041             DATE,                                      /*�������           */       
   SERIZ042             INTEGER                         not null,  /*�̳�ID        */       
   SERIZ043             VARCHAR2(255),                             /*��ע           */    
   SERIZ044             INTEGER,                                   /*��ӡ�嵥����               */ 
   SERIZ045             INTEGER,                                   /*��ӡ��ǩ����             */       
   SERIZ046             VARCHAR2(80),                              /*�ȼ�����             */   
   SERIZ047             VARCHAR2(80),                              /*����             */   
   SERIZ048             VARCHAR2(255),                              /*����ԭ��             */  
   SERIZ049             VARCHAR2(1),                                /*״̬��1���ϼܣ�0���¼ܣ�default 1             */ 
   SERIZ051             VARCHAR2(255),                              /*��Ҫ����             */ 
   SERIZ052             VARCHAR2(255),                              /*��ɫ             */ 
   SERIZ053             VARCHAR2(2),                               /*��Ʒ����            */   
   SERIZ054		VARCHAR2(1)			not null,  /*��������  1.����ǩ 2.����*/  
   SERIZ055             INTEGER                         not null,  /*��ǩID*/
   await_appr_group     VARCHAR2(255),                               /*��������ɫ               */
   await_appr_user      VARCHAR2(255),                               /*�������û�               */
   approved_group       VARCHAR2(255),                               /*��������ɫ               */
   approved_user        VARCHAR2(255),                               /*�������û�               */
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
   constraint PK_TB_SERIZ primary key (SERIZ_ID)
);
create sequence SEQ_TB_SERIZ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIZ to public;
grant index  on TB_SERIZ to public;
grant update on TB_SERIZ to public; 
grant delete on TB_SERIZ to public;  
grant insert on TB_SERIZ to public; 
grant select on SEQ_TB_SERIZ to public;   