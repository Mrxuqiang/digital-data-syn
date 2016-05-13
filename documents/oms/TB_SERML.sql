/*
================================================================================
��ṹ����:TB_SERML
��ṹ����:������Ϣά��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERML;
drop index AK_TB_SERML;
drop table TB_SERML;
create table TB_SERML  (                                       
   SERML_ID           INTEGER                 not null,            /*����id    */   
   SERML001           INTEGER                 not null,            /*�̳�id    */   
   SERML002           INTEGER                 not null,            /*Ʒ��id    */  
   SERML003           INTEGER                 not null,            /*�̻�id    */ 
   SERML004           INTEGER                 not null,            /*չλid    */ 
   SERML005           INTEGER,                                     /*��ͬid    */            
   SERML006           DATE,                                        /*��������  */
   SERML007           VARCHAR2(100),                               /*����λ��  */
   SERML008           VARCHAR2(100),                               /*��ͷ      */
   SERML009           INTEGER,                                     /*¥��id    */
   SERML010           VARCHAR2(255),                               /*��ע      */              
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERML primary key (SERML_ID)                               
);                                           
create unique index AK_TB_SERML on TB_SERML (SERML001,SERML002,SERML003,SERML004,FLAG);               
create sequence SEQ_TB_SERML minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERML to public;                                     
grant index  on TB_SERML to public;                                     
grant update on TB_SERML to public;                                      
grant delete on TB_SERML to public;                                       
grant insert on TB_SERML to public;                                      
grant select on SEQ_TB_SERML to public;                                        