/*
================================================================================
��ṹ����:TB_OTSAF
��ṹ����:����ת����ڱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTSAF;
drop index AK_TB_OTSAF;
drop table TB_OTSAF;
create table TB_OTSAF  (
   OTSAF_ID             INTEGER                         not null,  /*��ת��ID         */
   OTSAF001             VARCHAR2(8)                     not null,  /*�̳�����           */
   OTSAF002             DATE,                                      /*����               */
   OTSAF003             VARCHAR2(4),                               /*������           */   
   OTSAF004             VARCHAR2(2),                               /*����ڼ�           */ 
   OTSAF005             VARCHAR2(8),                               /*ת���̻�           */  
   OTSAF006             VARCHAR2(13),                              /*��ͬ����           */
   OTSAF007             VARCHAR2(30),                              /*�տ��           */ 
   OTSAF008             VARCHAR2(2),                               /*ҵ������           */
   OTSAF009             VARCHAR2(4),                               /*ת��������         */  
   OTSAF010             VARCHAR2(4),                               /*ת�������         */
   OTSAF011             NUMBER(22,2),                              /*���               */         
   OTSAF012             VARCHAR2(1),                               /*������ʶ           */
   OTSAF013             VARCHAR2(50),                              /*��ע               */
   OTSAF014             VARCHAR2(10),                              /*Ʊ��/�վݺ�        */  
   OTSAF015             VARCHAR2(4),                               /*������           */
   OTSAF016             INTEGER,                                   /*�����տ���ID       */ 
   OTSAF017             INTEGER,                                   /*�����տ���ID       */   
   OTSAF018             VARCHAR2(20),                              /*��˾����           */  
   OTSAF019             VARCHAR2(20),                              /*ó�׹�˾����       */     
   OTSAF020             VARCHAR2(8),                               /*ת���̻�           */           
   accountNO            VARCHAR2(10),                              /*ƾ֤���           */
   status               VARCHAR2(1),                               /*״̬��ʶ           */
   msg                  VARCHAR2(255),                             /*��Ϣ               */  
   tran_code		        VARCHAR2(50),				                       /*������ˮ��         */
   tran_row		          VARCHAR2(50),				                       /*����Ŀ��           */
   send_counts		      INTEGER,				                           /*���ʹ��� Ĭ�� 0    */
   REAL_DATE            DATE,                                      /*�������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTSAF primary key (OTSAF_ID)
);
create unique index AK_TB_OTSAF on TB_OTSAF (OTSAF016,OTSAF017);
create sequence SEQ_TB_OTSAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAF to public;
grant index  on TB_OTSAF to public;
grant update on TB_OTSAF to public; 
grant delete on TB_OTSAF to public;  
grant insert on TB_OTSAF to public; 
grant select on SEQ_TB_OTSAF to public;   