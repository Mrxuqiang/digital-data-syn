/*
================================================================================
��ṹ����:TB_WMSBD
��ṹ����:ά��֪ͨ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_WMSBD;
drop index AK_TB_WMSBD;
drop table TB_WMSBD;
create table TB_WMSBD  (
   WMSBD_ID         INTEGER                  not null,            /*ά��֪ͨ����ϸID       */      
   WMSBD001         INTEGER                  not null,            /*ά��֪ͨ��ID         */      
   WMSBD002         VARCHAR2(1)              not null,            /*��Ʒ��������     */    
   WMSBD003         VARCHAR2(1)              not null,            /*��������         */      
   WMSBD004         INTEGER                  not null,            /*��ƷID           */      
   WMSBD005         INTEGER,                                      /*ά��1            */      
   WMSBD006         INTEGER,                                      /*ά��2            */      
   WMSBD007         INTEGER,                                      /*ά��3            */      
   WMSBD008         INTEGER,                                      /*ά��4            */      
   WMSBD009         INTEGER,                                      /*ά��5            */      
   WMSBD010         VARCHAR2(255),                                /*ά��������       */     
   WMSBD011         INTEGER                  not null,            /*��λID           */      
   WMSBD012         NUMBER(18),                                   /*ά������         */      
   WMSBD013         NUMBER(18,3),                                 /*ά�޷���         */          
   WMSBD014         VARCHAR2(1),				  /*�Ƿ�ɷ�         */  
   WMSBD015         VARCHAR2(30),				  /*���׼���Ӧ��ϵ�����*/  
   WMSBD016         VARCHAR2(255),                                /*��ע             */  
   WMSBD017         INTEGER,                                      /*����ƷID         */ 
   WMSBD018         VARCHAR2(1),                                  /*�Ƿ���װƷ         */ 
   CREATE_USER            VARCHAR2(12),                           /*������Ա         */
   USER_GROUP             VARCHAR2(12),                           /*������Ա����     */                               
   CREATE_DATE            DATE,                                   /*��������         */
   MODIFIER               VARCHAR2(12),                           /*�޸���Ա         */
   MODI_DATE              DATE,                                   /*�޸�����         */
   FLAG                   NUMBER,                                 /*����״̬         */
   constraint PK_TB_WMSBD primary key (WMSBD_ID)
);
create sequence SEQ_TB_WMSBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBD to public;
grant index  on TB_WMSBD to public;
grant update on TB_WMSBD to public; 
grant delete on TB_WMSBD to public;  
grant insert on TB_WMSBD to public; 
grant select on SEQ_TB_WMSBD to public;   