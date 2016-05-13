20141216 crate by sundan
================================================================================
表结构代码:TB_OTSAI
表结构名称:对应实收数据表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_OTSAI;
drop index AK_TB_OTSAI;
drop table TB_OTSAI;
create table TB_OTSAI  (
   OTSAI_ID             INTEGER                         not null,  /*对应实收数据ID              */
   OTSAI001             VARCHAR2(4)                     not null,  /*公司代码                    */
   OTSAI002             VARCHAR2(8)                     not null,  /*商场编码                    */
   OTSAI003             VARCHAR2(13),                              /*不动产编号                  */
   OTSAI004             VARCHAR2(13)                     not null,	 /*合同编号                    */
   OTSAI005             VARCHAR2(2),                              /*统计数据类别                */
   OTSAI006             VARCHAR2(1),			                         /*数据来源                    */
   OTSAI007             VARCHAR2(32),			                         /*KEY                         */
   OTSAI008             VARCHAR2(5),			                         /*项目                        */
   OTSAI009             VARCHAR2(2),				                       /*统计识别码                  */
   OTSAI010             DATE,				                               /*付款日期                    */
   OTSAI011             VARCHAR2(4),				                       /*记账公司代码                */
   OTSAI012             VARCHAR2(4),				                       /*费用项                      */
   OTSAI013             VARCHAR2(20),				                       /*费用名                      */
   OTSAI014             VARCHAR2(4),				                       /*收款方式                    */
   OTSAI015             VARCHAR2(20),				                       /*收款方式名                  */
   OTSAI016             VARCHAR2(4),				                       /*业务类型                    */
   OTSAI017             VARCHAR2(20),				                       /*业务类型名                  */
   OTSAI018             VARCHAR2(30),				                       /*OMS单号                     */
   OTSAI019             VARCHAR2(50),				                       /*收益期                      */
   OTSAI020             NUMBER(22,2),				                       /*金额                        */
   OTSAI021             DATE,					                             /*记账日期                    */
   OTSAI022             VARCHAR2(10),			                         /*凭证编号                    */
   OTSAI023             VARCHAR2(20),                              /*最后修改人                  */
   OTSAI024             DATE,                                      /*最后修改日期                */
   OTSAI025             VARCHAR2(8),                               /*最后修改时间                */
   OTSAI026             VARCHAR2(1),                               /*消息类型                    */
   OTSAI027             VARCHAR2(60),                              /*消息文本                    */
   OTSAI028             DATE,                                      /*OMS处理日期                 */
   OTSAI029             VARCHAR2(8),                               /*OMS处理时间                 */
   RESERVED1            VARCHAR2(60),                              /*备用字段1                   */
   RESERVED2            VARCHAR2(60),                              /*备用字段2                   */
   RESERVED3            VARCHAR2(60),                              /*备用字段3                   */
   RESERVED4            VARCHAR2(60),                              /*备用字段4                   */
   RESERVED5            VARCHAR2(60),                              /*备用字段5                   */
   RESERVED6            VARCHAR2(60),                              /*备用字段6                   */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   operatebatchno       VARCHAR2(100),                             /*状态*/
   constraint PK_TB_OTSAI primary key (OTSAI_ID)
);
--create unique index AK_TB_OTSAI on TB_OTSAI (OTSAI_ID);
create sequence SEQ_TB_OTSAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAI to public;
grant index  on TB_OTSAI to public;
grant update on TB_OTSAI to public; 
grant delete on TB_OTSAI to public;  
grant insert on TB_OTSAI to public; 
grant select on SEQ_TB_OTSAI to public;   