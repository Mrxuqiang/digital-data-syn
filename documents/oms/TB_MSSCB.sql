/*
================================================================================
��ṹ����:TB_MSSCB
��ṹ����:������Ʒ��Ϣ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSCB;
drop index AK_TB_MSSCB;
drop table TB_MSSCB;
create table TB_MSSCB  (
   MSSCB_ID             INTEGER                         not null,  /*���ID        */
   MSSCB001             INTEGER                         not null,  /*������ID        */
   MSSCB002            INTEGER,                                   /*Ʒ����ID      */
   MSSCB003             Date,                                      /*��������      */
   MSSCB004             VARCHAR2(1),                               /*���״̬       */ 
   MSSCB005             INTEGER,                                   /*¼��ԱID      */  
   MSSCB006             INTEGER,                                   /*�Զ������1(������) ��һ��          */  
   MSSCB007             INTEGER,                                   /*�Զ������2(����) (��)           */  
   MSSCB008             INTEGER,                                   /*�Զ������3(�����) �������          */  
   MSSCB009             INTEGER,                                   /*�Զ������4(������) ���ģ�        */  
   MSSCB010             INTEGER,                                   /*�Զ������5(��Ʒ������)           */  
   MSSCB011             INTEGER,                                   /*�Զ������6 �ռ���           */  
   MSSCB012             INTEGER,                                   /*�Զ������7           */ 
   MSSCB013             INTEGER,                                   /*�Զ������8          */ 
   MSSCB014             VARCHAR2(100)                    not null, /*Ʒ��         */ 
   MSSCB015             VARCHAR2(80),                              /*�ͺ�         */ 
   MSSCB016             VARCHAR2(80),                              /*���         */     
   MSSCB017             Integer,                                   /*�Ƽ۵�λ         */    
   MSSCB018             number(9,2),                               /*����ָ����        */  
   MSSCB019             Integer,                                   /*���λ          */   
   MSSCB020             VARCHAR2(60),                              /*�ȼ�           */ 
   MSSCB021             VARCHAR2(100),                             /*����           */    
   MSSCB022             VARCHAR2(100),                             /*����           */  
   MSSCB023             VARCHAR2(100),                             /*����           */  
   MSSCB024             VARCHAR2(100),                             /*��Ҫ����           */  
   MSSCB025             VARCHAR2(100),                             /*��ɫ          */   
   MSSCB026             VARCHAR2(1000),                            /*��ע           */ 
   MSSCB027             Date,                                      /*�������      */
   MSSCB028             Integer,                                    /*�����     */
   MSSCB029             Integer,                                    /*Ӫ����֯ID     */
   MSSCB030             Integer,                                    /*ϵ��ID     */    
   MSSCB031             varchar2(20) not null,                               /*��Ʒ����     */
   MSSCB032             varchar2(30) not null,                               /*����     */
   MSSCB033             Number(4),                                  /*�汾��     */
   MSSCB091             INTEGER                        ,   /*����ID        */
   MSSCB092             varchar2(30)                   ,   /*�������        */
   MSSCB093             integer,                                    /*������ƷID(tb_mssca)     */
   MSSCB094             integer,                                    /*������ID(tb_msscc)     */
   await_appr_group     VARCHAR2(30),                               /*��������ɫ               */
   await_appr_user      VARCHAR2(30),                               /*�������û�               */
   approved_group       VARCHAR2(30),                               /*��������ɫ               */
   approved_user        VARCHAR2(30) ,                              /*�������û�               */
   appr_status          VARCHAR2(1),                                /*����״̬ 0���ޣ�1���ѷ���������; 9����������*/ --0.δ����(�ݸ�)��1.��أ��������ϸ� 2.������ 9.��������
   start_appr_group     VARCHAR2(30),                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30),                               /*���������û�               */ 
   appr_memo            VARCHAR2(255),                             /*������ע*/                                                
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_MSSCB primary key (MSSCB_ID)
);
create unique index AK_TB_MSSCB on TB_MSSCB(MSSCB031,MSSCB032,MSSCB033,MSSCB035,FLAG);
create sequence SEQ_TB_MSSCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCB to public;
grant index  on TB_MSSCB to public;
grant update on TB_MSSCB to public; 
grant delete on TB_MSSCB to public;  
grant insert on TB_MSSCB to public;  
grant select on SEQ_TB_MSSCB to public;   
