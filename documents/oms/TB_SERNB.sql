/*20141010 CREATE BY SUNDAN 
================================================================================
��ṹ����:TB_SERNB
��ṹ����:�������ֽ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERNB;
drop index AK_TB_SERNB;
drop table TB_SERNB;
create table TB_SERNB  (                                       
   SERNB_ID           INTEGER                 not null,            /*�������ֽ��ӱ�ID    */   
   SERNB001           INTEGER		      not null,            /*�������ֽ�����ID    */ 
   SERNB002           INTEGER                 not null,            /*Ӫ����֯ID            */
   SERNB003           NUMBER(10),				   /*Ʒ��ϵ�л���          */
   SERNB004           NUMBER(3) ,                                  /*��������%��         */
   SERNB005           INTEGER,                                     /*����ID                */ 
   SERNB006           INTEGER,                                     /*С��ID                */ 
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERNB primary key (SERNB_ID)                               
);                                           
create unique index AK_TB_SERNB on TB_SERNB (SERNB001,SERNB002,FLAG);               
create sequence SEQ_TB_SERNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERNB to public;                                     
grant index  on TB_SERNB to public;                                     
grant update on TB_SERNB to public;                                      
grant delete on TB_SERNB to public;                                       
grant insert on TB_SERNB to public;                                      
grant select on SEQ_TB_SERNB to public;                                        