/*
================================================================================
��ṹ����:TB_AWBAC
��ṹ����:���ض��ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAC;
drop index AK_TB_AWBAC;
drop table TB_AWBAC;
create table TB_AWBAC  (
   AWBAC_ID             INTEGER                         not null,  /*���ض���ID     */
   AWBAC001             INTEGER                         not null,  /*��Ŀ����ID                */
   AWBACID1             INTEGER,                                   /*Ӱ������1ID             */  
   AWBACID2             INTEGER,                                   /*Ӱ������2ID             */
   AWBACID3             INTEGER,                                   /*Ӱ������3ID             */
   AWBACID4             INTEGER,                                   /*Ӱ������4ID             */
   AWBACID5             INTEGER,                                   /*Ӱ������5ID             */   
   AWBACID6             INTEGER,                                   /*Ӱ������6ID             */
   AWBACID7             INTEGER,                                   /*Ӱ������7ID             */   
   AWBACID8             INTEGER,                                   /*Ӱ������8ID             */
   AWBACCD1             VARCHAR2(30),                              /*Ӱ������1����             */   
   AWBACCD2             VARCHAR2(30),                              /*Ӱ������2����             */
   AWBACCD3             VARCHAR2(30),                              /*Ӱ������3����             */  
   AWBACCD4             VARCHAR2(30),                              /*Ӱ������4����             */   
   AWBACCD5             VARCHAR2(30),                              /*Ӱ������5����             */
   AWBACCD6             VARCHAR2(30),                              /*Ӱ������6����             */    
   AWBACCD7             VARCHAR2(30),                              /*Ӱ������7����             */   
   AWBACCD8             VARCHAR2(30),                              /*Ӱ������8����             */
   AWBACNM1             VARCHAR2(80),                              /*Ӱ������1����             */    
   AWBACNM2             VARCHAR2(80),                              /*Ӱ������2����             */      
   AWBACNM3             VARCHAR2(80),                              /*Ӱ������3����             */      
   AWBACNM4             VARCHAR2(80),                              /*Ӱ������4����             */      
   AWBACNM5             VARCHAR2(80),                              /*Ӱ������5����             */      
   AWBACNM6             VARCHAR2(80),                              /*Ӱ������6����             */      
   AWBACNM7             VARCHAR2(80),                              /*Ӱ������7����             */      
   AWBACNM8             VARCHAR2(80),                              /*Ӱ������8����             */      
   AWBAC002             INTEGER,                                   /*���˿�Ŀ����ID              */      
   AWBAC003             VARCHAR2(1),                               /*�����ʶ1����Ŀ2������     */  
   AWBAC004             INTEGER,                                   /*��˾ID                  */
   AWBAC005             INTEGER,                                   /*�������ID              */  
   AWBAC006             INTEGER,                                   /*��������ID              */ 
   AWBAC007             VARCHAR2(255),                             /*��ע                    */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_AWBAC primary key (AWBAC_ID)
);
create unique index AK_TB_AWBAC on TB_AWBAC (AWBAC005,AWBAC006,AWBAC001);
create sequence SEQ_TB_AWBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAC to public;
grant index  on TB_AWBAC to public;
grant update on TB_AWBAC to public; 
grant delete on TB_AWBAC to public;  
grant insert on TB_AWBAC to public; 
grant select on SEQ_TB_AWBAC to public;   