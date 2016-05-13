/*
================================================================================
表结构代码:TB_MSSCB
表结构名称:工厂商品信息变更
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSCB;
drop index AK_TB_MSSCB;
drop table TB_MSSCB;
create table TB_MSSCB  (
   MSSCB_ID             INTEGER                         not null,  /*变更ID        */
   MSSCB001             INTEGER                         not null,  /*工厂名ID        */
   MSSCB002            INTEGER,                                   /*品牌名ID      */
   MSSCB003             Date,                                      /*申请日期      */
   MSSCB004             VARCHAR2(1),                               /*审核状态       */ 
   MSSCB005             INTEGER,                                   /*录入员ID      */  
   MSSCB006             INTEGER,                                   /*自定义分类1(材质名) （一）          */  
   MSSCB007             INTEGER,                                   /*自定义分类2(产地) (二)           */  
   MSSCB008             INTEGER,                                   /*自定义分类3(风格名) 风格（三）          */  
   MSSCB009             INTEGER,                                   /*自定义分类4(功能名) （四）        */  
   MSSCB010             INTEGER,                                   /*自定义分类5(商品类型名)           */  
   MSSCB011             INTEGER,                                   /*自定义分类6 空间名           */  
   MSSCB012             INTEGER,                                   /*自定义分类7           */ 
   MSSCB013             INTEGER,                                   /*自定义分类8          */ 
   MSSCB014             VARCHAR2(100)                    not null, /*品名         */ 
   MSSCB015             VARCHAR2(80),                              /*型号         */ 
   MSSCB016             VARCHAR2(80),                              /*规格         */     
   MSSCB017             Integer,                                   /*计价单位         */    
   MSSCB018             number(9,2),                               /*工厂指导价        */  
   MSSCB019             Integer,                                   /*规格单位          */   
   MSSCB020             VARCHAR2(60),                              /*等级           */ 
   MSSCB021             VARCHAR2(100),                             /*基材           */    
   MSSCB022             VARCHAR2(100),                             /*饰面           */  
   MSSCB023             VARCHAR2(100),                             /*辅材           */  
   MSSCB024             VARCHAR2(100),                             /*主要用料           */  
   MSSCB025             VARCHAR2(100),                             /*花色          */   
   MSSCB026             VARCHAR2(1000),                            /*备注           */ 
   MSSCB027             Date,                                      /*审核日期      */
   MSSCB028             Integer,                                    /*审核人     */
   MSSCB029             Integer,                                    /*营运组织ID     */
   MSSCB030             Integer,                                    /*系列ID     */    
   MSSCB031             varchar2(20) not null,                               /*商品编码     */
   MSSCB032             varchar2(30) not null,                               /*条码     */
   MSSCB033             Number(4),                                  /*版本号     */
   MSSCB091             INTEGER                        ,   /*单别ID        */
   MSSCB092             varchar2(30)                   ,   /*变更单号        */
   MSSCB093             integer,                                    /*工厂商品ID(tb_mssca)     */
   MSSCB094             integer,                                    /*反馈表ID(tb_msscc)     */
   await_appr_group     VARCHAR2(30),                               /*待审批角色               */
   await_appr_user      VARCHAR2(30),                               /*待审批用户               */
   approved_group       VARCHAR2(30),                               /*已审批角色               */
   approved_user        VARCHAR2(30) ,                              /*已审批用户               */
   appr_status          VARCHAR2(1),                                /*审批状态 0、无；1、已发起审批中; 9、审批结束*/ --0.未发起(草稿)，1.打回（审批不合格） 2.审批中 9.审批结束
   start_appr_group     VARCHAR2(30),                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30),                               /*发起审批用户               */ 
   appr_memo            VARCHAR2(255),                             /*审批备注*/                                                
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_MSSCB primary key (MSSCB_ID)
);
create unique index AK_TB_MSSCB on TB_MSSCB(MSSCB031,MSSCB032,MSSCB033,MSSCB035,FLAG);
create sequence SEQ_TB_MSSCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCB to public;
grant index  on TB_MSSCB to public;
grant update on TB_MSSCB to public; 
grant delete on TB_MSSCB to public;  
grant insert on TB_MSSCB to public;  
grant select on SEQ_TB_MSSCB to public;   
