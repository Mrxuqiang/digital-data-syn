/*
================================================================================
表结构代码:TB_PUBJJ
表结构名称:客商资质日志表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBJJ;
drop index AK_TB_PUBJJ;
drop table TB_PUBJJ;
create table TB_PUBJJ  (
   PUBJJ_ID             INTEGER                         not null,  /*客商资质日志ID         */
   PUBJJ001             INTEGER                         not null,  /*商场ID                 */   
   PUBJJ002             INTEGER                         not null,  /*客商ID                 */
   PUBJJ003             INTEGER,                                   /*品牌ID                 */
   PUBJJ004             INTEGER ,                                  /*展位ID                 */
   PUBJJ005             INTEGER,                                   /*合同ID                 */
   PUBJJ006             VARCHAR2(2),                               /*资质类型 1、商户营业执照		2、商户税务登记证	 3、授权书	4、身份证	5、质检报告	6、产品说明书	7、产品合格证8、3C	9、报关单	10、质量明示卡	11、环保证明	12、商户组织机构代码证  13、工厂营业执照 14、工厂税务登记 15 工厂组织机构代码 16 工厂商标注册                  */ 
   PUBJJ007             DATE,                                      /*日期                   */   
   PUBJJ008             VARCHAR2(1),                               /*状态 0、缺失，1、过期  */   
   PUBJJ009             VARCHAR2(30),                              /*原有效期               */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER,                                    /*资料状态               */
   constraint PK_TB_PUBJJ primary key (PUBJJ_ID)
);
create unique index AK_TB_PUBJJ on TB_PUBJJ (PUBJJ001,PUBJJ002,PUBJJ003,PUBJJ004,PUBJJ005,PUBJJ006,PUBJJ007,PUBJJ008,FLAG);
create sequence SEQ_TB_PUBJJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJJ to public;
grant index  on TB_PUBJJ to public;
grant update on TB_PUBJJ to public; 
grant delete on TB_PUBJJ to public;  
grant insert on TB_PUBJJ to public; 
grant select on SEQ_TB_PUBJJ to public;   