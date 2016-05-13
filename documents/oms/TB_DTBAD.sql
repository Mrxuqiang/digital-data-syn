/*
================================================================================
��ṹ����:TB_DTBAD
��ṹ����:���͵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBAD;
drop index AK_TB_DTBAD;
drop table TB_DTBAD;
create table TB_DTBAD  (                                       
   DTBAD_ID         INTEGER                not null,             /*������ϸID         */
   DTBAD001         INTEGER                not null,             /*���ͳ��ⵥID       */
   DTBAD002         INTEGER,                                     /*��Դ����ID         */
   DTBAD003         INTEGER,                                     /*��Դ�����ID       */
   DTBAD004         INTEGER                not null,             /*��Ʒ����           */
   DTBAD005         INTEGER,                                     /*ά��1             */
   DTBAD006         INTEGER,                                     /*ά��2             */
   DTBAD007         INTEGER,                                     /*ά��3             */
   DTBAD008         INTEGER,                                     /*ά��4             */
   DTBAD009         INTEGER,                                     /*ά��5             */
   DTBAD010         INTEGER                not null,             /*�ֿ�              */
   DTBAD011         INTEGER                not null,             /*��λ              */
   DTBAD012         VARCHAR2(30)           not null,             /*������            */
   DTBAD013         VARCHAR2(30)           not null,             /*������            */
   DTBAD014         VARCHAR2(30)           not null,             /*��������          */
   DTBAD015         INTEGER                not null,             /*��ⵥλ          */
   DTBAD016         NUMBER(18,3)           not null,             /*��λ������        */
   DTBAD017         NUMBER(18,3)           not null,             /*������            */    
   DTBAD018         NUMBER(18,3)           not null,             /*�ջ���            */
   DTBAD019         NUMBER(18,3)           not null,             /*��������          */
   DTBAD020         NUMBER(12,2),                                /*˰ǰ����          */
   DTBAD021         NUMBER(12,2),                                /*˰ǰ���          */
   DTBAD022         NUMBER(12,2)           not null,             /*��˰����          */
   DTBAD023         NUMBER(12,2)           not null,             /*��˰���          */
   DTBAD024         INTEGER                not null,             /*˰��              */
   DTBAD025         NUMBER(18,3)           not null,             /*˰��              */
   DTBAD026         VARCHAR2(1)            not null,             /*��Ʒ��������      */
   DTBAD027         INTEGER                not null,             /*��Ӧ��            */
   DTBAD028         VARCHAR2(1)            not null,             /*��Ӫ��ʽ          */
   DTBAD029         VARCHAR2(255),                                /*��ע              */
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_DTBAD primary key (DTBAD_ID)                               
);                                           
create unique index AK_TB_DTBAD on TB_DTBAD (DTBAD_ID,DTBAD004);               
create sequence SEQ_TB_DTBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAD to public;                                     
grant index  on TB_DTBAD to public;                                     
grant update on TB_DTBAD to public;                                      
grant delete on TB_DTBAD to public;                                       
grant insert on TB_DTBAD to public;                                      
grant select on SEQ_TB_DTBAD to public;                                        