/*
================================================================================
表结构代码:TB_SUPAF
表结构名称:招商活动主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAF;
drop index AK_TB_SUPAF;
drop table TB_SUPAF;
create table TB_SUPAF  (
   SUPAF_ID             INTEGER                         not null,  /*招商活动ID          */
   SUPAF001             VARCHAR2(16)                    not null,  /*招商活动编号        */
   SUPAF002             VARCHAR2(40)                    not null,  /*招商活动名称        */
   SUPAF003             INTEGER                         not null,  /*负责人ID            */
   SUPAF004             VARCHAR2(100),                             /*招商活动描述        */
   SUPAF005             VARCHAR2(1)                     not null,  /*状态                */
   SUPAF006             INTEGER                         not null,  /*招商计划ID          */
   SUPAF007             INTEGER                         not null,  /*招商活动过程模板ID  */
   SUPAF008             INTEGER,                                   /*营运组织ID(字段不用)*/
   SUPAF009             INTEGER,                                   /*楼栋ID(字段不用)    */
   SUPAF010             INTEGER,                                   /*楼层ID(字段不用)    */
   SUPAF011             INTEGER,                                   /*招商经营大类ID(字段不用) */
   SUPAF012             NUMBER(6),                                 /*招商摊位数(字段不用)*/
   SUPAF013             NUMBER(12,2),                              /*招商面积数(字段不用)*/
   SUPAF014             DATE                            not null,  /*预计开始日期        */
   SUPAF015             DATE                            not null,  /*预计结束日期        */
   SUPAF016             NUMBER(12,2)                    not null,  /*预计费用            */
   SUPAF017             DATE,                                      /*实际开始日期        */
   SUPAF018             DATE,                                      /*实际结束日期        */
   SUPAF019             NUMBER(12,2),                              /*实际费用            */
   SUPAF020             VARCHAR2(1),                               /*结果                */
   SUPAF021             INTEGER,                                   /*结果原因ID          */
   SUPAF022             VARCHAR2(255),                             /*备注                */
   SUPAF023             DATE,                                      /*启动日期            */
   SUPAF024             DATE,                                      /*停止日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAF primary key (SUPAF_ID)
);
create unique index AK_TB_SUPAF on TB_SUPAF (SUPAF001);
create sequence SEQ_TB_SUPAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAF to public;
grant index  on TB_SUPAF to public;
grant update on TB_SUPAF to public; 
grant delete on TB_SUPAF to public;  
grant insert on TB_SUPAF to public; 
grant select on SEQ_TB_SUPAF to public;   