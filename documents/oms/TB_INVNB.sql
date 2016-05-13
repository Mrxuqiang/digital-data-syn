/*
================================================================================
��ṹ����:TB_INVNB
��ṹ����:���ⵥ��ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_INVNB;
drop index AK_TB_INVNB;
drop table TB_INVNB;
create table TB_INVNB (
   INVNB_ID            INTEGER                not null,            /*���ⵥ��ϸ��ID      */        
   INVNB001            INTEGER                not null,            /*���ⵥ����ID        */            
   INVNB002            INTEGER                not null,            /*��ƷID              */        
   INVNB003            INTEGER,                                    /*ά��1               */        
   INVNB004            INTEGER,                                    /*ά��2               */   
   INVNB005            INTEGER,                                    /*ά��3               */        
   INVNB006            INTEGER,                                    /*ά��4               */                               
   INVNB007            INTEGER,                                    /*ά��5               */ 
   INVNB008            INTEGER                not null,            /*���ⵥλ            */ 
   INVNB009            NUMBER(18,2)           not null,            /*��������            */
   INVNB010	       NUMBER(12,2)	      not null,            /*��λ�ɱ�            */
   INVNB011	       NUMBER(12,2)	      not null,            /*�ɱ����            */
   INVNB012            INTEGER                not null,            /*�ֿ�                */
   INVNB013            INTEGER                not null,            /*��Ʒ����            */ 
   INVNB014            INTEGER                not null,            /*Ʒ��                */ 
   INVNB015            VARCHAR2(1)            not null,            /*��������            */
   INVNB016            VARCHAR2(1)            not null,            /*��Ʒ��������        */           
   INVNB017            VARCHAR2(255),                              /*��ע                */
   INVNB018            VARCHAR2(255),                              /*��ע1               */
   INVNB019            VARCHAR2(255),                              /*��ע2               */
   INVNB020            VARCHAR2(1),				   /*�Ƿ���װƷ          */
   INVNB021            VARCHAR2(1),				   /*�Ƿ�ɷ�            */
   INVNB022            INTEGER,					   /*����ƷID            */
   INVNB023            INTEGER,					   /*����                */
   INVNB024            VARCHAR2(30),				   /*���׼���Ӧ��ϵ�����*/
   INVNB025            INTEGER,                                    /*��Ʒϵ��            */ 
   CREATE_USER         VARCHAR2(12),                               /*������Ա            */
   USER_GROUP          VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE         DATE,                                       /*��������            */
   MODIFIER            VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE           DATE,                                       /*�޸�����            */
   FLAG                NUMBER,                                     /*����״̬            */
   constraint PK_TB_INVNB primary key (INVNB_ID)
);
create sequence SEQ_TB_INVNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNB to public;
grant index  on TB_INVNB to public;
grant update on TB_INVNB to public; 
grant delete on TB_INVNB to public;  
grant insert on TB_INVNB to public; 
grant select on SEQ_TB_INVNB to public;   