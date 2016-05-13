/*
20130912 add by gaoxl for ���ǣ�����Ѳ����
*/
/*
================================================================================
��ṹ����:TB_SERIF
��ṹ����:Ѳ��Υ��۷ֵ��ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIF;
drop index AK_TB_SERIF;
drop table TB_SERIF;
create table TB_SERIF  (                                       
   SERIF_ID           INTEGER                 not null,            /*Ѳ��Υ��۷ֵ���ID */   
   SERIF001           INTEGER                 not null,            /*Ѳ��Υ��۷ֵ���ID */   
   SERIF002           INTEGER                 not null ,           /*�̻�ID             */   
   SERIF003           INTEGER,                                     /*չλID             */   
   SERIF004           INTEGER ,                                    /*��ͬID             */   
   SERIF005           INTEGER,                                     /*Ʒ��ID             */   
   SERIF006           INTEGER,                                     /*Ѳ����ĿID         */ 
   SERIF007           VARCHAR2(1),                                 /*�Ƿ�۷���         */    
   SERIF008           NUMBER(2),                                   /*�ۼ�����           */    
   SERIF009           VARCHAR2(255),                               /*�۷�˵��           */
   SERIF010           VARCHAR2(255),                               /*��ע               */
   SERIF011           VARCHAR2(1),                                 /*Ѳ����           */   
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERIF primary key (SERIF_ID)                               
); 
create unique index AK_TB_SERIF on TB_SERIF (SERIF001,SERIF002,SERIF003,SERIF004,SERIF005,SERIF006,FLAG);                                                           
create sequence SEQ_TB_SERIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIF to public;                                     
grant index  on TB_SERIF to public;                                     
grant update on TB_SERIF to public;                                      
grant delete on TB_SERIF to public;                                       
grant insert on TB_SERIF to public;                                      
grant select on SEQ_TB_SERIF to public;                                        