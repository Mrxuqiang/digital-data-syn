/*
================================================================================
��ṹ����:TB_CONJB
��ṹ����:�Զ��幩Ӧ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONJB;
drop index AK_TB_CONJB;
drop table TB_CONJB;
create table TB_CONJB  (
   CONJB_ID	          INTEGER                           not null,        /*������ϸID       */               
   CONJB001	          INTEGER                           not null,        /*����ID           */           
   CONJB002	          VARCHAR2(255)                     not null,        /*������           */           
   CONJB003	          VARCHAR2(255),                                     /*һ����������     */           
   CONJB004	          VARCHAR2(255),                                     /*������������     */           
   CONJB005	          VARCHAR2(255),                                     /*������������     */           
   CONJB006	          NUMBER(2),                                         /*����˳��         */           
   CONJB007	          VARCHAR2(255),                    not null,        /*��������         */           
   CONJB008	          VARCHAR2(255),                    not null,        /*ѡ��1            */           
   CONJB009	          NUMBER(11,2),                                      /*ѡ��1��ֵ        */           
   CONJB010	          VARCHAR2(255),                                     /*ѡ��2            */           
   CONJB011	          NUMBER(11,2),                                      /*ѡ��2��ֵ        */           
   CONJB012	          VARCHAR2(255),                                     /*ѡ��3            */           
   CONJB013	          NUMBER(11,2),                                      /*ѡ��3��ֵ        */           
   CONJB014	          VARCHAR2(255),                                     /*ѡ��4            */           
   CONJB015	          NUMBER(11,2),                                      /*ѡ��4��ֵ        */           
   CONJB016	          VARCHAR2(255),                                     /*ѡ��5            */           
   CONJB017	          NUMBER(11,2),                                      /*ѡ��5��ֵ        */           
   CONJB018	          VARCHAR2(255),                                     /*��ע             */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONJB primary key (CONJB_ID)
);
create unique index AK_TB_CONJB on TB_CONJB (CONJB_ID,CONJB002);
create sequence SEQ_TB_CONJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONJB to public;
grant index  on TB_CONJB to public;
grant update on TB_CONJB to public; 
grant delete on TB_CONJB to public;  
grant insert on TB_CONJB to public; 
grant select on SEQ_TB_CONJB to public;   