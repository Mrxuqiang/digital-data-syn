
/*
================================================================================
表结构代码:TB_SALBP
表结构名称:销退单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBP;
drop index AK_TB_SALBP;
drop table TB_SALBP;
create table TB_SALBP  (
   SALBP_ID             INTEGER                         not null,  /*销退单商品ID                                   */
   SALBP001             INTEGER                         not null,  /*销退单ID                                       */
   SALBP002             INTEGER,                                   /*来源单商品ID                                   */
   SALBP003             INTEGER,                                   /*商品条码ID                                     */
   SALBP004             INTEGER                         not null,  /*商品编码ID                                     */
   SALBP005             VARCHAR2(1)                     not null,  /*是否组装品                                     */
   SALBP006             VARCHAR2(1),                               /*是否成份                                       */
   SALBP007             INTEGER,                                   /*所属组装品ID                                   */
   SALBP008             VARCHAR2(1),                               /*是否替代品                                     */
   SALBP009             INTEGER                         not null,  /*原商品ID                                       */
   SALBP010             INTEGER,                                   /*单套单位ID        				    */
   SALBP011             NUMBER(18,3),                              /*单套数量          				    */
   SALBP012             VARCHAR2(1)                     not null,  /*经营方式                                       */
   SALBP013             INTEGER                         not null,  /*客商ID                                         */
   SALBP014             INTEGER                         not null,  /*品牌ID                                         */
   SALBP015             NUMBER(5),                                 /*供货天数                                       */
   SALBP016             INTEGER                         not null,  /*品类ID                                         */
   SALBP017             INTEGER,                                   /*维度1ID                                        */
   SALBP018             INTEGER,                                   /*维度2ID                                        */
   SALBP019             INTEGER,                                   /*维度3ID                                        */
   SALBP020             INTEGER,                                   /*维度4ID                                        */
   SALBP021             INTEGER,                                   /*维度5ID                                        */
   SALBP022             INTEGER                         not null,  /*销退单位ID                                     */
   SALBP023             NUMBER(12,2)                    not null,  /*换算率                                         */
   SALBP024             INTEGER                         not null,  /*仓库ID                                         */
   SALBP025             NUMBER(18,3),                              /*可用库存量                                     */
   SALBP026             NUMBER(12,2)                    not null,  /*原售价                                         */
   SALBP027             NUMBER(12,2)                    not null,  /*单价                                           */
   SALBP028             NUMBER(18,3)                    not null,  /*退货数量                                       */
   SALBP029             NUMBER(18,3),                              /*已结数量                                       */
   SALBP030             INTEGER                         not null,  /*税率ID                                         */
   SALBP031             NUMBER(12,2)                    not null,  /*税率(%)                                        */
   SALBP032             NUMBER(12,2)                    not null,  /*未税金额                                       */
   SALBP033             NUMBER(12,2)                    not null,  /*含税金额                                       */
   SALBP034             NUMBER(12,2),                              /*原扣率(%)                                      */
   SALBP035             NUMBER(12,2),                              /*新扣率(%)                                      */
   SALBP036             NUMBER(12,2),                              /*单项折价                                       */
   SALBP037             NUMBER(12,2),                              /*小计折价                                       */
   SALBP038             NUMBER(12,2),                              /*批发折价                                       */
   SALBP039             NUMBER(12,2),                              /*会员折价                                       */
   SALBP040             NUMBER(12,2),                              /*会员折扣卡折价                                 */
   SALBP041             NUMBER(12,2),                              /*促销特价折价                                   */
   SALBP042             NUMBER(12,2),                              /*促销折扣折价                                   */
   SALBP043             NUMBER(12,2),                              /*促销组合折价                                   */
   SALBP044             NUMBER(12,2)                    not null,  /*折后未税金额(不含交款折价)                     */
   SALBP045             NUMBER(12,2)                    not null,  /*折后含税金额(不含交款折价)                     */
   SALBP046             NUMBER(12,2),                              /*交款折价扣减                                   */
   SALBP047             NUMBER(12,2),                              /*实退款金额                                     */
   SALBP048             NUMBER(12,2)                    not null,  /*折后单价                                       */
   SALBP049             NUMBER(12,2)                    not null,  /*折后未税金额                                   */
   SALBP050             NUMBER(12,2)                    not null,  /*折后含税金额                                   */
   SALBP051             VARCHAR2(30),                              /*主批号                                         */
   SALBP052             VARCHAR2(30),                              /*辅批号                                         */
   SALBP053             NUMBER(18,3),                              /*可退数量                                       */
   SALBP054             NUMBER(12,2),                              /*可退金额                                       */
   SALBP055             INTEGER,                                   /*应付暂估单ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_SALBP primary key (SALBP_ID)
);
create index AK_TB_SALBP on TB_SALBP (SALBP_ID,SALBP001,SALBP004);
create sequence SEQ_TB_SALBP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBP to public;
grant index  on TB_SALBP to public;
grant update on TB_SALBP to public; 
grant delete on TB_SALBP to public;  
grant insert on TB_SALBP to public; 
grant select on SEQ_TB_SALBP to public;   