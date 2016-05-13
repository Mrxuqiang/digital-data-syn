/*
================================================================================
��ṹ����:TB_OTSAE
��ṹ����:�����˿�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTSAE;
drop index AK_TB_OTSAE;
drop table TB_OTSAE;
create table TB_OTSAE  (
   OTSAE_ID             INTEGER                         not null,  /*�����˿�ID        */
   OTSAE001             VARCHAR2(8)                     not null,  /*�̳�����           */
   OTSAE002             DATE,                                      /*����               */
   OTSAE003             VARCHAR2(4),                               /*Ԥ�����           */   
   OTSAE004             VARCHAR2(2),                               /*Ԥ���·�           */ 
   OTSAE005             VARCHAR2(8),                               /*�ͻ�����           */  
   OTSAE006             VARCHAR2(30),                              /*��ͬ����           */
   OTSAE007             VARCHAR2(30),                              /*�˿��           */ 
   OTSAE008             VARCHAR2(2),                               /*ҵ������           */
   OTSAE009             VARCHAR2(4),                               /*�ո��ʽ         */  
   OTSAE010             VARCHAR2(4),                               /*���������         */
   OTSAE011             NUMBER(22,2),                              /*���               */         
   OTSAE012             VARCHAR2(1),                               /*������ʶ           */
   OTSAE013             VARCHAR2(50),                              /*��ע               */
   OTSAE014             VARCHAR2(10),                              /*Ʊ��/�վݺ�        */  
   OTSAE015             VARCHAR2(4),                               /*������           */
   OTSAE016             VARCHAR2(30),                              /*��������           */  
   OTSAE017             VARCHAR2(30),                              /*�˻�               */ 
   OTSAE018             VARCHAR2(30),                              /*����               */         
   OTSAE019             INTEGER,                                   /*�����˿���ID       */ 
   OTSAE020             INTEGER,                                   /*�����˿���ID       */     
   accountNO            VARCHAR2(10),                              /*ƾ֤���           */
   status               VARCHAR2(1),                               /*״̬��ʶ           */
   msg                  VARCHAR2(255),                             /*��Ϣ               */  
   tran_code		VARCHAR2(50),				   /*������ˮ��*/
   tran_row		VARCHAR2(50),				   /*����Ŀ��*/
   send_counts		INTEGER,				   /*���ʹ��� Ĭ�� 0*/   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTSAE primary key (OTSAE_ID)
);
create unique index AK_TB_PUBKC on TB_PUBKC (OTSAE001,OTSAE002,OTSAE003,OTSAE004,OTSAE005,OTSAE006);
create sequence SEQ_TB_OTSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAE to public;
grant index  on TB_OTSAE to public;
grant update on TB_OTSAE to public; 
grant delete on TB_OTSAE to public;  
grant insert on TB_OTSAE to public; 
grant select on SEQ_TB_OTSAE to public;   