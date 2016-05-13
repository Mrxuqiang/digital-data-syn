/* 20120927 add by gaoxl for crmi053 修改营运组织简称，公司id，区域id，国家id，地区id，省别id，地市id，自动编码前置码，营运组织面积为可空字段
   20130704 add by gaoxl for 红星：增加大区，小区字段
*/
/*
================================================================================
表结构代码:TB_PUBCB
表结构名称:营运组织表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCB;
drop index AK_TB_PUBCB;
drop table TB_PUBCB;
create table TB_PUBCB  (
   PUBCB_ID             INTEGER                         not null,  /*营运组织ID         */
   PUBCB001             VARCHAR2(16)                    not null,  /*营运组织代码       */
   PUBCB002             VARCHAR2(20),                              /*营运组织简称       */
   PUBCB003             VARCHAR2(80)                    not null,  /*营运组织全称       */
   PUBCB004             INTEGER,                                   /*上级营运组织ID     */   
   PUBCB005             INTEGER,                                   /*公司ID             */
   PUBCB006             INTEGER,                                   /*经营类型ID         */
   PUBCB007             VARCHAR2(1)                     not null,  /*营运状况           */
   PUBCB008             DATE                            not null,  /*开业日期           */
   PUBCB009             DATE,                                      /*停运日期           */
   PUBCB010             INTEGER,                                   /*区域ID             */
   PUBCB011             INTEGER,                                   /*国家ID             */
   PUBCB012             INTEGER,                                   /*地区ID             */
   PUBCB013             INTEGER,                                   /*省别ID             */
   PUBCB014             INTEGER,                                   /*地市ID             */
   PUBCB015             INTEGER,                                   /*县市ID             */
   PUBCB016             VARCHAR2(10),                              /*邮政编码           */
   PUBCB017             VARCHAR2(255),                             /*公司地址           */  
   PUBCB018             INTEGER,                                   /*负责人ID           */
   PUBCB019             INTEGER,                                   /*联系人ID           */
   PUBCB020             VARCHAR2(10),                              /*邮寄邮编           */
   PUBCB021             VARCHAR2(255),                             /*邮寄地址           */
   PUBCB022             VARCHAR2(60),                              /*邮寄信箱           */
   PUBCB023             VARCHAR2(30),                              /*电话               */
   PUBCB024             VARCHAR2(30),                              /*传真               */  
   PUBCB025             VARCHAR2(30),                              /*移动电话           */
   PUBCB026             VARCHAR2(60),                              /*E_Mail             */
   PUBCB027             VARCHAR2(60),                              /*公司网址           */   
   PUBCB028             NUMBER(12,2),                              /*营运组织面积       */
   PUBCB029             VARCHAR2(255),                             /*备注               */
   PUBCB030             VARCHAR2(3),                               /*自动编码前置码     */
   PUBCB031             INTEGER,                                   /*营运组织类型ID     */
   PUBCB032             VARCHAR2(30),                              /*当前层级代码       */
   PUBCB033             INTEGER,                                   /*代收款公司ID       */
   PUBCB034             INTEGER,                                   /*对应部门ID         */  
   PUBCB035             VARCHAR2(1),                               /*是否实体店         */
   PUBCB036             INTEGER,                                   /*所属卖场add by hansf 20101012 */
   PUBCB037             INTEGER,                                   /*所属开票公司ID     */  
   PUBCB038             INTEGER,                                   /*大区资料           */ 
   PUBCB039             INTEGER,                                   /*小区资料           */   
   PUBCB040             VARCHAR2(1),                               /*是否工厂           */  
   PUBCB041             VARCHAR2(2),                               /*银商类型           */     
   ISLASTLEV            VARCHAR2(1),                               /*是否末级           */
   LEVNUM               NUMBER(1),                                 /*层级               */
   PARCODE              VARCHAR2(40),                              /*父级代码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBCB primary key (PUBCB_ID)
);
create unique index AK_TB_PUBCB on TB_PUBCB (PUBCB001);
create sequence SEQ_TB_PUBCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCB to public;
grant index  on TB_PUBCB to public;
grant update on TB_PUBCB to public; 
grant delete on TB_PUBCB to public;  
grant insert on TB_PUBCB to public; 
grant select on SEQ_TB_PUBCB to public;   