/*
================================================================================
��ṹ����:TB_BATAE
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATAE;
drop index AK_TB_BATAE;
drop table TB_BATAE;
create table TB_BATAE  (
   BATAE_ID	            INTEGER                      not null,       /*����ID            */
   BATAE001	            INTEGER                      not null,       /*�ֿ�              */
   BATAE002	            INTEGER                      not null,       /*��λ              */
   BATAE003	            INTEGER                      not null,       /*��Ӧ��            */
   BATAE004	            VARCHAR2(1)                  not null,       /*���㷽ʽ          */
   BATAE005	            VARCHAR2(2)                  not null,       /*��������          */
   BATAE006	            INTEGER                      not null,       /*����ID            */
   BATAE007	            INTEGER                      not null,       /*��ƷID            */
   BATAE008	            NUMBER(18,3)                 not null,       /*��������          */
   BATAE009	            NUMBER(18,3)                 not null,       /*��������          */
   BATAE010	            NUMBER(18,3)                 not null,       /*�˳�����          */
   BATAE011	            NUMBER(18,3)                 not null,       /*���              */
   BATAE012	            NUMBER(18,3)                 not null,       /*�����            */
   BATAE013	            NUMBER(18,3)                 not null,       /*��������          */
   BATAE014	            NUMBER(18,3)                 not null,       /*�Ƴ�����          */
   BATAE015	            NUMBER(18,3)                 not null,       /*���              */
   BATAE016	            NUMBER(18,3)                 not null,       /*���              */
   BATAE017	            NUMBER(18,3)                 not null,       /*�������          */
   BATAE018	            NUMBER(18,3)                 not null,       /*ת������          */
   BATAE019	            NUMBER(18,3)                 not null,       /*���              */
   BATAE020	            NUMBER(18,3)                 not null,       /*ʣ������          */
   BATAE021	            NUMBER(18,3)                 not null,       /*��������          */
   BATAE022	            NUMBER(12,2)                 not null,       /*���ν���          */
   BATAE023	            NUMBER(12,2)                 not null,       /*���۽��          */
   BATAE024	            NUMBER(12,2)                 not null,       /*�������          */
   BATAE025	            INTEGER ,                                    /*ԭʼ��ID          */
   BATAE026	            NUMBER(18,3)                 not null,       /*�ѽ�����          */
   BATAE027	            INTEGER,                                     /*ԭʼ��Ӧ��        */
   BATAE028	            NUMBER(18,3),                                /*����ת��          */
   BATAE029             DATE                         not null,       /*��������          */
   BATAE030             VARCHAR2(30)                 not null,       /*������             */      
   BATAE031             VARCHAR2(30),                                /*������             */      
   BATAE032             VARCHAR2(30),                                /*��������           */      
   BATAE033             INTEGER,                                     /*������ϸID         */      
   BATAE034             INTEGER,                                     /*ά��1              */      
   BATAE035             INTEGER,                                     /*ά��2              */      
   BATAE036             INTEGER,                                     /*ά��3              */      
   BATAE037             INTEGER,                                     /*ά��4              */      
   BATAE038             INTEGER,                                     /*ά��5              */      
   BATAE039             DATE,                                        /*��������           */      
   BATAE040             DATE,                                        /*��������           */      
   BATAE041             VARCHAR2(1),                                 /*���ȼ�             */      
   BATAE042             VARCHAR2(1)           not null,              /*��Ʒ��������       */      
   BATAE043             VARCHAR2(1)           not null,              /*��Ȩ����           */      
   BATAE044             INTEGER,                                     /*���λ���ID         */
   BATAE045	            INTEGER ,                                    /*˰��ID             */   //modi by 20091020 
   BATAE046	            NUMBER(18,3)                                 /*˰��               */   //modi by 20091020   
   BATAE047	            NUMBER(18,3),                                /*˰ǰ����           */   //modi by 20091029       
   constraint PK_TB_BATAE primary key (BATAE_ID)
);
create unique index AK_TB_BATAE on TB_BATAE (BATAE005,BATAE006,BATAE033);
create sequence SEQ_TB_BATAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAE to public;
grant index  on TB_BATAE to public;
grant update on TB_BATAE to public; 
grant delete on TB_BATAE to public;  
grant insert on TB_BATAE to public; 
grant select on SEQ_TB_BATAE to public;   