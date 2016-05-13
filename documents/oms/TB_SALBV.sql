/*
================================================================================
表结构代码:TB_SALBV
表结构名称:订单销退单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBV;
drop index AK_TB_SALBV;
drop table TB_SALBV;
create table TB_SALBV  (
   SALBV_ID             INTEGER                         not null,  /*订单销退单商品ID                               */
   SALBV001             INTEGER                         not null,  /*订单销退单ID                                   */
   SALBV002             INTEGER,                                   /*来源单商品ID                                   */
   SALBV003             INTEGER,                                   /*商品条码ID                                     */
   SALBV004             INTEGER                         not null,  /*商品编码ID                                     */
   SALBV005             VARCHAR2(1)                     not null,  /*是否组装品                                     */
   SALBV006             VARCHAR2(1),                               /*是否成份                                       */
   SALBV007             INTEGER,                                   /*所属组装品ID                                   */
   SALBV008             VARCHAR2(1),                               /*是否替代品                                     */
   SALBV009             INTEGER                         not null,  /*原商品ID                                       */
   SALBV010             INTEGER,                                   /*单套单位ID        				    */
   SALBV011             NUMBER(18,3),                              /*单套数量          				    */
   SALBV012             VARCHAR2(1)                     not null,  /*经营方式                                       */
   SALBV013             INTEGER                         not null,  /*客商ID                                         */
   SALBV014             NUMBER(5),                                 /*供货天数                                       */
   SALBV015             INTEGER                         not null,  /*品牌ID                                         */
   SALBV016             INTEGER                         not null,  /*品类ID                                         */
   SALBV017             INTEGER,                                   /*维度1ID                                        */
   SALBV018             INTEGER,                                   /*维度2ID                                        */
   SALBV019             INTEGER,                                   /*维度3ID                                        */
   SALBV020             INTEGER,                                   /*维度4ID                                        */
   SALBV021             INTEGER,                                   /*维度5ID                                        */
   SALBV022             INTEGER                         not null,  /*销退单位ID                                     */
   SALBV023             NUMBER(12,2)                    not null,  /*换算率                                         */
   SALBV024             INTEGER                         not null,  /*仓库ID                                         */
   SALBV025             NUMBER(18,3),                              /*可用库存量                                     */
   SALBV026             NUMBER(12,2)                    not null,  /*原售价                                         */
   SALBV027             NUMBER(12,2)                    not null,  /*单价                                           */
   SALBV028             NUMBER(18,3)                    not null,  /*退货数量                                       */
   SALBV029             INTEGER                         not null,  /*税率ID                                         */
   SALBV030             NUMBER(12,2)                    not null,  /*税率(%)                                        */
   SALBV031             NUMBER(12,2)                    not null,  /*未税金额                                       */
   SALBV032             NUMBER(12,2)                    not null,  /*含税金额                                       */
   SALBV033             NUMBER(12,2),                              /*原扣率(%)                                      */
   SALBV034             NUMBER(12,2),                              /*新扣率(%)                                      */
   SALBV035             NUMBER(12,2),                              /*单项折价                                       */
   SALBV036             NUMBER(12,2),                              /*小计折价                                       */
   SALBV037             NUMBER(12,2),                              /*批发折价                                       */
   SALBV038             NUMBER(12,2),                              /*会员折价                                       */
   SALBV039             NUMBER(12,2),                              /*会员折扣卡折价                                 */
   SALBV040             NUMBER(12,2),                              /*促销特价折价                                   */
   SALBV041             NUMBER(12,2),                              /*促销折扣折价                                   */
   SALBV042             NUMBER(12,2),                              /*促销组合折价                                   */
   SALBV043             NUMBER(12,2)                    not null,  /*折后未税金额(不含交款折价)                     */
   SALBV044             NUMBER(12,2)                    not null,  /*折后含税金额(不含交款折价)                     */
   SALBV045             NUMBER(12,2),                              /*促销交款折价                                   */
   SALBV046             NUMBER(12,2),                              /*订单实退款金额                                 */
   SALBV047             NUMBER(12,2)                    not null,  /*折后单价                                       */
   SALBV048             NUMBER(12,2)                    not null,  /*折后未税金额                                   */
   SALBV049             NUMBER(12,2)                    not null,  /*折后含税金额                                   */
   SALBV050             VARCHAR2(255),                             /*备注                                           */
   SALBV051             NUMBER(18,3),                              /*可退数量                                       */
   SALBV052             NUMBER(12,2),                              /*可退金额                                       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBV primary key (SALBV_ID)
);
create index AK_TB_SALBV on TB_SALBV (SALBV_ID,SALBV001,SALBV004);
create sequence SEQ_TB_SALBV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBV to public;
grant index  on TB_SALBV to public;
grant update on TB_SALBV to public; 
grant delete on TB_SALBV to public;  
grant insert on TB_SALBV to public; 
grant select on SEQ_TB_SALBV to public;   