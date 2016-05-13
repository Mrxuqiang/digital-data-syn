/*
================================================================================
��ṹ����:TB_INVHB
��ṹ����:���쵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVHB;
drop index AK_TB_INVHB;
drop table TB_INVHB;
create table TB_INVHB  (                                       
   INVHB_ID            INTEGER                 not null,       /*������ϸID       */           
   INVHB001            INTEGER                 not null,       /*���쵥ID         */      
   INVHB002            VARCHAR2(1)             not null,       /*����������       */      
   INVHB003            INTEGER                 not null,       /*��Դ����ID       */      
   INVHB004            INTEGER                 not null,       /*��Դ������ϸID   */      
   INVHB005            INTEGER                 not null,       /*��Ʒ����         */      
   INVHB006            INTEGER,                                /*ά��1            */      
   INVHB007            INTEGER,                                /*ά��2            */      
   INVHB008            INTEGER,                                /*ά��3            */      
   INVHB009            INTEGER,                                /*ά��4            */      
   INVHB010            INTEGER,                                /*ά��5            */      
   INVHB011            INTEGER                 not null,       /*�����ֿ�         */      
   INVHB012            INTEGER                 not null,       /*������λ         */      
   INVHB013            VARCHAR2(30)            not null,       /*����������       */      
   INVHB014            NUMBER(18,3)            not null,       /*��������         */      
   INVHB015            INTEGER                 not null,       /*��λ             */      
   INVHB016            NUMBER(18,3)            not null,       /*��λ������       */      
   INVHB017            INTEGER                 not null,       /*�ջ��ֿ�         */      
   INVHB018            INTEGER                 not null,       /*�ջ���λ         */      
   INVHB019            VARCHAR2(30)            not null,       /*�ջ�������       */      
   INVHB020            NUMBER(18,3)            not null,       /*�ջ�����         */      
   INVHB021            NUMBER(18,3)            not null,       /*������           */      
   INVHB022            NUMBER(12,2)            not null,       /*����˰ǰ����     */         
   INVHB023            NUMBER(12,2)            not null,       /*���캬˰����     */      
   INVHB024            INTEGER                 not null,       /*˰��             */      
   INVHB025            NUMBER(12,2)            not null,       /*˰��             */      
   INVHB026            NUMBER(12,2)            not null,       /*����˰ǰ���     */      
   INVHB027            NUMBER(12,2)            not null,       /*���캬˰���     */      
   INVHB028            VARCHAR2(1)             not null,       /*���촦������     */      
   INVHB029            VARCHAR2(1)             not null,       /*��Ʒ��������     */     
   INVHB030            VARCHAR2(255)                           /*��ע             */     
   CREATE_USER         VARCHAR2(12),                           /*������Ա           */             
   USER_GROUP          VARCHAR2(12),                           /*������Ա����       */             
   CREATE_DATE         DATE,                                   /*��������           */             
   MODIFIER            VARCHAR2(12),                           /*�޸���Ա           */             
   MODI_DATE           DATE,                                   /*�޸�����           */             
   FLAG                NUMBER(1),                              /*����״̬           */            


  constraint PK_TB_INVHB primary key (INVHB_ID)                               
);                                           
create unique index AK_TB_INVHB on TB_INVHB (INVHB003,INVHB005);               
create sequence SEQ_TB_INVHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVHB to public;                                     
grant index  on TB_INVHB to public;                                     
grant update on TB_INVHB to public;                                      
grant delete on TB_INVHB to public;                                       
grant insert on TB_INVHB to public;                                      
grant select on SEQ_TB_INVHB to public;                                        