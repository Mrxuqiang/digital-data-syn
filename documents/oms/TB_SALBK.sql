/*
================================================================================
表结构代码:TB_SALBK
表结构名称:销售单合同表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBK;
drop index AK_TB_SALBK;
drop table TB_SALBK;
create table TB_SALBK  (
   SALBK_ID             INTEGER                         not null,  /*销售单合同ID     */
   SALBK001             INTEGER                         not null,  /*销售单ID         */
   SALBK002             DATE,                                      /*签约日期         */
   SALBK003             VARCHAR2(30),                              /*商户签约代表     */
   SALBK004             NUMBER(12,2),                              /*装修面积         */
   SALBK005             VARCHAR2(30),                              /*户型             */
   SALBK006             VARCHAR2(30),                              /*承包方式         */
   SALBK007             VARCHAR2(30),                              /*工程期限         */
   SALBK008             DATE,                                      /*开工日期         */
   SALBK009             DATE,                                      /*竣工日期         */
   SALBK010             DATE,                                      /*交货日期         */
   SALBK011             VARCHAR2(80),                              /*工程地址         */
   SALBK012             VARCHAR2(80),                              /*顾客送货地址     */
   SALBK013             VARCHAR2(30),                              /*座机             */
   SALBK014             VARCHAR2(30),                              /*手机             */
   SALBK015             INTEGER,                                   /*县级市ID         */
   SALBK016             NUMBER(12,2),                              /*一期付款金额（本次付款金额）     */
   SALBK017             NUMBER(12,2),                              /*二期付款金额（货款余额）     */
   SALBK018             NUMBER(12,2),                              /*三期付款金额     */
   SALBK019             NUMBER(12,2),                              /*四期付款金额     */
   SALBK020             VARCHAR2(255),                             /*备注             */
   SALBK021             VARCHAR2(30),                              /*客户经理         */
   SALBK022             VARCHAR2(30),                              /*设计师           */
   SALBK023             VARCHAR2(30),                              /*绘图员           */
   SALBK024             VARCHAR2(30),                              /*预算员           */
   SALBK025             VARCHAR2(30),                              /*项目经理         */
   SALBK026             VARCHAR2(30),                              /*项目主管         */
   SALBK027             VARCHAR2(30),                              /*质检工程师       */
   SALBK028             VARCHAR2(30),                              /*设计师           */
   SALBK029             DATE,                                      /*设计合同签约日期 */
   SALBK030             NUMBER(12,2),                              /*设计费           */
   SALBK031             NUMBER(12,2),                              /*管理费           */
   SALBK032             NUMBER(12,2),                              /*辅材款           */
   SALBK033             NUMBER(12,2),                              /*主材款           */
   SALBK034             NUMBER(12,2),                              /*设计合同总金额   */
   SALBK035             DATE,                                      /*结算日期         */
   SALBK036             NUMBER(12,2),                              /*顾客累计加款     */
   SALBK037             NUMBER(12,2),                              /*结算设计费       */
   SALBK038             NUMBER(12,2),                              /*结算人工费       */
   SALBK039             NUMBER(12,2),                              /*结算管理费       */
   SALBK040             NUMBER(12,2),                              /*结算税金         */
   SALBK041             NUMBER(12,2),                              /*结算辅材款       */
   SALBK042             NUMBER(12,2),                              /*结算主材款       */
   SALBK043             NUMBER(12,2),                              /*顾客结算总金额   */
   SALBK044             INTEGER,                                   /*小区ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALBK primary key (SALBK_ID)
);
create index AK_TB_SALBK on TB_SALBK (SALBK001);
create sequence SEQ_TB_SALBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBK to public;
grant index  on TB_SALBK to public;
grant update on TB_SALBK to public; 
grant delete on TB_SALBK to public;  
grant insert on TB_SALBK to public; 
grant select on SEQ_TB_SALBK to public;   