================================================================================
表结构代码:TB_OTCDD
表结构名称:送货安装回访单
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTCDD;
drop index AK_TB_OTCDD;
drop table TB_OTCDD;
create table TB_OTCDD  (
   OTCDD_ID             INTEGER                         not null,  /*自动增长ID           */
   OTCDD001             VARCHAR2(30),                   not null   /*回访单号             */
   OTCDD002             DATE,                                      /*回访日期             */
   OTCDD003             VARCHAR2(30),                              /*销售单号             */   
   OTCDD004             INTEGER,                                   /*商场                 */
   OTCDD005             INTEGER,                                   /*展位号               */
   OTCDD006             INTEGER,                                   /*品牌                 */
   OTCDD007             DATE,                                      /*销售日期             */
   OTCDD008             VARCHAR2(30),                              /*顾客姓名             */
   OTCDD009             VARCHAR2(10),                              /*联系电话             */
   OTCDD010             DATE,                                      /*约定送货日期         */
   OTCDD011             DATE,                                      /*实际送货日期         */
   OTCDD012             VARCHAR2(255),                             /*送货地址             */
   OTCDD013             DATE,                                      /*顾客反馈约定送货日期 */
   OTCDD014             DATE,                                      /*顾客反馈实际送货日期 */
   OTCDD015             NUMBER(4),                                 /*实际延迟天数         */
   OTCDD016             VARCHAR2(1),                               /*商品质量             */  
   OTCDD017             VARCHAR2(1),                               /*商场服务人员质量     */
   OTCDD018             VARCHAR2(1),                               /*展厅营业人员服务质量 */
   OTCDD019             VARCHAR2(1),                               /*展厅工人员服务质量 */
   OTCDD020             VARCHAR2(255),                             /*备注                 */
   OTCDD021             INTEGER,                                   /*回访人               */
   OTCDD022             NUMBER(22,2),                              /*赔付金额             */ 
   OTCDD023             VARCHAR2(255),                             /*赔付信息备注         */   
   SY_STATE             VARCHAR2(1),                               /*状态   0：表示CC增量回传、1：表示CC变更回传 9 结束完成同步状态cc上传的数据已传到ERP库*/

   constraint PK_TB_OTCDD primary key (OTCDD_ID)
);
create unique index AK_TB_OTCDD on TB_OTCDD (OTCDD001,OTCDD004);
create sequence SEQ_TB_OTCDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTCDD to public;
grant index  on TB_OTCDD to public;
grant update on TB_OTCDD to public; 
grant delete on TB_OTCDD to public;  
grant insert on TB_OTCDD to public; 
grant select on SEQ_TB_OTCDD to public;   