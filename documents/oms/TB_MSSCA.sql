/*
================================================================================
��ṹ����:TB_MSSCA
��ṹ����:������Ʒ��Ϣ
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSCA;
drop index AK_TB_MSSCA;
drop table TB_MSSCA;
create table TB_MSSCA  (
   MSSCA_ID             INTEGER                         not null,  /*��ǩID        */
   MSSCA001             INTEGER                         not null,  /*������ID        */
   MSSCA002             INTEGER,                                   /*Ʒ����ID      */
   MSSCA003             Date,                                      /*��������      */
   MSSCA004             VARCHAR2(1),                               /*���״̬    N Y   */ 
   MSSCA005             INTEGER,                                   /*¼��ԱID      */  
   MSSCA006             INTEGER,                                   /*�Զ������1(������) ��һ��          */  
   MSSCA007             INTEGER,                                   /*�Զ������2(����) (��)           */  
   MSSCA008             INTEGER,                                   /*�Զ������3(�����) �������          */  
   MSSCA009             INTEGER,                                   /*�Զ������4(������) ���ģ�        */  
   MSSCA010             INTEGER,                                   /*�Զ������5(��Ʒ������)           */  
   MSSCA011             INTEGER,                                   /*�Զ������6 �ռ���           */  
   MSSCA012             INTEGER,                                   /*�Զ������7           */ 
   MSSCA013             INTEGER,                                   /*�Զ������8          */ 
   MSSCA014             VARCHAR2(100)                    not null, /*Ʒ��         */ 
   MSSCA015             VARCHAR2(80),                              /*�ͺ�         */ 
   MSSCA016             VARCHAR2(80),                              /*���         */     
   MSSCA017             Integer,                                   /*�Ƽ۵�λ         */    
   MSSCA018            NUMBER(12,2),                               /*����ָ����        */  
   MSSCA019             Integer,                                   /*���λ          */   
   MSSCA020             VARCHAR2(60),                              /*�ȼ�           */ 
   MSSCA021             VARCHAR2(100),                             /*����           */    
   MSSCA022             VARCHAR2(100),                             /*����           */  
   MSSCA023             VARCHAR2(100),                             /*����           */  
   MSSCA024             VARCHAR2(100),                             /*��Ҫ����           */  
   MSSCA025             VARCHAR2(100),                             /*��ɫ          */   
   MSSCA026             VARCHAR2(1000),                            /*��ע           */ 
   MSSCA027             Date,                                      /*�������      */
   MSSCA028             Integer,                                    /*�����     */
   MSSCA029             Integer,                                    /*Ӫ����֯ID     */
   MSSCA030             Integer,                                    /*ϵ��ID     */
   MSSCA031             varchar2(20),                               /*��Ʒ����     */
   MSSCA032             varchar2(30),                               /*����     */
   MSSCA033             Number(4),                                  /*�汾��     */
   MSSCA034             Integer,                                    /*����Excel ID     */
   MSSCA035             varchar2(2),                                /*�Ƿ�Ϊ�Ҿ�     */
   MSSCA036             varchar2(1),                                /*tb_msscc��������ʶ     */
   await_appr_group     VARCHAR2(30),                               /*��������ɫ               */
   await_appr_user      VARCHAR2(30),                               /*�������û�               */
   approved_group       VARCHAR2(30),                               /*��������ɫ               */
   approved_user        VARCHAR2(30) ,                              /*�������û�               */
   appr_status          VARCHAR2(2),                                /*����״̬ 0���ޣ�1���ѷ���������;19.����������� 9����������*/ --0.δ����(�ݸ�)��1.��أ��������ϸ� 2.������ 9.��������
   start_appr_group     VARCHAR2(30),                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30),                               /*���������û�               */ 
   appr_memo            VARCHAR2(255),                             /*������ע*/                                                
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_MSSCA primary key (MSSCA_ID)
);
create unique index AK_TB_MSSCA on TB_MSSCA(MSSCA031,MSSCA032,FLAG);
create sequence SEQ_TB_MSSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCA to public;
grant index  on TB_MSSCA to public;
grant update on TB_MSSCA to public; 
grant delete on TB_MSSCA to public;  
grant insert on TB_MSSCA to public;  
grant select on SEQ_TB_MSSCA to public;   
