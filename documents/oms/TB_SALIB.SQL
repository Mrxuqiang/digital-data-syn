
/*
================================================================================
表结构代码:TB_SALIB
表结构名称:报价单明细表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_SALIB;
drop index AK_TB_SALIB;
drop table TB_SALIB;
create table TB_SALIB  (
   SALIB_ID             INTEGER                         not null,  /*报价单明细ID            */
   SALIB001             INTEGER                         not null,  /*报价单ID                */
   SALIB002             INTEGER                         not null,  /*商品ID                  */
   SALIB003             VARCHAR2(1)                             ,  /*是否组装品              */
   SALIB004             VARCHAR2(1),                               /*是否成份                */
   SALIB005             INTEGER,                                   /*所属组装品ID            */
   SALIB006             INTEGER,                                   /*维度1ID                 */
   SALIB007             INTEGER,                                   /*维度2ID                 */
   SALIB008             INTEGER,                                   /*维度3ID                 */
   SALIB009             INTEGER,                                   /*维度4ID                 */
   SALIB010             INTEGER,                                   /*维度5ID                 */
   SALIB011             INTEGER                         not null,  /*仓库ID                  */
   SALIB012             INTEGER                         not null,  /*库位ID                  */
   SALIB013             INTEGER                         not null,  /*单位ID                  */
   SALIB014             NUMBER(18,3)                    not null,  /*订货数量                */
   SALIB015             NUMBER(18,2)                    not null,  /*单价                    */
   SALIB016             NUMBER(12,2)                    not null,  /*折扣率                  */
   SALIB017             NUMBER(22,2)                    not null,  /*优惠金额                */
   SALIB018             INTEGER,                                   /*折扣人                  */
   SALIB019             NUMBER(18,2)                    not null,  /*折后单价                */
   SALIB020             NUMBER(18,3)                    not null,  /*金额                    */
   SALIB021             NUMBER(18,3)                    ,          /*采购量                  */
   SALIB022             NUMBER(18,3)                    ,          /*配送量                  */
   SALIB023             NUMBER(18,3)                    ,          /*调拨量                  */
   SALIB024             NUMBER(18,3)                    ,          /*采购在途数量            */ 
   SALIB025             NUMBER(18,3)                    ,          /*配送在途数量            */
   SALIB026             NUMBER(18,3)                    ,          /*调拨在途数量            */
   SALIB027             NUMBER(18,3)                    ,          /*入库数量                */
   SALIB028             NUMBER(18,3)                    ,          /*退货数量                */
   SALIB029             NUMBER(18,3)                    ,          /*出库数量                */
   SALIB030             NUMBER(18,3)                    ,          /*出库金额                */
   SALIB031             NUMBER(18,3)                    ,          /*结账数量                */
   SALIB032             NUMBER(18,3)                    ,          /*结账金额                */
   SALIB033             NUMBER(18,3)                    ,          /*整单优惠分摊金额        */
   SALIB034             INTEGER                         not null,  /*销项税ID                */
   SALIB035             NUMBER(12,2)                    not null,  /*税率(%)                 */
   SALIB036             VARCHAR2(1),                    not null,  /*销售属性                */
   SALIB037             VARCHAR2(1),                    not null,  /*商品服务属性            */   
   SALIB038             DATE                            not null,  /*提货日期                */
   SALIB039             NUMBER(12,2)                            ,  /*扣率                    */
   SALIB040             VARCHAR2(255),                             /*备注                    */
   SALIB041              VARCHAR2(30),                             /*子套件关系生成随机码    */
   SALIB042             NUMBER(18,3)                    ,          /*释放量                  */  
   SALIB043             NUMBER(18,3)                    ,          /*排车量                  */  
   SALIB044             INTEGER                                 ,  /*出货仓库                */  
   SALIB045             INTEGER                                 ,  /*出货库位                */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_SALIB primary key (SALIB_ID)
);
create sequence SEQ_TB_SALIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALIB to public;
grant index  on TB_SALIB to public;
grant update on TB_SALIB to public; 
grant delete on TB_SALIB to public;  
grant insert on TB_SALIB to public; 
grant select on SEQ_TB_SALIB to public;   
