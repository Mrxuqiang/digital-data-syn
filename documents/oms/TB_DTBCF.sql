/*
================================================================================
��ṹ����:TB_DTBCF
��ṹ����:Ԥ�ų�����Ʒ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCF;
drop index AK_TB_DTBCF;
drop table TB_DTBCF;
create table TB_DTBCF  (                                             
   DTBCF_ID	       INTEGER                   not null,     /*��Ʒ��ϸID    */              
   DTBCF001	       INTEGER                   not null,     /*Ԥ�ų���ID    */              
   DTBCF002	       INTEGER                   not null,     /*�ͻ��б�ID    */              
   DTBCF003	       INTEGER                   not null,     /*��ƷID        */              
   DTBCF004	       INTEGER,				       /*ά��1         */              
   DTBCF005	       INTEGER,				       /*ά��2         */              
   DTBCF006	       INTEGER,				       /*ά��3         */              
   DTBCF007	       INTEGER,			               /*ά��4         */              
   DTBCF008	       INTEGER,			               /*ά��5         */              
   DTBCF009	       INTEGER                   not null,     /*��λ          */              
   DTBCF010	       NUMBER(18,3)              not null,     /*���ų�����    */              
   DTBCF011	       NUMBER(18,3)              not null,     /*ʵ���ų�����  */              
   DTBCF012	       NUMBER(18,3),                           /*���          */              
   DTBCF013	       NUMBER(18,3),                           /*����          */              
   DTBCF014	       NUMBER(12,2)              not null,     /*����          */              
   DTBCF015	       NUMBER(12,2)              not null,     /*ʵ���ų����  */       
   DTBCF016	       INTEGER                   not null,     /*��Դ��ϸID    */   
   DTBCF017            VARCHAR2(255),                          /*��ע          */
   DTBCF018	       VARCHAR2(1)		 not null,     /*�Ƿ��ų�      */   --modify �Ƿ��ų�
   DTBCF019            VARCHAR2(1),                            /*����          */   --modify ����
   DTBCF020            INTEGER,                                /*�ֿ�id        */ --�����ϲ���ʾ����
   DTBCF021            INTEGER,                                /*����ƷID      */  
   DTBCF022            VARCHAR2(1),                            /*�Ƿ�ɷ�      */  
   DTBCF023            VARCHAR2(1),                            /*�Ƿ���װƷ    */  
   DTBCF024            VARCHAR2(30),                           /*���׼���ϵ���������*/  -- add by hansf 2010-5-12       
   DTBCF025            INTEGER,                                /*ǩ�յ���ϸID          */  --add by xiechun 20111107 
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            
  constraint PK_TB_DTBCF primary key (DTBCF_ID)                               
);                                           
-- create unique index AK_TB_DTBCF on TB_DTBCF (DTBCF001,DTBCF002,DTBCF003);         -- mark by hansf       
create sequence SEQ_TB_DTBCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCF to public;                                     
grant index  on TB_DTBCF to public;                                     
grant update on TB_DTBCF to public;                                      
grant delete on TB_DTBCF to public;                                       
grant insert on TB_DTBCF to public;                                      
grant select on SEQ_TB_DTBCF to public;                                        