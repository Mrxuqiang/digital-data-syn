/*
20130806 add by gaoxl for 信用分类增加赔付金额和符合赔付标准
*/

/*
================================================================================
表结构代码:TB_SERII
表结构名称:送货安装回访单
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERII;
drop index AK_TB_SERII;
drop table TB_SERII;
create table TB_SERII  (
   SERII_ID             INTEGER                         not null,  /*回访单主ID           */
   SERII001             INTEGER                         not null,  /*回访单别             */
   SERII002             VARCHAR2(30),                              /*回访单号             */
   SERII003             DATE,                                      /*回访日期             */
   SERII004             INTEGER,                                   /*销售单号             */   
   SERII005             INTEGER,                                   /*商场                 */
   SERII006             INTEGER,                                   /*展位号               */
   SERII007             INTEGER,                                   /*品牌                 */
   SERII008             DATE,                                      /*销售日期             */
   SERII009             VARCHAR2(30),                              /*顾客姓名             */
   SERII010             VARCHAR2(10),                              /*联系电话             */
   SERII011             DATE,                                      /*约定送货日期         */
   SERII012             DATE,                                      /*实际送货日期         */
   SERII013             VARCHAR2(255),                             /*送货地址             */
   SERII014             DATE,                                      /*顾客反馈约定送货日期 */
   SERII015             DATE,                                      /*顾客反馈实际送货日期 */
   SERII016             NUMBER(4),                                 /*实际延迟天数         */
   SERII017             VARCHAR2(1),                               /*商品质量             */  
   SERII018             VARCHAR2(1),                               /*商场服务人员质量     */
   SERII019             VARCHAR2(1),                               /*展厅营业人员服务质量 */
   SERII020             VARCHAR2(1),                               /*展厅三工人员服务质量 */
   SERII021             VARCHAR2(255),                             /*备注                 */
   SERII022             INTEGER,                                   /*回访人               */
   SERII023             NUMBER(22,2),                              /*赔付金额             */ 
   SERII024             VARCHAR2(1),                               /*符合赔付标准         */ 
   SERII025             VARCHAR2(1),                               /*是否异常 0.否 1.是         */ 
   SERII026             VARCHAR2(1),                               /*异常原因    1.实际没送货 2.送错货 3.货没送全 4.送假货 9.其他  */  --20141103 add by sundan 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_SERII primary key (SERII_ID)
);
create unique index AK_TB_SERII on TB_SERII (SERII004,FLAG);
create sequence SEQ_TB_SERII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERII to public;
grant index  on TB_SERII to public;
grant update on TB_SERII to public; 
grant delete on TB_SERII to public;  
grant insert on TB_SERII to public; 
grant select on SEQ_TB_SERII to public;   