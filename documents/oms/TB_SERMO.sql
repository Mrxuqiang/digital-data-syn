20141106 CREATE BY SUNDAN
20141111 modi by gaoxl �޸�Ψһ���� create unique index AK_TB_SERMO on TB_SERMO (SERMO_ID)
20141205 mod by gaoxl for  ���õȼ�SERMO009 VARCHAR2(10)�޸�Ϊ INTEGER ��add SERMO018��SERMO019                               
/*
================================================================================
��ṹ����:TB_SERMO
��ṹ����:�̻����õȼ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERMO;
drop index AK_TB_SERMO;
drop table TB_SERMO;
create table TB_SERMO  (                                       
   SERMO_ID           INTEGER                 not null,            /*�̻����õȼ�ID  */   
   SERMO001           INTEGER                 not null,            /*�̻�ID          */   
   SERMO002           INTEGER                 not null,            /*չ��ID          */   
   SERMO003           INTEGER,                                     /*Ʒ��id          */  
   SERMO004           INTEGER,                                     /*¥��id          */ 
   SERMO005           INTEGER,                                     /*Ʒ��id          */   
   SERMO006           VARCHAR2(30),                                /*���ƺ�          */
   SERMO007           VARCHAR2(4),                                 /*���            */
   SERMO008           VARCHAR2(4),                                 /*����            */
   SERMO009           INTEGER,                                     /*���õȼ�        */
   SERMO010           INTEGER,                                     /*ժ�Ǵ���        */
   SERMO011           INTEGER,                                     /*���Ǵ���        */
   SERMO012           NUMBER(12,2),                                /*�˿�ϲ����      */
   SERMO013           NUMBER(12,2),                                /*�ۺ����        */
   SERMO014           NUMBER(12,2),                                /*��Ʒ�۸�        */
   SERMO015           NUMBER(12,2),                                /*��������        */
   SERMO016           NUMBER(12,2),                                /*�ۺϹ���        */
   SERMO017           INTEGER,                                     /*�̳�id          */ 
   SERMO018           NUMBER(12),                                  /*��Ʒ�����÷�    */   
   SERMO019           NUMBER(12),                                  /*�ͻ�����÷�    */     
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMO primary key (SERMO_ID)                               
);                                           
create unique index AK_TB_SERMO on TB_SERMO (SERMO017,SERMO001,SERMO002,SERMO007,SERMO008,SERMO003,SERMO005,flag);               
create sequence SEQ_TB_SERMO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMO to public;                                     
grant index  on TB_SERMO to public;                                     
grant update on TB_SERMO to public;                                      
grant delete on TB_SERMO to public;                                       
grant insert on TB_SERMO to public;                                      
grant select on SEQ_TB_SERMO to public;                                        