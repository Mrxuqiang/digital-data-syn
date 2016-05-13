\/*
================================================================================
��ṹ����:TB_INVCB
��ṹ����:���絥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVCB;
drop index AK_TB_INVCB;
drop table TB_INVCB;
create table TB_INVCB  (                                       
   INVCB_ID         INTEGER                      not null,             /*������ϸID    */           
   INVCB001         INTEGER                      not null,             /*���絥ID      */                
   INVCB002         INTEGER                      not null,             /*��Ʒ����      */           
   INVCB003         INTEGER,                                           /*ά��1         */           
   INVCB004         INTEGER,                                           /*ά��2         */           
   INVCB005         INTEGER,                                           /*ά��3         */           
   INVCB006         INTEGER,                                           /*ά��4         */           
   INVCB007         INTEGER,                                           /*ά��5         */                              
   INVCB008         INTEGER                      not null,             /*��λ          */           
   INVCB009         NUMBER(18,3)                 not null,             /*��λ������    */           
   INVCB010         NUMBER(18,3)                 not null,             /*������        */           
   INVCB011         NUMBER(12,2)                 not null,             /*˰ǰ����      */           
   INVCB012         NUMBER(12,2)                 not null,             /*��˰����      */           
   INVCB013         INTEGER                      not null,             /*˰��          */           
   INVCB014         NUMBER(12,2)                 not null,             /*˰��          */           
   INVCB015         NUMBER(12,2)                 not null,             /*˰ǰ���      */           
   INVCB016         NUMBER(12,2)                 not null,             /*��˰���      */                    
   INVCB017         VARCHAR2(1),                 not null,             /*��Ʒ��������*/
   INVCB018         VARCHAR2(1),                 not null,             /*��������*/
   INVCB019         VARCHAR2(30)            ,                          /*���׼���Ӧ�����*/
   INVCB020         VARCHAR2(1),                                       /*�Ƿ���װƷ      */
   INVCB021         VARCHAR2(1),                                       /*�Ƿ�ɷ�        */
   INVCB022         INTEGER            ,                               /*����ƷID           */
   INVCB023         INTEGER            ,                               /*����        */
   INVCB024         VARCHAR2(255)                                      /*��ע          */         
   INVCB025         INTEGER,                                           /*��Ӧ��ID */ 20110215 add by xiechun 
   CREATE_USER      VARCHAR2(12),                            /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                            /*������Ա����       */             
   CREATE_DATE      DATE,                                    /*��������           */             
   MODIFIER         VARCHAR2(12),                            /*�޸���Ա           */             
   MODI_DATE        DATE,                                    /*�޸�����           */             
   FLAG             NUMBER(1),                               /*����״̬           */            


  constraint PK_TB_INVCB primary key (INVCB_ID)                               
);                                                         
create sequence SEQ_TB_INVCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVCB to public;                                     
grant index  on TB_INVCB to public;                                     
grant update on TB_INVCB to public;                                      
grant delete on TB_INVCB to public;                                       
grant insert on TB_INVCB to public;                                      
grant select on SEQ_TB_INVCB to public;                                        