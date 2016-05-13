/*
================================================================================
表结构代码:TB_SERDA
表结构名称:服务单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDA;
drop index AK_TB_SERDA;
drop table TB_SERDA;
create table TB_SERDA  (
   SERDA_ID             INTEGER               not null,              /*服务单ID             */
   SERDA001             INTEGER               not null,              /*服务单别             */
   SERDA002             VARCHAR2(30)          not null,              /*服务单号             */
   SERDA003             VARCHAR2(1)           not null,              /*来源单据类型         */--"1.销售单  2.销售退货单
   SERDA004             VARCHAR2(30)          not null,              /*来源单号             */
   SERDA005             DATE                  not null,              /*服务日期             */
   SERDA006             INTEGER,                                     /*车辆编号             */
   SERDA007             INTEGER,                                     /*司机                 */
   SERDA008             VARCHAR2(30)              null,              /*手机号1              */
   SERDA009             VARCHAR2(30)              null,              /*手机号2              */
   SERDA010             VARCHAR2(30),                                /*顾客姓名             */
   SERDA011             VARCHAR2(255),                               /*送货地址             */
   SERDA012             VARCHAR2(255),                               /*联系方式             */
   SERDA013             DATE,                                        /*要求完成日           */
   SERDA014             DATE,                                        /*实际完成日           */
   SERDA015             INTEGER               not null,              /*营运组织             */
   SERDA016             VARCHAR2(1),                                 /*审核状态             */
   SERDA017             INTEGER,                                     /*录入人员             */
   SERDA018             DATE,                                        /*录入日期             */
   SERDA019             INTEGER,                                     /*审核人员             */
   SERDA020             DATE,                                        /*审核日期             */
   SERDA021             VARCHAR2(255),                               /*安装要求             */    
   SERDA022             VARCHAR2(2000),                              /*回访记录             */--20110924 modify by xiechun 回访记录
   SERDA023             VARCHAR2(1)          not null,               /*安装质量             */
   SERDA024             VARCHAR2(1)          not null,               /*员工素质及服务态度   */   
   SERDA025             INTEGER              nou null,               /*来源单ID             */--排车单子表客户协议ID
   SERDA026             VARCHAR2(1)          not null,               /*是否安装回访         */             
   SERDA027             INTEGER,                                     /*排车单ID             */ 
   SERDA028             INTEGER,                                     /*来源门店             */
   SERDA029             INTEGER,                                     /*楼层                 */
   SERDA030             VARCHAR2(1)         not null               , /*是否有楼梯           */
   SERDA031             VARCHAR2(1)         not null               , /*搬运                 */
   SERDA032             VARCHAR2(1)         not null              ,  /*安装                 */
   SERDA033             VARCHAR2(1)         not null                ,/*拆装                 */
   SERDA034             VARCHAR2(1)         not null                ,/*打包                 */
   SERDA035             VARCHAR2(1)         not null                ,/*服务类型             */--1.安装 2.检修
   SERDA036             INTEGER                                     ,/*安装工               */
   SERDA037             VARCHAR2(255),                               /*备注                 */
   SERDA038             VARCHAR1(1),                                 /*结案状态             */--N.未结案 Y.结案 20120224 add by xiechun
   CREATE_USER          VARCHAR2(12),                                /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门         */                               
   CREATE_DATE          DATE,                                        /*建立日期             */
   MODIFIER             VARCHAR2(12),                                /*修改人员             */
   MODI_DATE            DATE,                                        /*修改日期             */
   FLAG                 NUMBER(1),                                   /*资料状态             */
   constraint PK_TB_SERDA primary key (SERDA_ID)
);
create unique index AK_TB_SERDA on TB_SERDA (SERDA001,SERDA002,SERDA015);
create sequence SEQ_TB_SERDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDA to public;
grant index  on TB_SERDA to public;
grant update on TB_SERDA to public; 
grant delete on TB_SERDA to public;  
grant insert on TB_SERDA to public; 
grant select on SEQ_TB_SERDA to public;   