/*
================================================================================
表结构代码:TB_MSSCA
表结构名称:工厂商品信息
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSCA;
drop index AK_TB_MSSCA;
drop table TB_MSSCA;
create table TB_MSSCA  (
   MSSCA_ID             INTEGER                         not null,  /*价签ID        */
   MSSCA001             INTEGER                         not null,  /*工厂名ID        */
   MSSCA002             INTEGER,                                   /*品牌名ID      */
   MSSCA003             Date,                                      /*申请日期      */
   MSSCA004             VARCHAR2(1),                               /*审核状态    N Y   */ 
   MSSCA005             INTEGER,                                   /*录入员ID      */  
   MSSCA006             INTEGER,                                   /*自定义分类1(材质名) （一）          */  
   MSSCA007             INTEGER,                                   /*自定义分类2(产地) (二)           */  
   MSSCA008             INTEGER,                                   /*自定义分类3(风格名) 风格（三）          */  
   MSSCA009             INTEGER,                                   /*自定义分类4(功能名) （四）        */  
   MSSCA010             INTEGER,                                   /*自定义分类5(商品类型名)           */  
   MSSCA011             INTEGER,                                   /*自定义分类6 空间名           */  
   MSSCA012             INTEGER,                                   /*自定义分类7           */ 
   MSSCA013             INTEGER,                                   /*自定义分类8          */ 
   MSSCA014             VARCHAR2(100)                    not null, /*品名         */ 
   MSSCA015             VARCHAR2(80),                              /*型号         */ 
   MSSCA016             VARCHAR2(80),                              /*规格         */     
   MSSCA017             Integer,                                   /*计价单位         */    
   MSSCA018            NUMBER(12,2),                               /*工厂指导价        */  
   MSSCA019             Integer,                                   /*规格单位          */   
   MSSCA020             VARCHAR2(60),                              /*等级           */ 
   MSSCA021             VARCHAR2(100),                             /*基材           */    
   MSSCA022             VARCHAR2(100),                             /*饰面           */  
   MSSCA023             VARCHAR2(100),                             /*辅材           */  
   MSSCA024             VARCHAR2(100),                             /*主要用料           */  
   MSSCA025             VARCHAR2(100),                             /*花色          */   
   MSSCA026             VARCHAR2(1000),                            /*备注           */ 
   MSSCA027             Date,                                      /*审核日期      */
   MSSCA028             Integer,                                    /*审核人     */
   MSSCA029             Integer,                                    /*营运组织ID     */
   MSSCA030             Integer,                                    /*系列ID     */
   MSSCA031             varchar2(20),                               /*商品编码     */
   MSSCA032             varchar2(30),                               /*条码     */
   MSSCA033             Number(4),                                  /*版本号     */
   MSSCA034             Integer,                                    /*导入Excel ID     */
   MSSCA035             varchar2(2),                                /*是否为家具     */
   MSSCA036             varchar2(1),                                /*tb_msscc表发起反馈标识     */
   await_appr_group     VARCHAR2(30),                               /*待审批角色               */
   await_appr_user      VARCHAR2(30),                               /*待审批用户               */
   approved_group       VARCHAR2(30),                               /*已审批角色               */
   approved_user        VARCHAR2(30) ,                              /*已审批用户               */
   appr_status          VARCHAR2(2),                                /*审批状态 0、无；1、已发起审批中;19.变更发起申请 9、审批结束*/ --0.未发起(草稿)，1.打回（审批不合格） 2.审批中 9.审批结束
   start_appr_group     VARCHAR2(30),                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30),                               /*发起审批用户               */ 
   appr_memo            VARCHAR2(255),                             /*审批备注*/                                                
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_MSSCA primary key (MSSCA_ID)
);
create unique index AK_TB_MSSCA on TB_MSSCA(MSSCA031,MSSCA032,FLAG);
create sequence SEQ_TB_MSSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCA to public;
grant index  on TB_MSSCA to public;
grant update on TB_MSSCA to public; 
grant delete on TB_MSSCA to public;  
grant insert on TB_MSSCA to public;  
grant select on SEQ_TB_MSSCA to public;   
