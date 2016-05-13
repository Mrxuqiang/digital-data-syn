/*
================================================================================
��ṹ����:TB_SERIO
��ṹ����:�̻���ǩ��ӡ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIO;
drop index AK_TB_SERIO;
drop table TB_SERIO;
create table TB_SERIO  (
   SERIO_ID             INTEGER                         not null,  /*��ǩ��ӡ��ID     */
   SERIO001             INTEGER                         not null,  /*��ǩID           */   
   SERIO002             INTEGER                         not null,  /*�̻�ID           */
   SERIO003             VARCHAR2(30),                              /*�̻�����         */
   SERIO004             VARCHAR2(60),                              /*�̻����         */      
   SERIO005             INTEGER,                                   /*չλID           */
   SERIO006             VARCHAR2(30),                              /*չλ��           */   
   SERIO007             INTEGER,                                   /*¥��ID           */
   SERIO008             VARCHAR2(10),                              /*¥�����         */
   SERIO009             VARCHAR2(30),                              /*¥������         */   
   SERIO010             INTEGER,                                   /*��ͬID           */ 
   SERIO011             VARCHAR2(30),                              /*��ͬ��           */      
   SERIO012             INTEGER,                                   /*ϵ��ID           */
   SERIO013             VARCHAR2(30),                              /*ϵ�д���          */
   SERIO014             VARCHAR2(30),                              /*ϵ������         */
   SERIO015             INTEGER,                                   /*¥��ID           */  
   SERIO016             VARCHAR2(10),                              /*¥������           */  
   SERIO017             VARCHAR2(30),                              /*¥������           */    
   SERIO018             VARCHAR2(30),                              /*��ϵ�绰         */ 
   SERIO019             VARCHAR2(1),                               /*��Ӫ��ʽ         */ 
   SERIO020             VARCHAR2(1),                               /*���ǩ����       */  
   SERIO021             VARCHAR2(1),                               /*�۸�����         */  
   SERIO022             INTEGER,                                   /*��ƷID           */ 
   SERIO023             VARCHAR2(80),                              /*��Ʒ����         */ 
   SERIO024             VARCHAR2(80),                              /*�ͺ�             */     
   SERIO025             VARCHAR2(80),                              /*���             */ 
   SERIO026             VARCHAR2(2),                               /*���λ         */  
   SERIO027             VARCHAR2(60),                              /*����/����           */  
   SERIO028             VARCHAR2(60),                              /*����             */   
   SERIO029             VARCHAR2(60),                              /*����             */ 
   SERIO030             INTEGER,                                   /*��Ʒ����ID           */ 
   SERIO031             INTEGER,                                   /*��λID           */  
   SERIO032             INTEGER,                                   /*�ȼ�ID           */  
   SERIO033             NUMBER(22),                                /*��ǩ��ӡ����           */  
   SERIO034             NUMBER(22,2),                              /*�ۼ�              */  
   SERIO035             INTEGER,                                   /*�Զ������1           */  
   SERIO036             INTEGER,                                   /*�Զ������2           */  
   SERIO037             INTEGER,                                   /*�Զ������3           */  
   SERIO038             INTEGER,                                   /*�Զ������4           */  
   SERIO039             INTEGER,                                   /*�Զ������5           */  
   SERIO040             INTEGER,                                   /*�Զ������6           */  
   SERIO041             INTEGER,                                   /*�Զ������7           */  
   SERIO042             INTEGER,                                   /*�Զ������8           */  
   SERIO043             VARCHAR2(20),                              /*���Ա              */  
   SERIO044             NUMBER(22,2),                              /*ԭ�ۼ�              */   
   SERIO045             DATE,                                      /*���ۿ�ʼ����        */   
   SERIO046             DATE,                                      /*���۽�������        */  
   SERIO047             VARCHAR2(1),                               /*���� 1.��ǩ���룬2.�������룬3.�������� 4.�ٴδ�ӡ  */   
   SERIO048             INTEGER                         not null,  /*�̳�ID             */         
   SERIO049             VARCHAR2(80),                              /*�ȼ�����             */   
   SERIO050             VARCHAR2(80),                              /*����                 */   
   SERIO051             VARCHAR2(255),                             /*����ԭ��             */  
   SERIO052             VARCHAR2(255),                             /*��Ҫ����             */ 
   SERIO053             VARCHAR2(255),                             /*��ɫ                */ 
   SERIO054             VARCHAR2(2),                               /*��Ʒ����            */  
   SERIO055             DATE,                                      /*�����ӡ����        */ 
   SERIO056             DATE,                                      /*��ӡ����            */         
   SERIO057             VARCHAR2(1),                               /*��ӡ״̬:1������ӡ��2���Ѵ�ӡ��3���ܾ�           */ 
   SERIO058             VARCHAR2(255),                             /*�������            */                                 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIO primary key (SERIO_ID)
);
create unique index AK_TB_SERIO on TB_SERIO (SERIO001,SERIO056,SERIO058,FLAG); 
create sequence SEQ_TB_SERIO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIO to public;
grant index  on TB_SERIO to public;
grant update on TB_SERIO to public; 
grant delete on TB_SERIO to public;  
grant insert on TB_SERIO to public; 
grant select on SEQ_TB_SERIO to public;   