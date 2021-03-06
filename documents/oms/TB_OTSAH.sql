20141216 crate by sundan
================================================================================
表结构代码:TB_OTSAH
表结构名称:合同应收信息表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_OTSAH;
drop index AK_TB_OTSAH;
drop table TB_OTSAH;
create table TB_OTSAH  (
   OTSAH_ID             INTEGER                         not null,  /*合同应收信息ID              */
   OTSAH001             VARCHAR2(4)                     not null,  /*公司代码                    */
   OTSAH002             VARCHAR2(8)                     not null,  /*商场编码                    */
   OTSAH003             VARCHAR2(13),                              /*不动产编号                  */
   OTSAH004             VARCHAR2(13)                    not null,	 /*合同编号                    */
   OTSAH005             VARCHAR2(2) ,                              /*统计数据类别                */
   OTSAH006             NUMBER(5),			                           /*序号                        */
   OTSAH007             VARCHAR2(4),			                         /*流类型                      */
   OTSAH008             VARCHAR2(4),			                         /*记账公司代码                */
   OTSAH009             DATE,				                               /*合同到期日                  */
   OTSAH010             NUMBER(22,2),				                       /*金额                        */
   OTSAH011             VARCHAR2(20),                              /*最后修改人                  */
   OTSAH012             DATE,                                      /*最后修改日期                */
   OTSAH013             VARCHAR2(8),                               /*最后修改时间                */
   OTSAH014             VARCHAR2(1),                               /*消息类型                    */
   OTSAH015             VARCHAR2(60),                              /*消息文本                    */
   OTSAH016             DATE,                                      /*OMS处理日期                 */
   OTSAH017             VARCHAR2(8),                               /*OMS处理时间                 */
   RESERVED1            VARCHAR2(60),                              /*备用字段1                   */
   RESERVED2            VARCHAR2(60),                              /*备用字段2                   */
   RESERVED3            VARCHAR2(60),                              /*备用字段3                   */
   RESERVED4            VARCHAR2(60),                              /*备用字段4                   */
   RESERVED5            VARCHAR2(60),				   /*备用字段5                   */
   RESERVED6            VARCHAR2(60),                              /*备用字段6                   */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   operatebatchno       VARCHAR2(100),                             /*批号*/
   constraint PK_TB_OTSAH primary key (OTSAH_ID)
);
--create unique index AK_TB_OTSAH on TB_OTSAH (OTSAH_ID);
create sequence SEQ_TB_OTSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAH to public;
grant index  on TB_OTSAH to public;
grant update on TB_OTSAH to public; 
grant delete on TB_OTSAH to public;  
grant insert on TB_OTSAH to public; 
grant select on SEQ_TB_OTSAH to public;   