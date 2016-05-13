/*
================================================================================
��ṹ����:TB_DTBBD
��ṹ����:���͵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBBD;
drop index AK_TB_DTBBD;
drop table TB_DTBBD;
create table TB_DTBBD  (                                       
   DTBBD_ID         INTEGER                not null,             /*������ϸID        */
   DTBBD001         INTEGER                not null,             /*���˳��ⵥID      */
   DTBBD002         INTEGER,                                     /*��Դ����ID        */
   DTBBD003         INTEGER,                                     /*��Դ�����ID      */
   DTBBD004         INTEGER                not null,             /*��Ʒ����          */
   DTBBD005         INTEGER,                                     /*ά��1             */
   DTBBD006         INTEGER,                                     /*ά��2             */
   DTBBD007         INTEGER,                                     /*ά��3             */
   DTBBD008         INTEGER,                                     /*ά��4             */
   DTBBD009         INTEGER,                                     /*ά��5             */
   DTBBD010         INTEGER                not null,             /*�ֿ�              */
   DTBBD011         INTEGER                not null,             /*��λ              */
   DTBBD012         VARCHAR2(30),                                /*������            */
   DTBBD013         VARCHAR2(30),                                /*������            */
   DTBBD014         VARCHAR2(30),                                /*��������          */
   DTBBD015         INTEGER                not null,             /*��ⵥλ          */
   DTBBD016         NUMBER(18,3)           not null,             /*��λ������        */
   DTBBD017         NUMBER(18,3)           not null,             /*������            */    
   DTBBD018         NUMBER(18,3)           not null,             /*�ջ���            */
   DTBBD019         NUMBER(18,3)           not null,             /*��������          */
   DTBBD020         NUMBER(12,2),                                /*˰ǰ����          */
   DTBBD021         NUMBER(12,2),                                /*˰ǰ���          */
   DTBBD022         NUMBER(12,2)           not null,             /*��˰����          */
   DTBBD023         NUMBER(12,2)           not null,             /*��˰���          */
   DTBBD024         INTEGER                not null,             /*˰��              */
   DTBBD025         NUMBER(18,3)           not null,             /*˰��              */
   DTBBD026         VARCHAR2(1)            not null,             /*��Ʒ��������      */
   DTBBD027         INTEGER,                                     /*��Ӧ��            */
   DTBBD028         VARCHAR2(1),                                 /*��Ӫ��ʽ          */
   DTBBD029         VARCHAR2(255),                               /*��ע              */
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_DTBBD primary key (DTBBD_ID)                               
);                                           
create unique index AK_TB_DTBBD on TB_DTBBD (DTBBD_ID,DTBBD004);               
create sequence SEQ_TB_DTBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBD to public;                                     
grant index  on TB_DTBBD to public;                                     
grant update on TB_DTBBD to public;                                      
grant delete on TB_DTBBD to public;                                       
grant insert on TB_DTBBD to public;                                      
grant select on SEQ_TB_DTBBD to public;                                        