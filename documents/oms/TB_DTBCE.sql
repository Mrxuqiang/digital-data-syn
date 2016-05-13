\/*
================================================================================
��ṹ����:TB_DTBCE
��ṹ����:Ԥ�ų����ͻ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCE;
drop index AK_TB_DTBCE;
drop table TB_DTBCE;
create table TB_DTBCE  (                                       
   DTBCE_ID	         INTEGER                       not null,   /*�ͻ��б�ID       */           
   DTBCE001	         INTEGER                       not null,   /*Ԥ�ų���ID       */           
   DTBCE002	         INTEGER,                                  /*�ͻ�ID           */   -- modify hansf 20100508 ����Ϊnull        
   DTBCE003	         INTEGER                       not null,   /*��Դ����         */           
   DTBCE004	         VARCHAR2(255),                            /*�ͻ���ַ         */   -- modify hansf 20100809 ����Ϊnull            
   DTBCE005	         DATE                          not null,   /*�ͻ�����         */           
   DTBCE006	         VARCHAR2(30),                             /*�˿�����         */           
   DTBCE007	         VARCHAR2(30),                             /*�˿͵绰         */           
   DTBCE008	         NUMBER(12,2)                  not null,   /*��������(�ͻ����)         */           
   DTBCE009	         VARCHAR2(10),                             /*ԤԼʱ��         */   --mark by hansf        
   DTBCE010	         INTEGER,                                  /*¥��             */           
   DTBCE011	         NUMBER(12,2),                             /*���             */           
   DTBCE012	         NUMBER(12,2),                             /*����             */           
   DTBCE013	         NUMBER(4)                     not null,   /*�ŵ�˳��         */           
   DTBCE014	         VARCHAR2(1)                   not null,   /*�Ƿ��ŵ�         */           
   DTBCE015	         VARCHAR2(1)                   not null,   /*�Ƿ��е���         */    --modify �Ƿ��е���
   DTBCE016	         VARCHAR2(1)                   not null,   /*��Դ���         */  
   DTBCE017              INTEGER                       not null,   /*��Դ�ŵ�         */    --2010-01-26 add by hansf
   DTBCE018              INTEGER                       not null,   /*�ų�����         */   
   DTBCE019		 VARCHAR2(30),                             /*�ֻ�����һ      */   
   DTBCE020              VARCHAR2(30),                             /*�ֻ������      */    --add by hansf 2010-03-08
   DTBCE021              VARCHAR2(1),				   /*�ͻ�״̬        */  -- add by hansf 1�����ͻ� 2.��ȫ�ͻ�
   DTBCE022              VARCHAR2(255),                            /*��ע            */ 
   DTBCE023              INTEGER,                                  /*�ͻ�����        */ -- add by hansf 2010-6-24
   DTBCE024              INTEGER,                                  /*��װ����ID    */
   DTBCE025              INTEGER,                                  /*ǩ�յ�ID        */  --add by hansf 20101018
   DTBCE026              INTEGER,                                  /*���            */  --20110225 add by xiechun
   DTBCE027            INTEGER,                                    /*�ͻ��ͻ�        */ --20110726 add by xiechun
   DTBCE028            INTEGER,                                    /*�տ�ͻ�        */ --20110726 add by xiechun
   DTBCE029              VARCHAR2(1),                              /*Լ���ͻ�ʱ��    */
   DTBCE030              INTEGER,                                  /*��ⵥID        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */             
   CREATE_DATE        DATE,                                        /*��������        */             
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */             
   MODI_DATE          DATE,                                        /*�޸�����        */             
   FLAG               NUMBER(1),                                   /*����״̬        */            


  constraint PK_TB_DTBCE primary key (DTBCE_ID)                               
);                                           
create unique index AK_TB_DTBCE on TB_DTBCE (DTBCE001,DTBCE002,DTBCE003);               
create sequence SEQ_TB_DTBCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCE to public;                                     
grant index  on TB_DTBCE to public;                                     
grant update on TB_DTBCE to public;                                      
grant delete on TB_DTBCE to public;                                       
grant insert on TB_DTBCE to public;                                      
grant select on SEQ_TB_DTBCE to public;                                        