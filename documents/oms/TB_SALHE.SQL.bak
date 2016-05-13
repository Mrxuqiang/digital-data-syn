
/*
================================================================================
表结构代码:TB_SALHE
表结构名称:自营销退单明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHE;
drop index AK_TB_SALHE;
drop table TB_SALHE;
create table TB_SALHE  (
   SALHE_ID             INTEGER                         not null,   /*销退单明细ID  */
   SALHE001             INTEGER                         not null,   /*销退单ID      */
   SALHE002             INTEGER,                                    /*销售单明细ID  */
   SALHE003             INTEGER                         not null,   /*商品ID        */
   SALHE004             VARCHAR2(1)                      , 	    /*是否组装品    */
   SALHE005             VARCHAR2(1),                                /*是否成份      */
   SALHE006             INTEGER,                                   /*所属组装品ID   */
   SALHE007             INTEGER,                                   /*维度1ID        */
   SALHE008             INTEGER,                                   /*维度2ID        */
   SALHE009             INTEGER,                                   /*维度3ID        */
   SALHE010             INTEGER,                                   /*维度4ID        */
   SALHE011             INTEGER,                                   /*维度5ID        */
   SALHE012             INTEGER                         not null,  /*仓库ID         */
   SALHE013             INTEGER,                                   /*库位ID         */
   SALHE014             INTEGER                         not null,  /*单位ID         */
   SALHE015             NUMBER(18,3)                    not null,  /*退货数量       */  -- update by hansf 实退数量
   SALHE016             NUMBER(18,2)                    not null,  /*单价           */
   SALHE017             NUMBER(12,2)                    not null,  /*折扣率         */
   SALHE018             NUMBER(22,2)                    not null,  /*优惠金额       */
   SALHE019             INTEGER,                                   /*折扣人         */
   SALHE020             NUMBER(18,2)                    not null,  /*折后单价       */
   SALHE021             NUMBER(18,2)                    not null,  /*退货金额       */
   SALHE022             INTEGER                           not null,/*销项税ID       */
   SALHE023             NUMBER(12,2)                    not null,  /*税率(%)        */
   SALHE024             VARCHAR2(1),                    not null,  /*是否定制商品   */ -- update by hansf 销售属性
   SALHE025             DATE,                                   ,  /*取货日期       */
   SALHE026             NUMBER(12,2)                    	  ,      /*扣率           */
   SALHE027             VARCHAR2(255),                             /*备注           */
   SALHE028             VARCHAR2(1),                    not null,  /*商品服务属性   */
   SALHE029             VARCHAR2(30),                     ,  /*子套件关系生成随机码 */   --ADD 20100512
   SALHE030             NUMBER(18,3),                              /*未采退货量     */
   SALHE031             NUMBER(18,3),                              /*已采未发退货量 */ -- update by hansf 已采未入库退货量
   SALHE032             NUMBER(18,3),                              /*已发退货量     */ -- update by hansf 在库退货量
   SALHE033             NUMBER(18,3),                              /*已发退货量     */ -- add by hansf 20100630
   SALHE034             NUMBER(18,3),                              /*非实退数量     */ -- add by hansf 20100630
   SALHE035             NUMBER(18,3),                             /*取货数量 */ 
   SALHE036             NUMBER(18,3),                             /*排车量   */ 
   SALHE037             NUMBER(22,3)                             ,  /*结账数量*/ --add gaoxl20101019
   SALHE038             NUMBER(22,3)                             ,  /*结账金额*/ --add gaoxl20101019   
   SALHE039             NUMBER(18,2)                    not null,  /*本次退款金额       */--add by xiechun 
   CREATE_USER          VARCHAR2(12),                              /*建立人员       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                      /*建立日期       */
   MODIFIER             VARCHAR2(12),                              /*修改人员       */
   MODI_DATE            DATE,                                      /*修改日期       */
   FLAG                 NUMBER(1),                                 /*资料状态       */
   constraint PK_TB_SALHE primary key (SALHE_ID)
);
create sequence SEQ_TB_SALHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHE to public;
grant index  on TB_SALHE to public;
grant update on TB_SALHE to public; 
grant delete on TB_SALHE to public;  
grant insert on TB_SALHE to public; 
grant select on SEQ_TB_SALHE to public;   
