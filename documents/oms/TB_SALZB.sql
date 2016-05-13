/*
================================================================================
表结构代码:TB_SALZB
表结构名称:销售单子表外键表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALZB;
drop index AK_TB_SALZB;
drop table TB_SALZB;
create table TB_SALZB  (
   SALZB_ID             INTEGER                         not null,  /*销售单子表外键表ID */
   SALZB001             INTEGER                         not null,  /*销售单子表ID       */
   SALZB002             INTEGER                                 ,  /*商品条码ID         */
   SALZB003             VARCHAR2(32),                              /*条码号             */
   SALZB004             INTEGER                                 ,  /*商品ID            */
   SALZB005             VARCHAR2(30),				    /*商品编号          */
   SALZB006             VARCHAR2(255),				                     /*商品全称          */
   SALZB007             VARCHAR2(100),                              /*规格型号          */
   SALZB008             INTEGER,                                   /*单套单位ID        */
   SALZB009             VARCHAR2(4)                             ,  /*单位代码          */
   SALZB010             VARCHAR2(20)                            ,  /*单位名称          */
   SALZB011             VARCHAR2(1),                               /*可定制            */
   SALZB012             VARCHAR2(1),                               /*价格类型可定货(是否明码实价)*/
   SALZB013             VARCHAR2(2),                               /*规格单位          */
   SALZB014             INTEGER                                 ,  /*客商ID            */
   SALZB015             VARCHAR2(10) ,                             /*客商号            */
   SALZB016             VARCHAR2(255)   ,                           /*客商简称          */
   SALZB017             INTEGER,                                   /*主品牌ID(系列)    */
   SALZB018             VARCHAR2(10),                              /*系列代码           */
   SALZB019             VARCHAR2(100),                              /*系列名称           */
   SALZB020             INTEGER,                                   /*品类ID             */
   SALZB021             VARCHAR2(16),                              /*品类代码           */
   SALZB022             VARCHAR2(100),                              /*品类名称           */
   SALZB023             INTEGER,                                   /*维度1ID            */
   SALZB024             VARCHAR2(8)                             ,  /*维度1项代码        */
   SALZB025             VARCHAR2(32)                            ,  /*维度1项描述        */
   SALZB026             INTEGER,                                   /*维度2ID            */
   SALZB027             VARCHAR2(8)                             ,  /*维度2项代码        */
   SALZB028             VARCHAR2(32)                            ,  /*维度2项描述        */
   SALZB029             INTEGER,                                   /*维度3ID            */
   SALZB030             VARCHAR2(8)                             ,  /*维度3项代码        */
   SALZB031             VARCHAR2(32)                            ,  /*维度3项描述        */
   SALZB032             INTEGER,                                   /*维度4ID            */
   SALZB033             VARCHAR2(8)                             ,  /*维度4项代码        */
   SALZB034             VARCHAR2(32)                            ,  /*维度4项描述        */
   SALZB035             INTEGER,                                   /*维度5ID            */
   SALZB036             VARCHAR2(8)                             ,  /*维度5项代码        */
   SALZB037             VARCHAR2(32)                            ,  /*维度5项描述        */
   SALZB038             INTEGER                                 ,  /*销售单位ID         */
   SALZB039             VARCHAR2(4)                             ,  /*销售单位代码       */
   SALZB040             VARCHAR2(20)                            ,  /*销售单位名称       */
   SALZB041             INTEGER,                                   /*仓库ID             */
   SALZB042             VARCHAR2(8)                             ,  /*仓库代码          */
   SALZB043             VARCHAR2(64)                            ,  /*仓库名称          */
   SALZB044             INTEGER                                 ,  /*税种ID            */
   SALZB045             VARCHAR2(4)                             ,  /*税种代码           */
   SALZB046             VARCHAR2(30)                            ,  /*税种名称           */
   SALZB047             VARCHAR2(1),                               /*含税               */
   SALZB048             NUMBER(12,2)                            ,  /*最低售价           */
   SALZB049             VARCHAR2(4)                             ,  /*SALBI072C0         */
   SALZB050             VARCHAR2(30)                            ,  /*SALBI072C1         */
   SALZB051             NUMBER(12,2)                            ,  /*SALBI072C2         */
   SALZB052             VARCHAR2(1)                             ,  /*pubhd098           */
   SALZB053             VARCHAR2(1)                             ,  /*pubhb040           */
   SALZB054             VARCHAR2(1)                             ,  /*pubhb099来源于工厂 */
   FLAG                 NUMBER,                                    /*资料状态         */
   constraint PK_TB_SALZB primary key (SALZB_ID)
);
create unique index AK_TB_SALZB on TB_SALZB (SALZB001);
create sequence SEQ_TB_SALZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZB to public;
grant index  on TB_SALZB to public;
grant update on TB_SALZB to public; 
grant delete on TB_SALZB to public;  
grant insert on TB_SALZB to public; 
grant select on SEQ_TB_SALZB to public;   