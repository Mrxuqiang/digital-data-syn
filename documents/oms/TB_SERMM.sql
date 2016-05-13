/*
20141107 add by wangww for ����
*/


/*
================================================================================
��ṹ����:TB_SERMM
��ṹ����:�̻�������Ϣά����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMM;
drop index AK_TB_SERMM;
drop table TB_SERMM;
create table TB_SERMM  (                                       
   SERMM_ID           INTEGER                not null,             /*�̻�������Ϣά��id     */   
   SERMM001           INTEGER                not null,             /*�̳�ID            */   
   SERMM002           VARCHAR2(4)                                  /*���              */   
   SERMM003           VARCHAR2(2),                                 /*�·�              */   
   SERMM004           INTEGER ,                                    /*�̻�ID            */   
   SERMM005           INTEGER,                                     /*չλID            */ 
   SERMM006           INTEGER,                                     /*Ʒ��ID            */ 
   SERMM007           VARCHAR2(255),                               /*���ƺ�            */
   SERMM008           INTEGER,                                     /*�۷���ĿID        */ 
   SERMM009           VARCHAR2(4),                                 /*�۷���Ŀ����      */ 
   SERMM010           VARCHAR2(60)                                 /*�۷���Ŀ����      */ 
   SERMM011           VARCHAR2(1),                                 /*�۷�����          */ 1��һƱ��� 2������ָ�� 3������ָ��
   SERMM012           VARCHAR2(1),                                 /*�۷�γ��          */ 
   SERMM013           VARCHAR2(1),                                 /*�۷���Ϊ          */    
   SERMM014           VARCHAR2(1),                                 /*�۷���Դ          */1��Seri020  2��seri100
   SERMM015           NUMBER(2),                                   /*�ۼ�����          */
   SERMM016           INTEGER,                                     /*Ʒ��ID            */
   SERMM017           INTEGER,                                     /*¥��ID            */
   SERMM018           INTEGER,                                     /*��ͬID            */
   SERMM019           VARCHAR2(255),                               /*��ע              */
   SERMM020           INTEGER,                                     /*�۷���ΪID        */ 20141205 add by gaoxl
   SERMM021           VARCHAR2(1),                                 /*������Դ1���ֹ�¼�룻2��ϵͳ����  */ 20141205 add by gaoxl     
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMM primary key (SERMM_ID)                               
);                                           
create unique index AK_TB_SERMM on TB_SERMM (SERMM_ID,FLAG);               
create sequence SEQ_TB_SERMM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMM to public;                                     
grant index  on TB_SERMM to public;                                     
grant update on TB_SERMM to public;                                      
grant delete on TB_SERMM to public;                                       
grant insert on TB_SERMM to public;                                      
grant select on SEQ_TB_SERMM to public;       