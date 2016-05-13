/*
================================================================================
��ṹ����:TB_INVNA
��ṹ����:���ⵥ����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_INVNA;
drop index AK_TB_INVNA;
drop table TB_INVNA;
create table TB_INVNA  (
   INVNA_ID            INTEGER                not null,            /*�����ID            */        
   INVNA001            INTEGER                not null,            /*����                */ 
   INVNA002            VARCHAR2(30)           not null,            /*���ⵥ��            */        
   INVNA003            DATE   ,               not null,            /*��������            */
   INVNA004            INTEGER                not null,            /*Ӫ����֯            */ 
   INVNA005            INTEGER                not null,            /*���ⲿ��            */   
   INVNA006            INTEGER                not null,            /*������Ա            */                
   INVNA007            INTEGER,                                    /*¼����              */   
   INVNA008            DATE   ,                                    /*¼������            */        
   INVNA009            VARCHAR2(1)           not null,             /*���״̬            */                               
   INVNA010            INTEGER,                                    /*�����              */        
   INVNA011            DATE    ,                                   /*���ʱ��            */  
   INVNA012            VARCHAR2(255),                              /*��ע                */  
   INVNA013            INTEGER                        ,            /*����                */ --20120820 add by xiechun 
   CREATE_USER         VARCHAR2(12),                               /*������Ա            */
   USER_GROUP          VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE         DATE,                                       /*��������            */
   MODIFIER            VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE           DATE,                                       /*�޸�����            */
   FLAG                NUMBER,                                     /*����״̬            */
   constraint PK_TB_INVNA primary key (INVNA_ID)
);
create unique index AK_TB_INVNA on TB_PURMA (INVNA001,INVNA002,FLAG);
create sequence SEQ_TB_INVNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNA to public;
grant index  on TB_INVNA to public;
grant update on TB_INVNA to public; 
grant delete on TB_INVNA to public;  
grant insert on TB_INVNA to public; 
grant select on SEQ_TB_INVNA to public;   