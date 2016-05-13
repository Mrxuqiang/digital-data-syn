/*
================================================================================
表结构代码:TB_AWBAC
表结构名称:因素对照表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAC;
drop index AK_TB_AWBAC;
drop table TB_AWBAC;
create table TB_AWBAC  (
   AWBAC_ID             INTEGER                         not null,  /*因素对照ID     */
   AWBAC001             INTEGER                         not null,  /*科目分类ID                */
   AWBACID1             INTEGER,                                   /*影响因素1ID             */  
   AWBACID2             INTEGER,                                   /*影响因素2ID             */
   AWBACID3             INTEGER,                                   /*影响因素3ID             */
   AWBACID4             INTEGER,                                   /*影响因素4ID             */
   AWBACID5             INTEGER,                                   /*影响因素5ID             */   
   AWBACID6             INTEGER,                                   /*影响因素6ID             */
   AWBACID7             INTEGER,                                   /*影响因素7ID             */   
   AWBACID8             INTEGER,                                   /*影响因素8ID             */
   AWBACCD1             VARCHAR2(30),                              /*影响因素1编码             */   
   AWBACCD2             VARCHAR2(30),                              /*影响因素2编码             */
   AWBACCD3             VARCHAR2(30),                              /*影响因素3编码             */  
   AWBACCD4             VARCHAR2(30),                              /*影响因素4编码             */   
   AWBACCD5             VARCHAR2(30),                              /*影响因素5编码             */
   AWBACCD6             VARCHAR2(30),                              /*影响因素6编码             */    
   AWBACCD7             VARCHAR2(30),                              /*影响因素7编码             */   
   AWBACCD8             VARCHAR2(30),                              /*影响因素8编码             */
   AWBACNM1             VARCHAR2(80),                              /*影响因素1名称             */    
   AWBACNM2             VARCHAR2(80),                              /*影响因素2名称             */      
   AWBACNM3             VARCHAR2(80),                              /*影响因素3名称             */      
   AWBACNM4             VARCHAR2(80),                              /*影响因素4名称             */      
   AWBACNM5             VARCHAR2(80),                              /*影响因素5名称             */      
   AWBACNM6             VARCHAR2(80),                              /*影响因素6名称             */      
   AWBACNM7             VARCHAR2(80),                              /*影响因素7名称             */      
   AWBACNM8             VARCHAR2(80),                              /*影响因素8名称             */      
   AWBAC002             INTEGER,                                   /*入账科目编码ID              */      
   AWBAC003             VARCHAR2(1),                               /*分类标识1、科目2，账套     */  
   AWBAC004             INTEGER,                                   /*公司ID                  */
   AWBAC005             INTEGER,                                   /*会计主体ID              */  
   AWBAC006             INTEGER,                                   /*核算账套ID              */ 
   AWBAC007             VARCHAR2(255),                             /*备注                    */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
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