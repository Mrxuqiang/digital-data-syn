/*
================================================================================
��ṹ����:TB_INVFF
��ṹ����:�̵�Ա���־��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFF;
drop index AK_TB_INVFF;
drop table TB_INVFF;
create table TB_INVFF  (
   INVFF_ID         INTEGER                             not null,      /*�Ա���־ID       */                                                                                   
   INVFF001         INTEGER                             not null,      /*�̵㵥ID         */                                                                                     
   INVFF002         VARCHAR2(4)                         not null,      /*��ǰ�汾��       */                                                                                      
   INVFF003         VARCHAR2(4)                         not null,      /*�ԱȰ汾��       */                                                                                      
   INVFF004         INTEGER                             not null,      /*��λ             */                                                                                      
   INVFF005         INTEGER                             not null,      /*��Ʒ����         */                                                                                      
   INVFF006         INTEGER,                                           /*ά��1            */                                                                                      
   INVFF007         INTEGER,                                           /*ά��2            */                                                                                      
   INVFF008         INTEGER,                                           /*ά��3            */                                                                                      
   INVFF009         INTEGER,                                           /*ά��4            */                                                                                      
   INVFF010         INTEGER,                                           /*ά��5            */                                                                                      
   INVFF011         INTEGER                             not null,      /*��λ             */                                                                                     
   INVFF012         NUMBER(12,2)                        not null,      /*ʵ����           */                                                                                     
   INVFF013         NUMBER(12,2)                        not null,      /*�Ա�ʵ����       */                                                                                      
   INVFF014         NUMBER(12,2)                        not null,      /*������           */    
   CREATE_USER      VARCHAR2(12),                                      /*������Ա         */
   USER_GROUP       VARCHAR2(12),                                      /*������Ա����     */                               
   CREATE_DATE      DATE,                                              /*��������         */
   MODIFIER         VARCHAR2(12),                                      /*�޸���Ա         */
   MODI_DATE        DATE,                                              /*�޸�����         */
   FLAG             NUMBER(1),                                         /*����״̬         */
   constraint PK_TB_INVFF primary key (INVFF_ID)
);
create unique index AK_TB_INVFF on TB_INVFF (INVFF001,INVFF002,INVFF003,INVFF004,INVFF005,INVFF006,INVFF007,INVFF008,INVFF009,INVFF010);
create sequence SEQ_TB_INVFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFF to public;
grant index  on TB_INVFF to public;
grant update on TB_INVFF to public; 
grant delete on TB_INVFF to public;  
grant insert on TB_INVFF to public; 
grant select on SEQ_TB_INVFF to public;   