/*
================================================================================
��ṹ����:TB_BILKB
��ṹ����:�ս�Ӧ�տ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILKB;
drop index AK_TB_BILKB;
drop table TB_BILKB;
create table TB_BILKB  (                                             
   BILKB_ID	        INTEGER                   not null,      /*�ս�Ӧ�տ��ID                 */         
   BILKB001	        DATE ,                                   /*�ս�����                       */         
   BILKB002	        INTEGER,                                 /*��ԴӪ����֯                   */         
   BILKB003	        VARCHAR2(1),                             /*�սᵥ������1�����۵� 2���˵�  */         
   BILKB004	        INTEGER,                                 /*��Դ����ID                     */         
   BILKB005	        INTEGER,                                 /*��Դ��ϸID                     */         
   BILKB006	        INTEGER,                                 /*ǩ�յ�ID                       */ 
   BILKB007	        INTEGER,                                 /*�ͻ�ID                         */ 
   BILKB008	        DATE ,                                   /*��������                       */ 
   BILKB009	        DATE ,                                   /*Ӧ������                       */         
   BILKB010	        VARCHAR2(1),                             /*���㷽ʽ                       */         
   BILKB011	        INTEGER,                                 /*��Ʒ����      */         
   BILKB012	        INTEGER,                                 /*��λID        */                
   BILKB013	        NUMBER(18,3),                            /*����          */        
   BILKB014	        INTEGER,                                 /*˰��          */         
   BILKB015	        NUMBER(18,3),                            /*˰��          */                 
   BILKB016	        NUMBER(18,3),                            /*ԭ�Һ�˰���  */         
   BILKB017	        NUMBER(18,3),                            /*ԭ��δ˰���  */         
   BILKB018	        NUMBER(12,2),                            /*����          */   
   BILKB019	        NUMBER(12,2),                            /*�ۿ۽��      */  
   BILKB020         INTEGER,                                 /*Ʒ��ID             */ 
   BILKB021         VARCHAR2(30),                            /*Ӧ�յ���                 */     
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_BILKB primary key (BILKB_ID)                               
);                                                     
create sequence SEQ_TB_BILKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKB to public;                                     
grant index  on TB_BILKB to public;                                     
grant update on TB_BILKB to public;                                      
grant delete on TB_BILKB to public;                                       
grant insert on TB_BILKB to public;                                      
grant select on SEQ_TB_BILKB to public;                                        