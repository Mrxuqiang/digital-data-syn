/*
================================================================================
��ṹ����:TB_PURLB
��ṹ����:�ջ�����Ʒ��ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/
1����ͷ����������Դ���� 2������������Ʒ״̬
drop sequence SEQ_TB_PURLB;
drop index AK_TB_PURLB;
drop table TB_PURLB;
create table TB_PURLB (
   PURLB_ID            INTEGER                not null,            /*�ջ�����Ʒ��ϸ��ID   */        
   PURLB001            INTEGER                not null,            /*�ջ�������ID        */ 
   PURLB002            INTEGER                 ,                   /*�ջ�֪ͨ����ϸID    */        
   PURLB003            VARCHAR2(1)            not null,            /*�ջ�״̬            */ --1.��ȫ�ջ�2.�����ջ�3.�쳣�ջ�       
   PURLB004            VARCHAR2(1)            not null,            /*��Ʒ��������        */        
   PURLB005            VARCHAR2(1)            not null,            /* ��������           */       
   PURLB006            INTEGER                not null,            /*��ƷID              */        
   PURLB007            INTEGER,                                    /*ά��1               */        
   PURLB008            INTEGER,                                    /*ά��2               */   
   PURLB009            INTEGER,                                    /*ά��3               */        
   PURLB010            INTEGER,                                    /*ά��4               */                               
   PURLB011            INTEGER,                                    /*ά��5               */        
   PURLB012            NUMBER(18,2)           not null,            /*Ӧ������            */  
   PURLB013            NUMBER(18,2),                               /*ʵ������            */       
   PURLB014            NUMBER(12,2),                               /*�ۿ���              */
   PURLB015            NUMBER(12,2),                               /*����                */
   PURLB016            INTEGER                    not null,        /*˰��                */
   PURLB017            NUMBER(18,3),                               /*������              */         
   PURLB018            NUMBER(12,2)               not null,        /*˰��                */ 
   PURLB019            NUMBER(12,2),                               /*˰ǰ����            */        
   PURLB020            NUMBER(12,2),                               /*��˰����            */
   PURLB021            NUMBER(12,2),                               /*˰ǰ���            */        
   PURLB022            NUMBER(12,2),                               /*��˰���            */ 
   PURLB023            VARCHAR2(1),                                /*�Ƿ���װƷ          */
   PURLB024            VARCHAR2(1),                                /*�Ƿ�ɷ�            */
   PURLB025            INTEGER,                                    /*����ƷID            */
   PURLB026            INTEGER,                                    /*����                */
   PURLB027            VARCHAR2(30),                               /*���׼���Ӧ��ϵ�����*/
   PURLB028            VARCHAR2(255),                              /*��ע                */
   PURLB029            INTEGER,                                    /*�ջ�֪ͨ����ID      */
   PURLB030            VARCHAR2(40),                               /*����                */  --20110721 add by xiechun
   PURLB031            VARCHAR2(255),                              /*��ע1                */ --20110721 add by xiechun
   PURLB032            VARCHAR2(255),                              /*��ע2                */ --20110721 add by xiechun
   PURLB033            VARCHAR2(255),                              /*��ע3                */ --20110721 add by xiechun
   CREATE_USER         VARCHAR2(12),                               /*������Ա            */
   USER_GROUP          VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE         DATE,                                       /*��������            */
   MODIFIER            VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE           DATE,                                       /*�޸�����            */
   FLAG                NUMBER,                                     /*����״̬            */
   constraint PK_TB_PURLB primary key (PURLB_ID)
);
create unique index AK_TB_PURLB on TB_PURLB (PURLB_ID,PURLB001,PURLB006,FLAG);
create sequence SEQ_TB_PURLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURLB to public;
grant index  on TB_PURLB to public;
grant update on TB_PURLB to public; 
grant delete on TB_PURLB to public;  
grant insert on TB_PURLB to public; 
grant select on SEQ_TB_PURLB to public;   