/*
================================================================================
表结构代码:TB_AWBAE
表结构名称:凭证分录模板表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAE;
drop index AK_TB_AWBAE;
drop table TB_AWBAE;
create table TB_AWBAE  (
   AWBAE_ID             INTEGER                         not null,  /*凭证分录模板表ID          */
   AWBAE001             INTEGER                         not null,  /*凭证模版ID                */
   AWBAE002             VARCHAR2(200),                             /*摘要公式                  */  
   AWBAE003             INTEGER,                                   /*科目分类ID                */
   AWBAE004             NUMBER(1),                                 /*借贷方向                  */
   AWBAE005             VARCHAR2(200),                             /*币种公式                  */
   AWBAE006             VARCHAR2(200),                             /*汇率公式                  */   
   AWBAE007             VARCHAR2(200),                             /*原币公式                  */
   AWBAE008             VARCHAR2(200),                             /*本币公式                  */
   AWBAE009             VARCHAR2(255),                             /*备注                      */ 
   AWBAE010             VARCHAR2(200),                             /*摘要公式描述              */   
   AWBAE011             VARCHAR2(200),                             /*币种公式描述               */
   AWBAE012             VARCHAR2(200),                             /*汇率公式描述               */  
   AWBAE013             VARCHAR2(200),                             /*原币公式描述               */   
   AWBAE014             VARCHAR2(200),                             /*本币公式描述              */                     
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_AWBAE primary key (AWBAE_ID)
);
create sequence SEQ_TB_AWBAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAE to public;
grant index  on TB_AWBAE to public;
grant update on TB_AWBAE to public; 
grant delete on TB_AWBAE to public;  
grant insert on TB_AWBAE to public; 
grant select on SEQ_TB_AWBAE to public;   