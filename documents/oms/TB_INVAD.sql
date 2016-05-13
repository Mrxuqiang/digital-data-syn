/*
================================================================================
��ṹ����:TB_INVAD
��ṹ����:��Ʒ�˻ص��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVAD;
drop index AK_TB_INVAD;
drop table TB_INVAD;
create table TB_INVAD  (                                             
   INVAD_ID         INTEGER             not null,        /*�˻���ϸID   */                  
   INVAD001         INTEGER             not null,        /*�˻ص�ID     */             
   INVAD002         INTEGER             not null,        /*��Դ����ID   */             
   INVAD003         INTEGER             not null,        /*��Դ���ID   */             
   INVAD004         INTEGER             not null,        /*��Ʒ����     */             
   INVAD005         INTEGER,                             /*ά��1        */             
   INVAD006         INTEGER,                             /*ά��2        */             
   INVAD007         INTEGER,                             /*ά��3        */             
   INVAD008         INTEGER,                             /*ά��4        */             
   INVAD009         INTEGER,                             /*ά��5        */             
   INVAD010         INTEGER             not null,        /*�ֿ�         */             
   INVAD011         INTEGER             not null,        /*��λ         */             
   INVAD012         VARCHAR2(30),                        /*������       */             
   INVAD013         VARCHAR2(30),                        /*������       */             
   INVAD014         VARCHAR2(30),                        /*��������     */             
   INVAD015         INTEGER             not null,        /*���ⵥλ     */             
   INVAD016         NUMBER(18,3)        not null,        /*��λ������   */             
   INVAD017         NUMBER(18,3)        not null,        /*�˻���       */             
   INVAD018         NUMBER(12,2)        not null,        /*˰ǰ����     */             
   INVAD019         NUMBER(12,2)        not null,        /*��˰����     */             
   INVAD020         INTEGER             not null,        /*˰��         */             
   INVAD021         NUMBER(12,2)        not null,        /*˰��         */             
   INVAD022         NUMBER(12,2)        not null,        /*˰ǰ���     */             
   INVAD023         NUMBER(12,2)        not null,        /*��˰���         */       
   INVAD024         VARCHAR2(1)         not null,        /*��Ʒ��������     */       
   INVAD025         VARCHAR2(1)         not null,        /*��Ȩ����         */       
   INVAD026         VARCHAR2(255)                        /*��ע             */       
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_INVAD primary key (INVAD_ID)                               
);                                           
create unique index AK_TB_INVAD on TB_INVAD (INVAD_ID,INVAD002);               
create sequence SEQ_TB_INVAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAD to public;                                     
grant index  on TB_INVAD to public;                                     
grant update on TB_INVAD to public;                                      
grant delete on TB_INVAD to public;                                       
grant insert on TB_INVAD to public;                                      
grant select on SEQ_TB_INVAD to public;                                        