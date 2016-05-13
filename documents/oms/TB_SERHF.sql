/*
20130716 add by gaoxl for 红星，新增：SERHF015~SERHF019
*/
/*
================================================================================
表结构代码:TB_SERHF
表结构名称:标价签打印申请主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERHF;
drop index AK_TB_SERHF;
drop table TB_SERHF;
create table TB_SERHF  (
   SERHF_ID             INTEGER                         not null,  /*申请主id	 */
   SERHF001             INTEGER                         not null,  /*申请单别id		 */
   SERHF002             VARCHAR2(30)                    not null,  /*申请单号	         */
   SERHF003             DATE                            not null,  /*申请日期                */
   SERHF004             INTEGER                         not null,  /*展位id                */
   SERHF005             INTEGER                         not null,  /*租赁合同id                 */
   SERHF006             INTEGER                         not null,  /*商户id                 */
   SERHF007             INTEGER                         not null,  /*品牌id                 */
   SERHF008             VARCHAR2(255),                             /*申请原因                 */
   SERHF009             DATE,                                      /*录入日期                 */
   SERHF010             INTEGER,                                   /*录入人员                 */
   SERHF011             DATE,                                      /*审核日期                 */
   SERHF012             INTEGER,                                   /*审核人员                 */
   SERHF013             VARCHAR2(1),                               /*单据状态                 */
   SERHF014             INTEGER                         not null,  /*营运组织id		 */
   SERHF015             VARCHAR2(1),                               /*经营方式                   */
   SERHF016             VARCHAR2(30),                              /*联系人                     */
   SERHF017             VARCHAR2(30),                              /*联系电话                   */
   SERHF018             VARCHAR2(1),                               /*标价签类型                 */
   SERHF019             VARCHAR2(1),                               /*价格类型                   */
   signature            VARCHAR2(2),                               /*签核状态                 */
   remark               VARCHAR2(255),                             /*签核原因                 */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_SERHF primary key (SERHF_ID)
);
create unique index AK_TB_SERHF on TB_SERHF (SERHF_ID,SERHF001);
create sequence SEQ_TB_SERHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHF to public;
grant index  on TB_SERHF to public;
grant update on TB_SERHF to public; 
grant delete on TB_SERHF to public;  
grant insert on TB_SERHF to public; 
grant select on SEQ_TB_SERHF to public;   