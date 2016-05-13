/*
================================================================================
��ṹ����:TB_CONKB
��ṹ����:��Ӧ�̴����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONKB;
drop index AK_TB_CONKB;
drop table TB_CONKB;
create table TB_CONKB  (
   CONKB_ID	           INTEGER                                not null,    /*�����ϸID      */           
   CONKB001	           INTEGER                                not null,    /*���ID          */           
   CONKB002	           INTEGER                                not null,    /*������ϸID      */           
   CONKB003	           VARCHAR2(255),                                      /*������          */           
   CONKB004	           VARCHAR2(255),                                      /*һ����������    */           
   CONKB005	           VARCHAR2(255),                                      /*������������    */           
   CONKB006	           VARCHAR2(255),                                      /*������������    */           
   CONKB007	           VARCHAR2(255),                                      /*��������        */           
   CONKB008	           VARCHAR2(255),                                      /*ѡ��1           */           
   CONKB009	           NUMBER(11,2),                                       /*ѡ��1��ֵ       */           
   CONKB010	           VARCHAR2(255),                                      /*ѡ��2           */           
   CONKB011	           NUMBER(11,2),                                       /*ѡ��2��ֵ       */           
   CONKB012	           VARCHAR2(255),                                      /*ѡ��3           */           
   CONKB013	           NUMBER(11,2),                                       /*ѡ��3��ֵ       */           
   CONKB014	           VARCHAR2(255),                                      /*ѡ��4           */           
   CONKB015	           NUMBER(11,2),                                       /*ѡ��4��ֵ       */           
   CONKB016	           VARCHAR2(255),                                      /*ѡ��5           */           
   CONKB017	           NUMBER(11,2),                                       /*ѡ��5��ֵ       */           
   CONKB018	           VARCHAR2(1)                          not null,      /*ѡ����Ŀ1       */           
   CONKB019	           VARCHAR2(1),                                        /*ѡ����Ŀ2       */        
   CONKB020	           VARCHAR2(1),                                        /*ѡ����Ŀ3       */        
   CONKB021	           VARCHAR2(1),                                        /*ѡ����Ŀ4       */        
   CONKB022	           VARCHAR2(1),                                        /*ѡ����Ŀ5       */        
   CONKB023	           NUMBER(11,2),                                       /*�ܷ�ֵ          */        
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONKB primary key (CONKB_ID)
);
create unique index AK_TB_CONKB on TB_CONKB (CONKB_ID,CONKB002);
create sequence SEQ_TB_CONKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONKB to public;
grant index  on TB_CONKB to public;
grant update on TB_CONKB to public; 
grant delete on TB_CONKB to public;  
grant insert on TB_CONKB to public; 
grant select on SEQ_TB_CONKB to public;   