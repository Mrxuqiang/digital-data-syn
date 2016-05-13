/*
================================================================================
��ṹ����:TB_OTSAD
��ṹ����:������տ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTSAD;
drop index AK_TB_OTSAD;
drop table TB_OTSAD;
create table TB_OTSAD  (
   OTSAD_ID             INTEGER                         not null,  /*�����տ�ID        */
   OTSAD001             VARCHAR2(8)                     not null,  /*�̳�����           */
   OTSAD002             DATE,                                      /*����               */
   OTSAD003             VARCHAR2(4),                               /*Ԥ�����           */   
   OTSAD004             VARCHAR2(2),                               /*Ԥ���·�           */ 
   OTSAD005             VARCHAR2(8),                               /*�ͻ�����           */  
   OTSAD006             VARCHAR2(13),                              /*��ͬ����           */
   OTSAD007             VARCHAR2(30),                              /*�տ��           */ 
   OTSAD008             VARCHAR2(2),                               /*ҵ������           */
   OTSAD009             VARCHAR2(4),                               /*�ո��ʽ         */  
   OTSAD010             VARCHAR2(4),                               /*���������         */
   OTSAD011             NUMBER(22,2),                              /*���               */         
   OTSAD012             VARCHAR2(1),                               /*������ʶ           */
   OTSAD013             VARCHAR2(50),                              /*��ע               */
   OTSAD014             VARCHAR2(10),                              /*Ʊ��/�վݺ�        */  
   OTSAD015             VARCHAR2(4),                               /*������           */
   OTSAD016             INTEGER,                                   /*�����տ���ID       */ 
   OTSAD017             INTEGER,                                   /*�����տ���ID       */ 
   OTSAD018             VARCHAR2(4),                               /*��˾����           */ 
   OTSAD019             VARCHAR2(4),                               /*ó�׹�˾����       */   
   OTSAD020             VARCHAR2(50),                              /*�տ���             */  
   OTSAD021             DATE,                                      /*�տ�����           */          
   accountNO            VARCHAR2(10),                              /*ƾ֤���           */
   status               VARCHAR2(1),                               /*״̬��ʶ           */
   msg                  VARCHAR2(255),                             /*��Ϣ               */  
   tran_code		        VARCHAR2(50),				                       /*������ˮ��         */
   tran_row		          VARCHAR2(50),				                       /*����Ŀ��           */
   send_counts		      INTEGER,				                           /*���ʹ��� Ĭ�� 0    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTSAD primary key (OTSAD_ID)
);
create unique index AK_TB_OTSAD on TB_OTSAD (OTSAD001,OTSAD002,OTSAD003,OTSAD004,OTSAD005,OTSAD006);
create sequence SEQ_TB_OTSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAD to public;
grant index  on TB_OTSAD to public;
grant update on TB_OTSAD to public; 
grant delete on TB_OTSAD to public;  
grant insert on TB_OTSAD to public; 
grant select on SEQ_TB_OTSAD to public;   