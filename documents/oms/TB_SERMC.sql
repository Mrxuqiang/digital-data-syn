/*
================================================================================
��ṹ����:TB_SERMC
��ṹ����:�̻����õȼ�����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMC;
drop index AK_TB_SERMC;
drop table TB_SERMC;
create table TB_SERMC  (                                       
   SERMC_ID           INTEGER                 not null,            /*���õȼ�����ID  */   
   SERMC001           VARCHAR2(10)            not null,            /*���÷������    */   
   SERMC002           VARCHAR2(30) ,                               /*���÷�������    */   
   SERMC003           NUMBER(2),                                   /*��ͷ���        */   
   SERMC004           NUMBER(3) ,                                  /*��߷���        */   
   SERMC005           VARCHAR2(255),                               /*��ע            */     
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERMC primary key (SERMC_ID)                               
);                                           
create unique index AK_TB_SERMC on TB_SERMC (SERMC001,FLAG);               
create sequence SEQ_TB_SERMC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMC to public;                                     
grant index  on TB_SERMC to public;                                     
grant update on TB_SERMC to public;                                      
grant delete on TB_SERMC to public;                                       
grant insert on TB_SERMC to public;                                      
grant select on SEQ_TB_SERMC to public;                                        