20140717 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_OTMEE
��ṹ����:��Ʒ��Ϣ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTMEE;
drop index AK_TB_OTMEE;
drop table TB_OTMEE;
create table TB_OTMEE  (
   OTMEE_ID             INTEGER                         not null,  /*��Ʒ��ϢID             */
   OTMEE001             VARCHAR2(1)                     not null,  /*��ǩ����  1.������ǩ 2.���۵��� 3.���۵���         */
   OTMEE002             INTEGER				                  not null,  /*��ǩID           */
   OTMEE003             INTEGER                         not null,  /*��ͬID               */
   OTMEE004             VARCHAR2(30)                    not null,  /*��ͬ��               */   
   OTMEE005             VARCHAR2(10)			              not null,  /*Ʒ�Ʊ���               */
   OTMEE006             VARCHAR2(80)                    not null,  /*Ʒ������                     */  
   OTMEE007             VARCHAR2(10)			              not null,  /*ϵ�б���                      */ 
   OTMEE008             VARCHAR2(80)                    not null,  /*ϵ������                      */ 
   OTMEE009             VARCHAR2(30)                    not null,  /*��Ʒ����                      */  
   OTMEE010             VARCHAR2(255)                    not null,  /*��Ʒ����                      */  
   OTMEE011             VARCHAR2(80),                              /*��Ʒ�ͺ�                      */ 
   OTMEE012             VARCHAR2(80),                              /*��Ʒ���                      */ 
   OTMEE013             VARCHAR2(2),				                       /*���λ����                  */     
   OTMEE014             VARCHAR2(100),				                       /*����/����                     */ 
   OTMEE015             VARCHAR2(60),				                       /*����                          */
   OTMEE016             VARCHAR2(60),                              /*����                          */   
   OTMEE017             VARCHAR2(20),				                       /*��λ����                      */
   OTMEE018             VARCHAR2(40),                              /*�ȼ�                          */  
   OTMEE019             VARCHAR2(30),				                       /*��������                      */ 
   OTMEE020             NUMBER(22,2),                              /*ԭ�ۼ�                        */ 
   OTMEE021             NUMBER(22,2),				                       /*����                          */  
   OTMEE022             Date,					                             /*���ۿ�ʼ����                  */  
   OTMEE023             Date,                                      /*���۽�������                  */ 
   OTMEE024             VARCHAR2(80),                              /*����                          */ 
   OTMEE025             VARCHAR2(255),				                     /*��Ҫ����                      */     
   OTMEE026             INTEGER,                                   /*�̻�ID                        */     
   STATUS               VARCHAR2(1),				                       /*����״̬   0��δ���� 1�����ͳɹ� 2������ʧ��      */   
   MSG                  VARCHAR2(255),                             /*��Ϣ��ʾ               */  
   Tran_date            Date,                                      /*��������               */  
   Send_count           INTEGER,                                   /*�������               */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTMEE primary key (OTMEE_ID)
);
create unique index AK_TB_OTMEE on TB_OTMEE (OTMEE002);
create sequence SEQ_TB_OTMEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMEE to public;
grant index  on TB_OTMEE to public;
grant update on TB_OTMEE to public; 
grant delete on TB_OTMEE to public;  
grant insert on TB_OTMEE to public; 
grant select on SEQ_TB_OTMEE to public;   