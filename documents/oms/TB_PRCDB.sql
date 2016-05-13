/*
================================================================================
表结构代码:TB_PRCDB
表结构名称:进价调整单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCDB;
drop index AK_TB_PRCDB;
drop table TB_PRCDB;
create table TB_PRCDB  (
   PRCDB_ID             INTEGER                               not null,        /*调整明细ID        */    
   PRCDB001             INTEGER                               not null,        /*进价调整单ID      */
   PRCDB002             INTEGER                               not null,        /*来源单号ID        */
   PRCDB003             VARCHAR2(30)                         not null,         /*来源单号          */
   PRCDB004             INTEGER                               not null,        /*来源明细ID        */
   PRCDB005             INTEGER                               not null,        /*商品编码          */
   PRCDB006             INTEGER,                                               /*维度1             */
   PRCDB007             INTEGER,                                               /*维度2             */
   PRCDB008             INTEGER,                                               /*维度3             */
   PRCDB009             INTEGER,                                               /*维度4             */
   PRCDB010             INTEGER,                                               /*维度5             */
   PRCDB011             INTEGER                               not null,        /*仓库              */
   PRCDB012             INTEGER                               not null,        /*库位              */
   PRCDB013             VARCHAR2(30)                          not null,        /*原主批号          */
   PRCDB014             VARCHAR2(30),                                          /*原辅批号          */
   PRCDB015             VARCHAR2(30),                                          /*新主批号          */
   PRCDB016             VARCHAR2(30),                                          /*新辅批号          */
   PRCDB017             VARCHAR2(30),                                          /*厂商批号          */
   PRCDB018             VARCHAR2(30),                                          /*新厂商批号        */
   PRCDB019             INTEGER                               not null,        /*单位              */
   PRCDB020             NUMBER(12,2)                          not null,        /*单位换算率        */       
   PRCDB021             NUMBER(18,3)                          not null,        /*原库存数量        */
   PRCDB022             NUMBER(18,3)                          not null,        /*本次调价数量      */
   PRCDB023             NUMBER(12,2)                          not null,        /*原税前单价        */
   PRCDB024             NUMBER(12,2)                          not null,        /*原含税单价        */
   PRCDB025             NUMBER(12,2)                          not null,        /*新税前单价        */
   PRCDB026             NUMBER(12,2)                          not null,        /*新含税单价        */
   PRCDB027             INTEGER                               not null,        /*税种              */
   PRCDB028             NUMBER(12,2)                          not null,        /*税率              */
   PRCDB029             NUMBER(12,2)                          not null,        /*原税前金额        */
   PRCDB030             NUMBER(12,2)                          not null,        /*原含税金额        */
   PRCDB031             NUMBER(12,2)                          not null,        /*调价后税前金额    */
   PRCDB032             NUMBER(12,2)                          not null,        /*调价后含税金额    */
   PRCDB033             NUMBER(18,3)                          not null,        /*已销未结数量      */
   PRCDB034             NUMBER(18,3)                          not null,        /*已销未结调价数量  */
   PRCDB035             NUMBER(12,2)                          not null,        /*已销调整前税前金额*/
   PRCDB036             NUMBER(12,2)                          not null,        /*已销调整前含税金额*/
   PRCDB037             NUMBER(12,2)                          not null,        /*已销调整后税前金额*/
   PRCDB038             NUMBER(12,2)                          not null,        /*已销调整后含税金额*/
   PRCDB039             VARCHAR2(30),                                          /*红字应付暂估单号  */
   PRCDB040             VARCHAR2(30),                                          /*蓝字应付暂估单号  */  
   PRCDB041             NUMBER(18,3),                                          /*已结算数量        */
   PRCDB042             VARCHAR2(1)                           not null,        /*商品服务属性      */
   PRCDB043             VARCHAR2(255),                                         /*备注              */
   PRCDB044             INTEGER                               not null,        /*供应商            */      
   PRCDB045             VARCHAR2(1)                           not null,        /*经营方式          */      
   CREATE_USER          VARCHAR2(12),                                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                                          /*修改人员         */
   MODI_DATE            DATE,                                                  /*修改日期         */
   FLAG                 NUMBER(1),                                             /*资料状态         */
   constraint PK_TB_PRCDB primary key (PRCDB_ID)
);
create unique index AK_TB_PRCDB on TB_PRCDB (PRCDB_ID,PRCDB002,PRCDB005);
create sequence SEQ_TB_PRCDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDB to public;
grant index  on TB_PRCDB to public;
grant update on TB_PRCDB to public; 
grant delete on TB_PRCDB to public;  
grant insert on TB_PRCDB to public; 
grant select on SEQ_TB_PRCDB to public;   