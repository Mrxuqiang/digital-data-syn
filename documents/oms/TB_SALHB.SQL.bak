
/*
================================================================================
表结构代码:TB_SALHB
表结构名称:销售单明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHB;
drop index AK_TB_SALHB;
drop table TB_SALHB;
create table TB_SALHB  (
   SALHB_ID             INTEGER                         not null,  /*销售单明细ID            */
   SALHB001             INTEGER                         not null,  /*销售单ID                */
   SALHB002             INTEGER                         not null,  /*商品ID                  */
   SALHB003             VARCHAR2(1)                             ,  /*是否组装品              */
   SALHB004             VARCHAR2(1),                               /*是否成份                */
   SALHB005             INTEGER,                                   /*所属组装品ID            */
   SALHB006             INTEGER,                                   /*维度1ID                 */
   SALHB007             INTEGER,                                   /*维度2ID                 */
   SALHB008             INTEGER,                                   /*维度3ID                 */
   SALHB009             INTEGER,                                   /*维度4ID                 */
   SALHB010             INTEGER,                                   /*维度5ID                 */
   SALHB011             INTEGER                         not null,  /*仓库ID                  */
   SALHB012             INTEGER                         not null,  /*库位ID                  */
   SALHB013             INTEGER                         not null,  /*单位ID                  */
   SALHB014             NUMBER(18,3)                    not null,  /*订货数量                */
   SALHB015             NUMBER(18,2)                    not null,  /*单价                    */
   SALHB016             NUMBER(12,2)                    not null,  /*折扣率                  */
   SALHB017             NUMBER(22,2)                    not null,  /*优惠金额                */
   SALHB018             INTEGER,                                   /*折扣人                  */
   SALHB019             NUMBER(18,2)                    not null,  /*折后单价                */
   SALHB020             NUMBER(18,3)                    not null,  /*金额                    */
   SALHB021             NUMBER(18,3)                    ,          /*采购量                  */
   SALHB022             NUMBER(18,3)                    ,          /*配送量                  */
   SALHB023             NUMBER(18,3)                    ,          /*调拨量                  */
   SALHB024             NUMBER(18,3)                    ,          /*采购在途数量            */-- modify by xiechu 20110328 在途数
   SALHB025             NUMBER(18,3)                    ,          /*配送在途数量            */
   SALHB026             NUMBER(18,3)                    ,          /*调拨在途数量            */
   SALHB027             NUMBER(18,3)                    ,          /*入库数量                */
   SALHB028             NUMBER(18,3)                    ,          /*退货数量                */
   SALHB029             NUMBER(18,3)                    ,          /*出库数量                */
   SALHB030             NUMBER(18,3)                    ,          /*出库金额                */
   SALHB031             NUMBER(18,3)                    ,          /*结账数量                */
   SALHB032             NUMBER(18,3)                    ,          /*结账金额                */
   SALHB033             NUMBER(18,3)                    ,          /*整单优惠分摊金额        */
   SALHB034             INTEGER                         not null,  /*销项税ID                */
   SALHB035             NUMBER(12,2)                    not null,  /*税率(%)                 */
   SALHB036             VARCHAR2(1),                    not null,  /*销售属性                */
   SALHB037             VARCHAR2(1),                    not null,  /*商品服务属性            */   
   SALHB038             DATE                            not null,  /*提货日期                */
   SALHB039             NUMBER(12,2)                            ,  /*扣率                    */
   SALHB040             VARCHAR2(255),                             /*备注                    */
   SALHB041             VARCHAR2(30),                              /*子套件关系生成随机码    */
   SALHB042             NUMBER(18,3)                    ,          /*释放量                  */ --add 0706
   SALHB043             NUMBER(18,3)                    ,          /*排车量                  */ --add 0706
   SALHB044             INTEGER                                 ,  /*出货仓库                */ --add 0807
   SALHB045             INTEGER                                 ,  /*出货库位                */ --add 0807
   SALHB046             NUMBER(18,3)                    ,          /*特价折扣率              */ --20111219 add by xiechun 
   SALHB047             NUMBER(18,3),                              /*已排车金额              */
   SALHB048             VARCHAR2(255),                             /*备注2                   */
   SALHB049             NUMBER(18,3),                              /*采购未到货量            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_SALHB primary key (SALHB_ID)
);
create sequence SEQ_TB_SALHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHB to public;
grant index  on TB_SALHB to public;
grant update on TB_SALHB to public; 
grant delete on TB_SALHB to public;  
grant insert on TB_SALHB to public; 
grant select on SEQ_TB_SALHB to public;   
